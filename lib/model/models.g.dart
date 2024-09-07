// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppLocalSettingModelAdapter extends TypeAdapter<AppLocalSettingModel> {
  @override
  final int typeId = 88;

  @override
  AppLocalSettingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppLocalSettingModel(
      themeIndex: fields[0] == null ? 0 : fields[0] as int,
      themeModel: fields[1] == null ? 0 : fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AppLocalSettingModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.themeIndex)
      ..writeByte(1)
      ..write(obj.themeModel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppLocalSettingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestParamsImpl _$$RequestParamsImplFromJson(Map<String, dynamic> json) =>
    _$RequestParamsImpl(
      showErrorMsg: json['showErrorMsg'] as bool? ?? true,
      loadingText: json['loadingText'] as String? ?? "loading...",
      contentType: json['contentType'] as String?,
      headers: json['headers'] as Map<String, dynamic>? ?? const {},
      showDefaultLoading: json['showDefaultLoading'] as bool? ?? true,
      data: json['data'],
      responseType:
          $enumDecodeNullable(_$ResponseTypeEnumMap, json['responseType']),
      nullParams: json['nullParams'] as bool?,
      returnIsString: json['returnIsString'] as bool?,
      extra: json['extra'] as Map<String, dynamic>?,
      downloadUrl: json['downloadUrl'] as String?,
    );

Map<String, dynamic> _$$RequestParamsImplToJson(_$RequestParamsImpl instance) =>
    <String, dynamic>{
      'showErrorMsg': instance.showErrorMsg,
      'loadingText': instance.loadingText,
      'contentType': instance.contentType,
      'headers': instance.headers,
      'showDefaultLoading': instance.showDefaultLoading,
      'data': _dataToJson(instance.data),
      'responseType': _$ResponseTypeEnumMap[instance.responseType],
      'nullParams': instance.nullParams,
      'returnIsString': instance.returnIsString,
      'extra': instance.extra,
      'downloadUrl': instance.downloadUrl,
    };

const _$ResponseTypeEnumMap = {
  ResponseType.json: 'json',
  ResponseType.stream: 'stream',
  ResponseType.plain: 'plain',
  ResponseType.bytes: 'bytes',
};

_$BaseApiCancelExceptionImpl _$$BaseApiCancelExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseApiCancelExceptionImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BaseApiCancelExceptionImplToJson(
        _$BaseApiCancelExceptionImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$BaseApiConnectionTimeoutExceptionImpl
    _$$BaseApiConnectionTimeoutExceptionImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseApiConnectionTimeoutExceptionImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$BaseApiConnectionTimeoutExceptionImplToJson(
        _$BaseApiConnectionTimeoutExceptionImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$BaseApiSendTimeoutExceptionImpl _$$BaseApiSendTimeoutExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseApiSendTimeoutExceptionImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BaseApiSendTimeoutExceptionImplToJson(
        _$BaseApiSendTimeoutExceptionImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$BaseApiReceiveTimeoutExceptionImpl
    _$$BaseApiReceiveTimeoutExceptionImplFromJson(Map<String, dynamic> json) =>
        _$BaseApiReceiveTimeoutExceptionImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$BaseApiReceiveTimeoutExceptionImplToJson(
        _$BaseApiReceiveTimeoutExceptionImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$BaseApiBadCertificateExceptionImpl
    _$$BaseApiBadCertificateExceptionImplFromJson(Map<String, dynamic> json) =>
        _$BaseApiBadCertificateExceptionImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$BaseApiBadCertificateExceptionImplToJson(
        _$BaseApiBadCertificateExceptionImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$BaseApiConnectionErrorExceptionImpl
    _$$BaseApiConnectionErrorExceptionImplFromJson(Map<String, dynamic> json) =>
        _$BaseApiConnectionErrorExceptionImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$BaseApiConnectionErrorExceptionImplToJson(
        _$BaseApiConnectionErrorExceptionImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$BaseApiBadResponseExceptionImpl _$$BaseApiBadResponseExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseApiBadResponseExceptionImpl(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BaseApiBadResponseExceptionImplToJson(
        _$BaseApiBadResponseExceptionImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'runtimeType': instance.$type,
    };

_$BaseApiBusinessExceptionImpl _$$BaseApiBusinessExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseApiBusinessExceptionImpl(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BaseApiBusinessExceptionImplToJson(
        _$BaseApiBusinessExceptionImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$StringDataImpl _$$StringDataImplFromJson(Map<String, dynamic> json) =>
    _$StringDataImpl(
      json['value'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StringDataImplToJson(_$StringDataImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$NumDataImpl _$$NumDataImplFromJson(Map<String, dynamic> json) =>
    _$NumDataImpl(
      json['value'] as num,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NumDataImplToJson(_$NumDataImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$BoolDataImpl _$$BoolDataImplFromJson(Map<String, dynamic> json) =>
    _$BoolDataImpl(
      json['value'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BoolDataImplToJson(_$BoolDataImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$ListDataImpl _$$ListDataImplFromJson(Map<String, dynamic> json) =>
    _$ListDataImpl(
      json['value'] as List<dynamic>,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ListDataImplToJson(_$ListDataImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$JsonDataImpl _$$JsonDataImplFromJson(Map<String, dynamic> json) =>
    _$JsonDataImpl(
      json['value'] as Map<String, dynamic>,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$JsonDataImplToJson(_$JsonDataImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$DynamicDataImpl _$$DynamicDataImplFromJson(Map<String, dynamic> json) =>
    _$DynamicDataImpl(
      json['value'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DynamicDataImplToJson(_$DynamicDataImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$NullDataImpl _$$NullDataImplFromJson(Map<String, dynamic> json) =>
    _$NullDataImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NullDataImplToJson(_$NullDataImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$JsonStringDataImpl _$$JsonStringDataImplFromJson(Map<String, dynamic> json) =>
    _$JsonStringDataImpl(
      json['jsonString'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$JsonStringDataImplToJson(
        _$JsonStringDataImpl instance) =>
    <String, dynamic>{
      'jsonString': instance.jsonString,
      'runtimeType': instance.$type,
    };

_$ImageParamsImpl _$$ImageParamsImplFromJson(Map<String, dynamic> json) =>
    _$ImageParamsImpl(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      size: (json['size'] as num?)?.toDouble(),
      enableMemoryCache: json['enableMemoryCache'] as bool? ?? true,
      heroTag: json['heroTag'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
      clearMemoryCacheIfFailed:
          json['clearMemoryCacheIfFailed'] as bool? ?? true,
      gaplessPlayback: json['gaplessPlayback'] as bool? ?? true,
      scale: (json['scale'] as num?)?.toDouble(),
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      cache: json['cache'] as bool? ?? true,
      retries: (json['retries'] as num?)?.toInt() ?? 3,
      cacheKey: json['cacheKey'] as String?,
      printError: json['printError'] as bool? ?? false,
      cacheRawData: json['cacheRawData'] as bool? ?? true,
      imageCacheName: json['imageCacheName'] as String?,
      cacheWidth: (json['cacheWidth'] as num?)?.toInt(),
      cacheHeight: (json['cacheHeight'] as num?)?.toInt(),
      compressionRatio: (json['compressionRatio'] as num?)?.toDouble(),
      maxBytes: (json['maxBytes'] as num?)?.toInt(),
      package: json['package'] as String?,
    );

Map<String, dynamic> _$$ImageParamsImplToJson(_$ImageParamsImpl instance) =>
    <String, dynamic>{
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

_$MyNetworkImageImpl _$$MyNetworkImageImplFromJson(Map<String, dynamic> json) =>
    _$MyNetworkImageImpl(
      url: json['url'] as String,
      params: json['params'] == null
          ? const ImageParams()
          : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyNetworkImageImplToJson(
        _$MyNetworkImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$MyBase64ImageImpl _$$MyBase64ImageImplFromJson(Map<String, dynamic> json) =>
    _$MyBase64ImageImpl(
      base64Code: json['base64Code'] as String,
      params: json['params'] == null
          ? const ImageParams()
          : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyBase64ImageImplToJson(_$MyBase64ImageImpl instance) =>
    <String, dynamic>{
      'base64Code': instance.base64Code,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$MyFilePathImageImpl _$$MyFilePathImageImplFromJson(
        Map<String, dynamic> json) =>
    _$MyFilePathImageImpl(
      filePath: json['filePath'] as String,
      params: json['params'] == null
          ? const ImageParams()
          : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyFilePathImageImplToJson(
        _$MyFilePathImageImpl instance) =>
    <String, dynamic>{
      'filePath': instance.filePath,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$MyAssetImageImpl _$$MyAssetImageImplFromJson(Map<String, dynamic> json) =>
    _$MyAssetImageImpl(
      assetPath: json['assetPath'] as String,
      params: json['params'] == null
          ? const ImageParams()
          : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MyAssetImageImplToJson(_$MyAssetImageImpl instance) =>
    <String, dynamic>{
      'assetPath': instance.assetPath,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_$PictureSelectionI18nConfigImpl _$$PictureSelectionI18nConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$PictureSelectionI18nConfigImpl(
      photoAlbumMenuText: json['photoAlbumMenuText'] as String? ?? '相册',
      goShootText: json['goShootText'] as String? ?? '去拍摄',
    );

Map<String, dynamic> _$$PictureSelectionI18nConfigImplToJson(
        _$PictureSelectionI18nConfigImpl instance) =>
    <String, dynamic>{
      'photoAlbumMenuText': instance.photoAlbumMenuText,
      'goShootText': instance.goShootText,
    };
