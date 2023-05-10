part of dd_js_util;

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
  Future<void> downloadImage({bool? isAsset, bool? checkPermission, String? imageName, int quality = 80}) async {
    try {
      // 访问相册权限检测
      if (checkPermission == true) {
        PermissionStatus storageStatus = await Permission.storage.status;
        if (storageStatus != PermissionStatus.granted) {
          storageStatus = await Permission.storage.request();
          if (storageStatus != PermissionStatus.granted) {
            // 请先授权访问相册的权限
            throw '401';
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
        final image = CachedNetworkImage(imageUrl: this);
        final manager = image.cacheManager ?? DefaultCacheManager();
        final headers = image.httpHeaders ?? {};
        final file = await manager.getSingleFile(
          image.imageUrl,
          headers: headers,
        );
        imageBytes = await file.readAsBytes();
      }
      // 保存图片

      final result = await SaverGallery.saveImage(imageBytes, name: imageName ?? '', androidExistNotSave: false);

      if (result.isSuccess.not) throw '201'; // 保存失败,请重试
    } catch (e) {
      rethrow;
    }
  }

  ///
  /// 将本地路径的一个图片保存到相册
  /// "/data/a/b/c/demo.png".fileDownloadImage()
  ///
  Future<SaveResult> fileDownloadImage([String name = 'filename']) async {
    return await SaverGallery.saveFile(file: this, name: name, androidExistNotSave: false);
  }

  /// 图片压缩 File -> File
  /// [targetPath] - 要保存压缩后文件的路径
  /// [quality] - 压缩的质量
  Future<XFile?> fileImageCompress(String targetPath, {int? quality}) async {
    var result = await FlutterImageCompress.compressAndGetFile(
      this,
      targetPath,
      quality: quality ?? 88,
    );
    return result;
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
    final date = DateTime.parse(this).millisecondsSinceEpoch;
    return date.messageTime;
  }

  @Doc(message: '获取网页的标题和icon')
  Future<HtmlTitleAndIconModel> get getHtmlTitleAndIcon async {
    return _StringUtil.getHtmlTitleAndIcon(this);
  }

  @Doc(message: '判断是否为网络图片')
  bool isNetworkImage([String regExpString = r'^https?:\/\/.*\.(?:png|jpg|jpeg|gif|bmp)$']) {
    RegExp regExp = RegExp(regExpString);
    return regExp.hasMatch(this);
  }
}

///string 工具类
class _StringUtil {
  ///获取网页标题和图标
  static Future<HtmlTitleAndIconModel> getHtmlTitleAndIcon(String webUrl) async {
    String title = "";
    String icon = "";
    final response = await dio.Dio().get(webUrl, options: dio.Options(responseType: dio.ResponseType.plain));
    if (response.statusCode != 200) {
      throw AppException.appError(code: response.statusCode, msg: response.statusMessage);
    }
    final htmlText = response.data.toString();
    Document document = parse(htmlText);
    final titleList = document.getElementsByTagName("title");
    if (titleList.isNotEmpty) {
      title = titleList.first.text;
    } else {
      throw AppException.appError(code: 10009, msg: "Not found title");
    }
    final uri = Uri.parse(webUrl);
    icon = '${uri.scheme}://${uri.host}/favicon.ico';
    kLog('title :$title\nicon: $icon');
    return HtmlTitleAndIconModel(title: title, icon: icon);
  }
}

class HtmlTitleAndIconModel {
  final String title;
  final String icon;

  HtmlTitleAndIconModel({required this.title, required this.icon});
}
