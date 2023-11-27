import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/base_api_exception.dart';
import '../model/dart_type_model.dart';

part 'request_params.freezed.dart';
part 'request_params.g.dart';

typedef DioStart = Future<void> Function(Dio dio, String url);
typedef InterceptorCall = ISet<Interceptor> Function(ISet<Interceptor> old);
typedef UrlParseFormat = String Function(String uri, dynamic queryParameters);
typedef ResponseResultCallback = void Function(dynamic response); //接口返回回调
typedef ReLoginSuccess = void Function();

extension RequestParamsex on RequestParams {
  DartTypeModel get dataModel {
    return DartTypeModel.createFrom(data);
  }
}

@freezed
class RequestParams with _$RequestParams {
  const RequestParams._();

  const factory RequestParams(
      {@Default(true) bool showErrorMsg,
      @Default("loading...") String loadingText,
      String? contentType,
      @Default({}) Map<String, dynamic> headers,
      @Default(true) bool showDefaultLoading,
      @JsonKey(name: 'data', toJson: _dataToJson) dynamic data,
      ResponseType? responseType,
      bool? nullParams,
      @igFreezedJson RequestEncoder? requestEncoder,
      @igFreezedJson DioStart? dioStart,
      bool? returnIsString,
      @igFreezedJson @Default(false) bool isFullUrl,
      @igFreezedJson InterceptorCall? interceptorCall,
      @igFreezedJson UrlParseFormat? urlParseFormat,
      @igFreezedJson ResponseResultCallback? responseResultCallback,
      Map<String, dynamic>? extra,
      @igFreezedJson CancelToken? cancelToken,
      @igFreezedJson ProgressCallback? onSendCallback,
      @igFreezedJson ProgressCallback? onReceiveProgress}) = _RequestParams;

  factory RequestParams.fromJson(Map<String, dynamic> json) => _$RequestParamsFromJson(json);
}

DartTypeModel _dataToJson(dynamic data) {
  final model = DartTypeModel.createFrom(data);
  return model;
}
