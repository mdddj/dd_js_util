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

_RequestParams _$RequestParamsFromJson(Map<String, dynamic> json) =>
    _RequestParams(
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

Map<String, dynamic> _$RequestParamsToJson(_RequestParams instance) =>
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

BaseApiCancelException _$BaseApiCancelExceptionFromJson(
        Map<String, dynamic> json) =>
    BaseApiCancelException(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BaseApiCancelExceptionToJson(
        BaseApiCancelException instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

BaseApiConnectionTimeoutException _$BaseApiConnectionTimeoutExceptionFromJson(
        Map<String, dynamic> json) =>
    BaseApiConnectionTimeoutException(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BaseApiConnectionTimeoutExceptionToJson(
        BaseApiConnectionTimeoutException instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

BaseApiSendTimeoutException _$BaseApiSendTimeoutExceptionFromJson(
        Map<String, dynamic> json) =>
    BaseApiSendTimeoutException(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BaseApiSendTimeoutExceptionToJson(
        BaseApiSendTimeoutException instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

BaseApiReceiveTimeoutException _$BaseApiReceiveTimeoutExceptionFromJson(
        Map<String, dynamic> json) =>
    BaseApiReceiveTimeoutException(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BaseApiReceiveTimeoutExceptionToJson(
        BaseApiReceiveTimeoutException instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

BaseApiBadCertificateException _$BaseApiBadCertificateExceptionFromJson(
        Map<String, dynamic> json) =>
    BaseApiBadCertificateException(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BaseApiBadCertificateExceptionToJson(
        BaseApiBadCertificateException instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

BaseApiConnectionErrorException _$BaseApiConnectionErrorExceptionFromJson(
        Map<String, dynamic> json) =>
    BaseApiConnectionErrorException(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BaseApiConnectionErrorExceptionToJson(
        BaseApiConnectionErrorException instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

BaseApiBadResponseException _$BaseApiBadResponseExceptionFromJson(
        Map<String, dynamic> json) =>
    BaseApiBadResponseException(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BaseApiBadResponseExceptionToJson(
        BaseApiBadResponseException instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'runtimeType': instance.$type,
    };

BaseApiBusinessException _$BaseApiBusinessExceptionFromJson(
        Map<String, dynamic> json) =>
    BaseApiBusinessException(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BaseApiBusinessExceptionToJson(
        BaseApiBusinessException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

StringData _$StringDataFromJson(Map<String, dynamic> json) => StringData(
      json['value'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$StringDataToJson(StringData instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

NumData _$NumDataFromJson(Map<String, dynamic> json) => NumData(
      json['value'] as num,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NumDataToJson(NumData instance) => <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

BoolData _$BoolDataFromJson(Map<String, dynamic> json) => BoolData(
      json['value'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BoolDataToJson(BoolData instance) => <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

ListData _$ListDataFromJson(Map<String, dynamic> json) => ListData(
      json['value'] as List<dynamic>,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ListDataToJson(ListData instance) => <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

JsonData _$JsonDataFromJson(Map<String, dynamic> json) => JsonData(
      json['value'] as Map<String, dynamic>,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$JsonDataToJson(JsonData instance) => <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

DynamicData _$DynamicDataFromJson(Map<String, dynamic> json) => DynamicData(
      json['value'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DynamicDataToJson(DynamicData instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

NullData _$NullDataFromJson(Map<String, dynamic> json) => NullData(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NullDataToJson(NullData instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

JsonStringData _$JsonStringDataFromJson(Map<String, dynamic> json) =>
    JsonStringData(
      json['jsonString'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$JsonStringDataToJson(JsonStringData instance) =>
    <String, dynamic>{
      'jsonString': instance.jsonString,
      'runtimeType': instance.$type,
    };

_ImageParams _$ImageParamsFromJson(Map<String, dynamic> json) => _ImageParams(
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      size: (json['size'] as num?)?.toDouble(),
      enableMemoryCache: json['enableMemoryCache'] as bool? ?? true,
      heroTag: json['heroTag'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
      clearMemoryCacheIfFailed:
          json['clearMemoryCacheIfFailed'] as bool? ?? true,
      clearMemoryCacheWhenDispose:
          json['clearMemoryCacheWhenDispose'] as bool? ?? false,
      gaplessPlayback: json['gaplessPlayback'] as bool? ?? true,
      filterQuality:
          $enumDecodeNullable(_$FilterQualityEnumMap, json['filterQuality']) ??
              FilterQuality.medium,
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

Map<String, dynamic> _$ImageParamsToJson(_ImageParams instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'size': instance.size,
      'enableMemoryCache': instance.enableMemoryCache,
      'heroTag': instance.heroTag,
      'isSelected': instance.isSelected,
      'clearMemoryCacheIfFailed': instance.clearMemoryCacheIfFailed,
      'clearMemoryCacheWhenDispose': instance.clearMemoryCacheWhenDispose,
      'gaplessPlayback': instance.gaplessPlayback,
      'filterQuality': _$FilterQualityEnumMap[instance.filterQuality]!,
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

const _$FilterQualityEnumMap = {
  FilterQuality.none: 'none',
  FilterQuality.low: 'low',
  FilterQuality.medium: 'medium',
  FilterQuality.high: 'high',
};

MyNetworkImage _$MyNetworkImageFromJson(Map<String, dynamic> json) =>
    MyNetworkImage(
      url: json['url'] as String,
      params: json['params'] == null
          ? const ImageParams()
          : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MyNetworkImageToJson(MyNetworkImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

MyBase64Image _$MyBase64ImageFromJson(Map<String, dynamic> json) =>
    MyBase64Image(
      base64Code: json['base64Code'] as String,
      params: json['params'] == null
          ? const ImageParams()
          : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MyBase64ImageToJson(MyBase64Image instance) =>
    <String, dynamic>{
      'base64Code': instance.base64Code,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

MyFilePathImage _$MyFilePathImageFromJson(Map<String, dynamic> json) =>
    MyFilePathImage(
      filePath: json['filePath'] as String,
      params: json['params'] == null
          ? const ImageParams()
          : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MyFilePathImageToJson(MyFilePathImage instance) =>
    <String, dynamic>{
      'filePath': instance.filePath,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

MyAssetImage _$MyAssetImageFromJson(Map<String, dynamic> json) => MyAssetImage(
      assetPath: json['assetPath'] as String,
      params: json['params'] == null
          ? const ImageParams()
          : ImageParams.fromJson(json['params'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MyAssetImageToJson(MyAssetImage instance) =>
    <String, dynamic>{
      'assetPath': instance.assetPath,
      'params': instance.params,
      'runtimeType': instance.$type,
    };

_PictureSelectionI18nConfig _$PictureSelectionI18nConfigFromJson(
        Map<String, dynamic> json) =>
    _PictureSelectionI18nConfig(
      photoAlbumMenuText: json['photoAlbumMenuText'] as String? ?? '相册',
      goShootText: json['goShootText'] as String? ?? '去拍摄',
    );

Map<String, dynamic> _$PictureSelectionI18nConfigToJson(
        _PictureSelectionI18nConfig instance) =>
    <String, dynamic>{
      'photoAlbumMenuText': instance.photoAlbumMenuText,
      'goShootText': instance.goShootText,
    };
