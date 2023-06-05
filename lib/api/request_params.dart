import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_params.freezed.dart';

typedef DioStart = Future<void> Function(Dio dio, String url);
typedef InterceptorCall = List<Interceptor> Function(List<Interceptor> old);
typedef UrlParseFormat = String Function(String uri,dynamic queryParameters);
typedef ResponseResultCallback = void Function(dynamic response);//接口返回回调
@freezed
class RequestParams with _$RequestParams {
  const RequestParams._();

  const factory RequestParams(
      {@Default(true) bool showErrorMsg,
      @Default("loading...") String loadingText,
      String? contentType,
      @Default({}) Map<String, dynamic> headers,
      @Default(true) bool showDefaultLoading,
      dynamic data,
      ResponseType? responseType,
      bool? nullParams,
      RequestEncoder? requestEncoder,
      DioStart? dioStart,
      bool? returnIsString,
      @Default(false) bool isFullUrl,
      InterceptorCall? interceptorCall,
      UrlParseFormat? urlParseFormat, ResponseResultCallback? responseResultCallback,
      VoidCallback? loginedSuccess
      }) = _RequestParams;
}
