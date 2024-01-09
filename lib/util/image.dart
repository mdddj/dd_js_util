part of '../dd_js_util.dart';

class ImageUtil {
  Future<Color?> getContrastColorFromNetworkImage(String imageUrl) async {
    try {
      final response =
          await dio.Dio().get<Uint8List>(imageUrl, options: dio.Options(responseType: dio.ResponseType.bytes));
      final imageData = response.data;
      if (imageData != null) {
        int pixelCount = imageData.length ~/ 4;
        int r = 0, g = 0, b = 0;

        // 计算像素数据的总和
        for (int i = 0; i < pixelCount; i++) {
          int pixelColor = Uint8List.view(imageData.buffer, i * 4, 4).buffer.asByteData().getUint32(0, Endian.little);
          r += (pixelColor >> 16) & 0xFF;
          g += (pixelColor >> 8) & 0xFF;
          b += (pixelColor >> 0) & 0xFF;
        }

        // 计算平均颜色
        int averageR = r ~/ pixelCount;
        int averageG = g ~/ pixelCount;
        int averageB = b ~/ pixelCount;

        // 计算反差色
        int contrastR = 255 - averageR;
        int contrastG = 255 - averageG;
        int contrastB = 255 - averageB;

        return Color.fromARGB(255, contrastR, contrastG, contrastB);
      }
    } catch (e) {
      debugPrint('load fail $imageUrl');
    }
    return null;
  }
}
