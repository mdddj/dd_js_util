import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as image;

class ImageCutWidget extends StatefulWidget {
  final File file;
  const ImageCutWidget({Key? key, required this.file}) : super(key: key);

  @override
  ImageCutWidgetState createState() => ImageCutWidgetState();
}

class ImageCutWidgetState extends State<ImageCutWidget> {
  final GlobalKey<ExtendedImageEditorState> editorKey =
      GlobalKey<ExtendedImageEditorState>();

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
              cropRectPadding: const EdgeInsets.all(20.0),
              hitTestSize: 20.0,
              cropAspectRatio: CropAspectRatios.ratio1_1,
              cropLayerPainter: MyEditCup());
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close)),
          IconButton(onPressed: chip, icon: const Icon(Icons.check))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // 裁切
  void chip() async {
    final data = editorKey.currentState?.rawImageData;
    final cropRect = editorKey.currentState?.getCropRect();
    final nav = Navigator.of(context);
    if (data == null || cropRect == null) {
      nav.pop();
      return;
    }
    image.Image? src = image.decodeImage(data);

    if (src == null) {
      nav.pop();
      return;
    }
    final byts = image.encodeJpg(src, quality: 80);
    final hz = currPath.lastIndexOf('.'); // 图片后缀
    final wpa =
        '${currPath.substring(0, hz)}${DateTime.now().toIso8601String().replaceAll(" ", '')}';
    final path = '$wpa.${currPath.split('.').last}';
    final file = await File(path).create();
    final file1 = await file.writeAsBytes(byts);
    nav.pop(file1);
  }

  String get currPath => widget.file.path;
}

class MyEditCup extends EditorCropLayerPainter {
  @override
  void paint(Canvas canvas, Size size, ExtendedImageCropLayerPainter painter) {
    paintMask(canvas, size, painter);
    //定义画笔
    Paint paint = Paint()
      ..color = Colors.grey
      ..strokeCap = StrokeCap.square
      ..isAntiAlias = true
      ..strokeWidth = 3.0
      ..style = PaintingStyle
          .stroke; //画笔样式有填充PaintingStyle.fill 及没有填充PaintingStyle.stroke 两种

    canvas.drawCircle(const Offset(200.0, 150.0), 150.0, paint);
  }
}
