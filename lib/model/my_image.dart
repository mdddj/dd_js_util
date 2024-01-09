import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../dd_js_util.dart';
import 'base_api_exception.dart';

part 'my_image.freezed.dart';

part 'my_image.g.dart';

extension ImageParamsEx on ImageParams {
  double? get getWidth {
    return size ?? width;
  }

  double? get getHeight {
    return size ?? height;
  }
}

typedef CustomCompletedWidget = Widget? Function(ExtendedImageState state, ImageParams params, Widget child);

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
      @igFreezedJson VoidCallback? onTap,
      @igFreezedJson Color? color,
      @Default(true) bool clearMemoryCacheIfFailed,
      @Default(true) bool gaplessPlayback,
      @igFreezedJson BlendMode? colorBlendMode,

      //---net
      double? scale,
      @Default({}) Map<String, String> headers,
      @Default(true) bool cache,
      @Default(3) int retries,
      @igFreezedJson Duration? timeLimit,
      @igFreezedJson @Default(Duration(seconds: 3)) Duration timeRetry,
      @igFreezedJson CancellationToken? cancelToken,
      String? cacheKey,
      @Default(false) bool printError,
      @Default(true) bool cacheRawData,
      String? imageCacheName,
      @igFreezedJson Duration? cacheMaxAge,
      int? cacheWidth,
      int? cacheHeight,
      double? compressionRatio,
      int? maxBytes,
      //--- net end

      String? package,
      @igFreezedJson AssetBundle? bundle,
      @Doc(message: '自定义完成小部件') @igFreezedJson CustomCompletedWidget? customCompletedWidget}) = _ImageParams;

  factory ImageParams.fromJson(Map<String, dynamic> json) => _$ImageParamsFromJson(json);
}

@freezed
class MyImage with _$MyImage {
  const MyImage._();

  factory MyImage.network({required String url, @Default(ImageParams()) ImageParams params}) = MyNetworkImage;

  factory MyImage.base64({required String base64Code, @Default(ImageParams()) ImageParams params}) = MyBase64Image;

  factory MyImage.filePath({required String filePath, @Default(ImageParams()) ImageParams params}) = MyFilePathImage;

  factory MyImage.asset({required String assetPath, @Default(ImageParams()) ImageParams params}) = MyAssetImage;

  factory MyImage.fromJson(Map<String, dynamic> json) => _$MyImageFromJson(json);
}
