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
      clearMemoryCacheIfFailed: json['clearMemoryCacheIfFailed'] as bool? ?? true,
      gaplessPlayback: json['gaplessPlayback'] as bool? ?? true,
      scale: (json['scale'] as num?)?.toDouble(),
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      cache: json['cache'] as bool? ?? true,
      retries: json['retries'] as int? ?? 3,
      cacheKey: json['cacheKey'] as String?,
      printError: json['printError'] as bool? ?? false,
      cacheRawData: json['cacheRawData'] as bool? ?? true,
      imageCacheName: json['imageCacheName'] as String?,
      cacheWidth: json['cacheWidth'] as int?,
      cacheHeight: json['cacheHeight'] as int?,
      compressionRatio: (json['compressionRatio'] as num?)?.toDouble(),
      maxBytes: json['maxBytes'] as int?,
      package: json['package'] as String?,
    );

Map<String, dynamic> _$$ImageParamsImplToJson(_$ImageParamsImpl instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'enableMemoryCache': instance.enableMemoryCache,
      'heroTag': instance.heroTag,
      'isSelected': instance.isSelected,
      'clearMemoryCacheIfFailed': instance.clearMemoryCacheIfFailed,
      'gaplessPlayback': instance.gaplessPlayback,
      'scale': instance.scale,
      'headers': instance.headers,
      'cache': instance.cache,
      'retries': instance.retries,
      'cacheKey': instance.cacheKey,
      'printError': instance.printError,
      'cacheRawData': instance.cacheRawData,
      'imageCacheName': instance.imageCacheName,
      'cacheWidth': instance.cacheWidth,
      'cacheHeight': instance.cacheHeight,
      'compressionRatio': instance.compressionRatio,
      'maxBytes': instance.maxBytes,
      'package': instance.package,
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

_$MyAssetImageImpl _$$MyAssetImageImplFromJson(Map<String, dynamic> json) => _$MyAssetImageImpl(
      assetPath: json['assetPath'] as String,
      params:
          json['params'] == null ? const ImageParams() : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyAssetImageImplToJson(_$MyAssetImageImpl instance) => <String, dynamic>{
      'assetPath': instance.assetPath,
      'params': instance.params,
      'runtimeType': instance.$type,
    };
