import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_selection_item.freezed.dart';

extension PictureSelectionItemModelEx on PictureSelectionItemModel {
  ///是否为本地磁盘文件的图片
  bool get isLocalFile {
    return this is XXFile;
  }

  bool get isNetworkUrl {
    return this is XXImage;
  }

  ///获取网络的URL
  String? get imageUrl {
    if (isNetworkUrl) {
      return (this as XXImage).url;
    }
    return null;
  }

  ///获取本地的路径
  File? get localFilePath {
    if(isLocalFile){
      return (this as XXFile).localFilePath;
    }
    return null;
  }

  ImageProvider get imageProvider {
    if(isNetworkUrl) {
      return NetworkImage(imageUrl!);
    }
    return FileImage(localFilePath!);
  }
}
typedef PM = PictureSelectionItemModel;
///图片选择器模型
@freezed
class PictureSelectionItemModel with _$PictureSelectionItemModel {
  const PictureSelectionItemModel._();

  factory PictureSelectionItemModel.file({required File file}) = XXFile;

  factory PictureSelectionItemModel.network({required String url}) = XXImage;
}
