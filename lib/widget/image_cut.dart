import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as Image;

// 图片裁切处理
class ImageCutWidget extends StatefulWidget {
  final String imagePath;
  const ImageCutWidget({Key? key,required this.imagePath}) : super(key: key);

  @override
  _ImageCutWidgetState createState() => _ImageCutWidgetState();
}

class _ImageCutWidgetState extends State<ImageCutWidget> {

  final GlobalKey<ExtendedImageEditorState> editorKey =GlobalKey<ExtendedImageEditorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtendedImage.file(
        File(widget.imagePath),
        fit: BoxFit.contain,
        mode: ExtendedImageMode.editor,
        extendedImageEditorKey: editorKey,
        cacheRawData: true,
        initEditorConfigHandler: (state) {
          return EditorConfig(
              maxScale: 8.0,
              cropRectPadding: EdgeInsets.all(20.0),
              hitTestSize: 20.0,
              cropAspectRatio: CropAspectRatios.ratio1_1,
              cropLayerPainter: MyEditCup()
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.close)),
          IconButton(onPressed: chip, icon: Icon(Icons.check))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  // 裁切
  void chip() async {
    final data = editorKey.currentState?.rawImageData;
    final cropRect = editorKey.currentState?.getCropRect();
    if(data==null || cropRect ==null){
      Navigator.pop(context);
      return;
    }
    Image.Image? src = Image.decodeImage(data);

    if(src==null){
      Navigator.pop(context);
      return;
    }
    src = Image.copyCrop(src, cropRect.left.toInt(), cropRect.top.toInt(),
        cropRect.width.toInt(), cropRect.height.toInt());

    final byts = Image.encodeJpg(src , quality: 80);
    final hz = currPath.lastIndexOf('.'); // 图片后缀
    final wpa = currPath.substring(0,hz) + '${DateTime.now().toIso8601String().replaceAll(" ", '')}';
    final path = wpa + '.'+currPath.split('.').last;
    File file = await File(path).create();
    final file1 = await file.writeAsBytes(byts);
    Navigator.pop(context,file1);
  }

  String get currPath => widget.imagePath;
}


class MyEditCup extends EditorCropLayerPainter {

@override
  void paint(Canvas canvas, Size size, ExtendedImageCropLayerPainter painter) {
    paintMask(canvas, size, painter);
     //定义画笔
  Paint _paint = new Paint()
    ..color = Colors.grey
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle
        .stroke; //画笔样式有填充PaintingStyle.fill 及没有填充PaintingStyle.stroke 两种

  canvas.drawCircle(Offset(200.0, 150.0), 150.0, _paint);
  }

}