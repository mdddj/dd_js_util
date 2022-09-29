import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:html/parser.dart' as htmlparser;
import 'package:html/dom.dart' as dom;
import '../api/base.dart';
import '../api/exception.dart';
import '../dd_js_util.dart';
import 'int.dart';

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
      Uint8List imageBytes;
      if (isAsset == true) {
        // 保存资产图片
        ByteData bytes = await rootBundle.load(this);
        imageBytes = bytes.buffer.asUint8List();
      } else {
        // 保存网络图片
        CachedNetworkImage image = CachedNetworkImage(imageUrl: this);
        BaseCacheManager manager = image.cacheManager ?? DefaultCacheManager();
        Map<String, String>? headers = image.httpHeaders ?? {};
        File file = await manager.getSingleFile(
          image.imageUrl,
          headers: headers,
        );
        imageBytes = await file.readAsBytes();
      }
      // 保存图片
      final result = await ImageGallerySaver.saveImage(imageBytes, name: imageName, quality: quality);
      if (result == null || result == '') throw '201'; // 保存失败,请重试

    } catch (e) {
      rethrow;
    }
  }

  ///
  /// 将本地路径的一个图片保存到相册
  /// "/data/a/b/c/demo.png".fileDownloadImage()
  ///
  Future<dynamic> fileDownloadImage() async {
    File file = File(this);
    Uint8List imageBytes = await file.readAsBytes();
    final result = await ImageGallerySaver.saveImage(imageBytes);
    return result;
  }

  /// 压缩本地图片扩展 assets -> Unit8List
  /// [quality] 压缩质量 0-100之间
  Future<Uint8List?> compressionAssets({int? quality}) async {
    var list = await FlutterImageCompress.compressAssetImage(
      this,
      quality: quality ?? 96,
    );
    return list;
  }

  /// 图片压缩 File -> File
  /// [targetPath] - 要保存压缩后文件的路径
  /// [quality] - 压缩的质量
  Future<File?> fileImageCompress(String targetPath, {int? quality}) async {
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
    if(canLaunch){
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
  Future<dynamic> get getHtmlTitleAndIcon async {
    return _StringUtil.getHtmlTitleAndIcon(this);
  }
}


///string 工具类
class _StringUtil {

  ///获取网页标题和图标
  static Future<HtmlTitleAndIconModel?> getHtmlTitleAndIcon(String webUrl) async {
    String title = "";
    String icon = "";
    final response = await Dio().get(webUrl,options: Options(responseType: ResponseType.plain));
    if(response.statusCode!=200){
      throw AppException.appError(code: response.statusCode,msg: response.statusMessage);
    }
    final htmlText = response.data.toString();
    dom.Document document = htmlparser.parse(htmlText);
    final titleList = document.getElementsByTagName("title");
    if(titleList.isNotEmpty){
      title = titleList.first.text;
    }else{
      throw AppException.appError(code: 10009,msg: "Not found title");
    }
    final uri = Uri.parse(webUrl);
    icon = '${uri.scheme}://${uri.host}/favicon.ico';
    kLog('title :$title\nicon: $icon');
    return HtmlTitleAndIconModel(title: title,icon: icon);
  }
}

class HtmlTitleAndIconModel {
  final String title;
  final String icon;
  HtmlTitleAndIconModel({required this.title,required this.icon});
}