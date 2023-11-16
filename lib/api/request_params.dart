import 'package:dio/dio.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
      @JsonKey(includeToJson: false, includeFromJson: false, fromJson: null, toJson: null)
      RequestEncoder? requestEncoder,
      @JsonKey(includeToJson: false, includeFromJson: false, fromJson: null, toJson: null) DioStart? dioStart,
      bool? returnIsString,
      @JsonKey(includeToJson: false, includeFromJson: false, fromJson: null, toJson: null)
      @Default(false)
      bool isFullUrl,
      @JsonKey(includeToJson: false, includeFromJson: false, fromJson: null, toJson: null)
      InterceptorCall? interceptorCall,
      @JsonKey(includeToJson: false, includeFromJson: false, fromJson: null, toJson: null)
      UrlParseFormat? urlParseFormat,
      @JsonKey(includeToJson: false, includeFromJson: false, fromJson: null, toJson: null)
      ResponseResultCallback? responseResultCallback,
      Map<String, dynamic>? extra,
      @JsonKey(includeToJson: false, includeFromJson: false, fromJson: null, toJson: null)
      CancelToken? cancelToken}) = _RequestParams;

  factory RequestParams.fromJson(Map<String, dynamic> json) => _$RequestParamsFromJson(json);
}

DartTypeModel _dataToJson(dynamic data) {
  final model = DartTypeModel.createFrom(data);
  return model;
}
