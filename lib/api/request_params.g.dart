// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestParamsImpl _$$RequestParamsImplFromJson(Map<String, dynamic> json) => _$RequestParamsImpl(
      showErrorMsg: json['showErrorMsg'] as bool? ?? true,
      loadingText: json['loadingText'] as String? ?? "loading...",
      contentType: json['contentType'] as String?,
      headers: json['headers'] as Map<String, dynamic>? ?? const {},
      showDefaultLoading: json['showDefaultLoading'] as bool? ?? true,
      data: json['data'],
      responseType: $enumDecodeNullable(_$ResponseTypeEnumMap, json['responseType']),
      nullParams: json['nullParams'] as bool?,
      returnIsString: json['returnIsString'] as bool?,
      extra: json['extra'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RequestParamsImplToJson(_$RequestParamsImpl instance) => <String, dynamic>{
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
    };

const _$ResponseTypeEnumMap = {
  ResponseType.json: 'json',
  ResponseType.stream: 'stream',
  ResponseType.plain: 'plain',
  ResponseType.bytes: 'bytes',
};
