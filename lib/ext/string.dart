part of '../dd_js_util.dart';

const String _kNetworkImageRegExpString =
    r'^https?:\/\/.*\.(?:png|jpg|jpeg|gif|bmp)$';

///默认正则只编译一次
final RegExp _kNetworkImageRegExp = RegExp(_kNetworkImageRegExpString);

final RegExp _kEmailRegExp = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

///字符串相关扩展
extension StringExtension on String {
  ///下载图片资源到相册
  ///[isAsset] - 是否为资产文件
  ///[checkPermission] - 是否需要检测相册权限
  ///[imageName] - 保存到相册的文件名字
  ///[quality] - 保存质量
  ///
  /// 最好捕获一下异常,如果没有抛出异常则表示下载成功.
  ///
  /// 错误码[401] - 没有获取访问相册的权限
  /// 错误码[201] - 保存失败,重试
  ///
  Future<void> downloadImage(
      {bool? isAsset,
      bool? checkPermission,
      String? imageName,
      int quality = 80,
      VoidCallback? noPermission,
      Map<String, String>? headers,
      VoidCallback? onFailed,
      VoidCallback? onSuccess}) async {
    try {
      // 访问相册权限检测
      if (checkPermission == true) {
        if (myPlatform.isAndroid) {
          final androidInfo = await DeviceInfoPlugin().androidInfo;
          if (androidInfo.version.sdkInt < 33) {
            final result = await Permission.storage.request();
            if (result != PermissionStatus.granted) {
              noPermission?.call();
              return;
            }
          }
        } else {
          final result = await Permission.photosAddOnly.request();
          if (result != PermissionStatus.granted) {
            noPermission?.call();
            return;
          }
        }
      }
      // 保存的图片数据
      dynamic imageBytes;
      if (isAsset == true) {
        // 保存资产图片
        final bytes = await rootBundle.load(this);
        imageBytes = bytes.buffer.asUint8List();
      } else {
        // 保存网络图片
        final dioInstance = dio.Dio();
        final response = await dioInstance.get<List<int>>(
          this,
          options: dio.Options(
              responseType: dio.ResponseType.bytes, headers: headers),
        );
        if (response.statusCode == 200 && response.data != null) {
          imageBytes = Uint8List.fromList(response.data!);
        } else {
          onFailed?.call();
          //避免继续用null去保存,那样会走到catch里二次触发onFailed
          return;
        }
      }
      // 保存图片

      final result = await SaverGallery.saveImage(imageBytes,
          fileName: imageName ?? '', skipIfExists: false);

      if (result.isSuccess.not) {
        onFailed?.call();
      } else {
        onSuccess?.call();
      }
    } catch (e) {
      onFailed?.call();
    }
  }

  ///
  /// 将本地路径的一个图片保存到相册
  /// "/data/a/b/c/demo.png".fileDownloadImage()
  ///
  Future<SaveResult> fileDownloadImage([String name = 'filename']) async {
    return await SaverGallery.saveFile(
        filePath: this, fileName: name, skipIfExists: false);
  }

  @Doc(message: '打开浏览器访问页面')
  Future<void> browser() async {
    final canLaunch = await canLaunchUrlString(this);
    if (canLaunch) {
      launchUrlString(this);
    }
  }

  @Doc(message: '复制到剪贴板')
  void copy() {
    Clipboard.setData(ClipboardData(text: this));
  }

  @Doc(message: '获取时间')
  String get getMessageTimeWithString {
    //[IntExt.messageTime]按"秒"计算
    final date = DateTime.parse(this).millisecondsSinceEpoch ~/ 1000;
    return date.messageTime;
  }

  @Doc(message: '判断是否为网络图片')
  bool isNetworkImage(
      [String regExpString = _kNetworkImageRegExpString]) {
    final regExp = regExpString == _kNetworkImageRegExpString
        ? _kNetworkImageRegExp
        : RegExp(regExpString);
    return regExp.hasMatch(this);
  }

  @Doc(message: '是否为邮箱')
  bool get stringIsEmail => _isEmailValid(this);

  T? decodeModel<T>(T Function(Map<String, dynamic> jsonMap) decode) =>
      decodeModelOrNull(this, decode);
}

class HtmlTitleAndIconModel {
  final String title;
  final String icon;

  HtmlTitleAndIconModel({required this.title, required this.icon});
}

bool _isEmailValid(String email) {
  return _kEmailRegExp.hasMatch(email);
}
