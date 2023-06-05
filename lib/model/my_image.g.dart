// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageParams _$$_ImageParamsFromJson(Map<String, dynamic> json) =>
    _$_ImageParams(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      size: (json['size'] as num?)?.toDouble(),
      enableMemoryCache: json['enableMemoryCache'] as bool? ?? true,
      heroTag: json['heroTag'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ImageParamsToJson(_$_ImageParams instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'enableMemoryCache': instance.enableMemoryCache,
      'heroTag': instance.heroTag,
      'isSelected': instance.isSelected,
    };

_$MyNetworkImage _$$MyNetworkImageFromJson(Map<String, dynamic> json) =>
    _$MyNetworkImage(
      url: json['url'] as String,
      params: json['params'] == null
          ? const ImageParams()
          : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyNetworkImageToJson(_$MyNetworkImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$MyBase64Image _$$MyBase64ImageFromJson(Map<String, dynamic> json) =>
    _$MyBase64Image(
      base64Code: json['base64Code'] as String,
      params: json['params'] == null
          ? const ImageParams()
          : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyBase64ImageToJson(_$MyBase64Image instance) =>
    <String, dynamic>{
      'base64Code': instance.base64Code,
      'params': instance.params,
      'runtimeType': instance.$type,
    };
