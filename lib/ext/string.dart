

import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

///字符串相关扩展
extension StringExtension on String {

  ///下载图片资源到相册
  ///[isAsset] - 是否为资产文件
  ///[checkPermission] - 是否需要检测相册权限
  Future<void> downloadImage({bool? isAsset,bool? checkPermission}) async {
    try {
      // 访问相册权限检测
      if(checkPermission==true){
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
      final result = await ImageGallerySaver.saveImage(imageBytes);
      if (result == null || result == '') throw '201'; // 保存失败,请重试

    } catch (e) {
      throw e;
    }
  }

}