part of '../dd_js_util.dart';

extension ImageExExt on String {
  ImageEx get urlManager => ImageEx(this);
}

class ImageEx {
  final String url;

  ImageEx(this.url);

  ///获取文件名字,不带扩展
  String get filename => path.basenameWithoutExtension(url);

  ///获取文件名称,带扩展
  String get filenameAll => path.basename(url);

  ///获取文件扩展名 例子: .txt
  String get extension => path.extension(url);

  /// p.withoutExtension('path/to/foo.dart'); // -> 'path/to/foo'
  String get withoutExtension => path.withoutExtension(url);

  ///判断是不是一个图片地址
  bool get isImageURL {
    final pattern = RegExp(r'\.(jpeg|jpg|gif|png)$', caseSensitive: false);
    return pattern.hasMatch(url);
  }

  ///判断是不是一个网络图片
  bool get isNetworkImageUrl {
    final isUrl = isImageURL;
    if (isUrl) {
      return isURL;
    }
    return false;
  }

  ///判断是不是一个网络地址
  bool get isURL {
    Uri? uri = Uri.tryParse(url);
    return uri != null && uri.hasScheme && uri.hasAuthority;
  }
}
