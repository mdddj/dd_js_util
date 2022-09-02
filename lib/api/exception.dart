import 'dart:io';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

/// 自定义异常
class AppException implements Exception {
  final String message;
  final int code;

  AppException({
    required this.code,
    required this.message,
  });

  factory AppException.appError({int? code,String? msg}){
    return AppException(code: code ?? 10001, message: msg ?? 'APP出现错误');
  }

  factory AppException.create(DioError error) {
    final data = error.response?.data;

    String? msg;

    try {
      if (data != null && data is Map<String, dynamic>) {
        msg = data['message'];
      }
    } catch (_) {}

    switch (error.type) {
      case DioErrorType.cancel:
        {
          /// 请求取消
          return BadRequestException(201, "Request cancellation");
        }
      case DioErrorType.connectTimeout:
        {
          return BadRequestException(-1, "Connection timed out");
        }
      case DioErrorType.sendTimeout:
        {
          return BadRequestException(-1, "Connection timed out");
        }
      case DioErrorType.receiveTimeout:
        {
          return BadRequestException(-1, "Response timeout");
        }
      case DioErrorType.response:
        {
          try {
            int? errCode = error.response?.statusCode;
            switch (errCode) {
              case 400:
                {
                  /// 请求语法错误
                  return BadRequestException(errCode!, msg ?? "Request syntax error");
                }
              case 401:
                {
                  /// 没有权限
                  ///
                  ///
                  ///
                  return UnauthorisedException(errCode!, msg ?? "Permission denied");
                }
              case 403:
                {
                  /// 服务器拒绝执行
                  return UnauthorisedException(errCode!, msg ?? "Server refused to execute");
                }
              case 404:
                {
                  return UnauthorisedException(errCode!, msg ?? "Can not connect to the server");
                }
              case 405:
                {
                  /// 请求方法被静止
                  return UnauthorisedException(errCode!, msg ?? "Request method is forbidden");
                }
              case 500:
                {
                  /// 服务器内部错误
                  return UnauthorisedException(errCode!, msg ?? "Server internal error");
                }
              case 502:
                {
                  /// 无效的请求
                  return UnauthorisedException(errCode!, msg ?? "Invalid request");
                }
              case 503:
                {
                  /// 服务器挂了
                  return UnauthorisedException(errCode!, msg ?? "Server hung up");
                }
              case 505:
                {
                  /// 不支持http请求
                  return UnauthorisedException(errCode!, msg ?? "Does not support HTTP protocol request");
                }
              case 504:
                {
                  return UnauthorisedException(504, 'Processing timed out, please try again');
                }
              default:
                {
                  return AppException(
                      code: errCode ?? 90001,
                      message: 'Sorry, there are some errors in the program, please contact our online customer for processing.');
                }
            }
          } on Exception {
            return AppException(message: msg ?? "unknown mistake", code: -1);
          }
        }

    /// other.
      default:
        {
          final otherErrorType = error.error.runtimeType;
          switch (otherErrorType) {

          /// 网络异常
            case SocketException:
              return AppException(code: -121, message: "Network error, please check and try again");

            case HandshakeException:
              return AppException(code: -122, message: 'Please check your network connection');
            case AppException:
              return error.error as AppException;

          /// 未处理的异常
            default:
              Logger().e(">>>其他异常:${error.requestOptions.uri} \n $data \n $otherErrorType  \n$error");
              return AppException(message: "Service error, please try again", code: -122);
          }
        }
    }
  }

  @override
  String toString() {
    return message;
  }
}
//cfrnawXlI5*k 临时密码

/// 请求错误
class BadRequestException extends AppException {
  BadRequestException(int code, String message) : super(code: code, message: message);
}

/// 未认证异常
class UnauthorisedException extends AppException {
  UnauthorisedException(int code, String message) : super(code: code, message: message);
}

/// 拦截器
/// 错误处理拦截器
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    AppException appException = AppException.create(err);
    err.error = appException;
    super.onError(err, handler);
  }
}
