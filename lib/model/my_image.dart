
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_image.freezed.dart';
part 'my_image.g.dart';
@freezed
class ImageParams with _$ImageParams {
  const ImageParams._();

  const factory ImageParams(
      {double? width,
        double? height,
        double? size,
        @JsonKey(toJson: null,fromJson: null,includeFromJson: false,includeToJson: false) BoxFit? fit,
        @JsonKey(toJson: null,fromJson: null,includeFromJson: false,includeToJson: false) BorderRadius? borderRadius,
        @JsonKey(toJson: null,fromJson: null,includeFromJson: false,includeToJson: false) BoxShape? shape,
        @Default(true) bool enableMemoryCache,
        String? heroTag,
        @Default(false) bool isSelected,
        @JsonKey(toJson: null,fromJson: null,includeFromJson: false,includeToJson: false) Widget? errorWidget
      }) = _ImageParams;

  factory ImageParams.fromJson(Map<String,dynamic> json)=> _$ImageParamsFromJson(json);
}


@freezed
class MyImage with _$MyImage {
  const MyImage._();
  factory MyImage.network({required String url,@Default(ImageParams()) ImageParams params})= MyNetworkImage;
  factory MyImage.base64({required String base64Code,@Default(ImageParams()) ImageParams params}) = MyBase64Image;
  factory MyImage.fromJson(Map<String,dynamic> json) => _$MyImageFromJson(json);
}