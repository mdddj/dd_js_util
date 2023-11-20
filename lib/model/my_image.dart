import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'base_api_exception.dart';

part 'my_image.freezed.dart';
part 'my_image.g.dart';

@freezed
class ImageParams with _$ImageParams {
  const ImageParams._();

  const factory ImageParams(
      {double? width,
      double? height,
      double? size,
      @igFreezedJson BoxFit? fit,
      @igFreezedJson BorderRadius? borderRadius,
      @igFreezedJson BoxShape? shape,
      @Default(true) bool enableMemoryCache,
      String? heroTag,
      @Default(false) bool isSelected,
      @igFreezedJson Widget? errorWidget,
      @igFreezedJson VoidCallback? onTap}) = _ImageParams;

  factory ImageParams.fromJson(Map<String, dynamic> json) => _$ImageParamsFromJson(json);
}

@freezed
class MyImage with _$MyImage {
  const MyImage._();

  factory MyImage.network({required String url, @Default(ImageParams()) ImageParams params}) = MyNetworkImage;

  factory MyImage.base64({required String base64Code, @Default(ImageParams()) ImageParams params}) = MyBase64Image;

  factory MyImage.filePath({required String filePath, @Default(ImageParams()) ImageParams params}) = MyFilePathImage;

  factory MyImage.fromJson(Map<String, dynamic> json) => _$MyImageFromJson(json);
}
