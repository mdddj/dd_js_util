import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_api_exception.g.dart';

part 'base_api_exception.freezed.dart';

@JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
class IgJson {
  const IgJson();
}

@freezed
class BaseApiException with _$BaseApiException {
  const BaseApiException._();

  ///请求被主动关闭异常
  const factory BaseApiException.cancel() = BaseApiCancelException;

  /// 由连接超时引起的异常
  const factory BaseApiException.connectionTimeout() = BaseApiConnectionTimeoutException;

  /// 当url发送超时时会发生这种情况。
  const factory BaseApiException.sendTimeout() = BaseApiSendTimeoutException;

  ///它发生在接收超时时。
  const factory BaseApiException.receiveTimeout() = BaseApiReceiveTimeoutException;

  ///由[ValidateCertificate]配置的证书不正确引起
  const factory BaseApiException.badCertificate() = BaseApiBadCertificateException;

  ///例如由“xhr.onError”或SocketExceptions引起。
  const factory BaseApiException.connectionError() = BaseApiConnectionErrorException;

  ///服务器错误
  const factory BaseApiException.badResponse(
      {@JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Response? response,
        int? statusCode}) = BaseApiBadResponseException;

  const factory BaseApiException.businessException({required String message,
    @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
    @JsonKey(fromJson: null,
        toJson: null,
        includeFromJson: false,
        includeToJson: false) StackTrace? stackTrace}) = BaseApiBusinessException;

  factory BaseApiException.fromJson(Map<String, dynamic> json) => _$BaseApiExceptionFromJson(json);

  factory BaseApiException.createFromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const BaseApiException.connectionTimeout();
      case DioExceptionType.sendTimeout:
        return const BaseApiException.sendTimeout();
      case DioExceptionType.receiveTimeout:
        return const BaseApiException.receiveTimeout();
      case DioExceptionType.badCertificate:
        return const BaseApiException.badCertificate();
      case DioExceptionType.badResponse:
        return BaseApiException.badResponse(
            response: dioException.response, statusCode: dioException.response?.statusCode);
      case DioExceptionType.cancel:
        return const BaseApiException.cancel();
      case DioExceptionType.connectionError:
        return const BaseApiException.connectionError();
      case DioExceptionType.unknown:
        return BaseApiException.businessException(
            message: 'unknown : ${dioException.error}', error: dioException.error, stackTrace: dioException.stackTrace);
    }
  }
}
