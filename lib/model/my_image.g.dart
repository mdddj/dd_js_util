// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageParamsImpl _$$ImageParamsImplFromJson(Map<String, dynamic> json) => _$ImageParamsImpl(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      size: (json['size'] as num?)?.toDouble(),
      enableMemoryCache: json['enableMemoryCache'] as bool? ?? true,
      heroTag: json['heroTag'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$ImageParamsImplToJson(_$ImageParamsImpl instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'enableMemoryCache': instance.enableMemoryCache,
      'heroTag': instance.heroTag,
      'isSelected': instance.isSelected,
    };

_$MyNetworkImageImpl _$$MyNetworkImageImplFromJson(Map<String, dynamic> json) => _$MyNetworkImageImpl(
      url: json['url'] as String,
      params:
          json['params'] == null ? const ImageParams() : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyNetworkImageImplToJson(_$MyNetworkImageImpl instance) => <String, dynamic>{
      'url': instance.url,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$MyBase64ImageImpl _$$MyBase64ImageImplFromJson(Map<String, dynamic> json) => _$MyBase64ImageImpl(
      base64Code: json['base64Code'] as String,
      params:
          json['params'] == null ? const ImageParams() : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyBase64ImageImplToJson(_$MyBase64ImageImpl instance) => <String, dynamic>{
      'base64Code': instance.base64Code,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$MyFilePathImageImpl _$$MyFilePathImageImplFromJson(Map<String, dynamic> json) => _$MyFilePathImageImpl(
      filePath: json['filePath'] as String,
      params:
          json['params'] == null ? const ImageParams() : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyFilePathImageImplToJson(_$MyFilePathImageImpl instance) => <String, dynamic>{
      'filePath': instance.filePath,
      'params': instance.params,
      'runtimeType': instance.$type,
    };
