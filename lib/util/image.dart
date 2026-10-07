part of '../dd_js_util.dart';

class ImageUtil {
  ///统计图片平均色,返回它的反差色
  ///
  ///[targetSize] 只是为了取平均色,解码时直接缩到这个尺寸,
  ///避免大图按全分辨率进内存
  Future<Color?> getContrastColorFromNetworkImage(String imageUrl,
      {int targetSize = 32}) async {
    try {
      final response = await dio.Dio().get<Uint8List>(imageUrl,
          options: dio.Options(responseType: dio.ResponseType.bytes));
      final imageData = response.data;
      if (imageData == null) {
        return null;
      }
      //必须先解码,response里是压缩后的图片字节,不是像素
      final codec = await ui.instantiateImageCodec(imageData,
          targetWidth: targetSize, targetHeight: targetSize);
      final ui.FrameInfo frame;
      try {
        frame = await codec.getNextFrame();
      } finally {
        codec.dispose();
      }
      final image = frame.image;
      try {
        final byteData =
            await image.toByteData(format: ui.ImageByteFormat.rawRgba);
        if (byteData == null) {
          return null;
        }
        return contrastColorFromRgba(byteData.buffer
            .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
      } finally {
        image.dispose();
      }
    } catch (e) {
      debugPrint('load fail $imageUrl $e');
    }
    return null;
  }

  ///[rgba] 是 rawRgba 像素数据(每4个字节一个像素),返回平均色的反差色
  static Color? contrastColorFromRgba(Uint8List rgba) {
    final int pixelCount = rgba.length ~/ 4;
    if (pixelCount == 0) {
      return null;
    }
    int r = 0, g = 0, b = 0;
    for (int i = 0; i < pixelCount; i++) {
      r += rgba[i * 4];
      g += rgba[i * 4 + 1];
      b += rgba[i * 4 + 2];
    }

    // 计算平均色
    final int averageR = r ~/ pixelCount;
    final int averageG = g ~/ pixelCount;
    final int averageB = b ~/ pixelCount;

    // 计算反差色
    return Color.fromARGB(255, 255 - averageR, 255 - averageG, 255 - averageB);
  }
}
