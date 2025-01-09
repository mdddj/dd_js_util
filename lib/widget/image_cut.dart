import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:image_editor/image_editor.dart';
import 'package:path_provider/path_provider.dart';

import '../dd_js_util.dart';

class ImageCutWidget extends StatefulWidget {
  final File file;

  const ImageCutWidget({super.key, required this.file});

  static Future<File?> goto(BuildContext context, File file) async {
    return context.navToWidget<File>(to: ImageCutWidget(file: file));
  }

  @override
  ImageCutWidgetState createState() => ImageCutWidgetState();
}

class ImageCutWidgetState extends State<ImageCutWidget> {
  final GlobalKey<ExtendedImageEditorState> editorKey =
      GlobalKey<ExtendedImageEditorState>();
  final ImageEditorController _editorController = ImageEditorController();
  bool _cropping = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtendedImage.file(
        widget.file,
        fit: BoxFit.contain,
        mode: ExtendedImageMode.editor,
        extendedImageEditorKey: editorKey,
        cacheRawData: true,
        initEditorConfigHandler: (state) {
          return EditorConfig(
              maxScale: 8.0,
              cropRectPadding: const EdgeInsets.all(10.0),
              hitTestSize: 20.0,
              controller: _editorController,
              cropAspectRatio: CropAspectRatios.ratio1_1,
              cropLayerPainter: MyEditCup());
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: cropImage,
          child: _cropping ? CircularProgressIndicator() : Icon(Icons.check)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  Future<void> cropImage() async {
    final nav = context.nav;
    if (_cropping) {
      return;
    }
    _cropping = true;
    try {
      final fileData = await cropImageDataWithNativeLibrary(_editorController);
      final result = await ImageSaver.saveImage(
          '${DateTime.now().millisecondsSinceEpoch}.jpg', fileData.data!);
      nav.pop(result);
    } finally {
      _cropping = false;
    }
    setState(() {});
  }

  String get currPath => widget.file.path;

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}

class MyEditCup extends EditorCropLayerPainter {
  @override
  void paint(Canvas canvas, Size size, ExtendedImageCropLayerPainter painter,
      Rect rect) {
    paintBorder(canvas, rect);
    paintMask(canvas, rect, painter);
    paintLines(canvas, size, painter);
  }
}

enum ImageType { gif, jpg }

class EditImageInfo {
  EditImageInfo(
    this.data,
    this.imageType,
  );

  final Uint8List? data;
  final ImageType imageType;
}

Future<EditImageInfo> cropImageDataWithNativeLibrary(
    ImageEditorController imageEditorController) async {
  final EditActionDetails action = imageEditorController.editActionDetails!;

  final img = imageEditorController.state!.rawImageData;

  final ImageEditorOption option = ImageEditorOption();

  if (action.hasRotateDegrees) {
    final int rotateDegrees = action.rotateDegrees.toInt();
    option.addOption(RotateOption(rotateDegrees));
  }
  if (action.flipY) {
    option.addOption(const FlipOption(horizontal: true, vertical: false));
  }

  if (action.needCrop) {
    Rect cropRect = imageEditorController.getCropRect()!;
    if (imageEditorController.state!.widget.extendedImageState.imageProvider
        is ExtendedResizeImage) {
      final ImmutableBuffer buffer = await ImmutableBuffer.fromUint8List(img);
      final ImageDescriptor descriptor = await ImageDescriptor.encoded(buffer);

      final double widthRatio =
          descriptor.width / imageEditorController.state!.image!.width;
      final double heightRatio =
          descriptor.height / imageEditorController.state!.image!.height;
      cropRect = Rect.fromLTRB(
        cropRect.left * widthRatio,
        cropRect.top * heightRatio,
        cropRect.right * widthRatio,
        cropRect.bottom * heightRatio,
      );
    }
    option.addOption(ClipOption.fromRect(cropRect));
  }

  final Uint8List? result = await ImageEditor.editImage(
    image: img,
    imageEditorOption: option,
  );

  return EditImageInfo(result, ImageType.jpg);
}

class ImageSaver {
  ImageSaver._();

  ///存储图片
  static Future<File?> saveImage(String fileName, Uint8List fileData) async {
    try {
      var tempDir = await getApplicationDocumentsDirectory();
      var path = "${tempDir.path}/$fileName";
      var file = File(path);
      file = await file.writeAsBytes(fileData);
      return file;
    } catch (_) {
      return null;
    }
  }
}
