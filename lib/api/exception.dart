part of dd_js_util;

/// 自定义异常
class AppException implements Exception {
  final String message;
  final int code;
  final dio.DioError? dioError;
  final dynamic data;

  AppException( {
    required this.code,
    required this.message,
    this.dioError,
    this.data
  });

  factory AppException.appError({int? code,String? msg,dio.DioError? dioError,dynamic data}){
    return AppException(code: code ?? 10001, message: msg ?? 'app Error',dioError: dioError,data:data);
  }

  String get getMessage {
    return data is String ? data.toString() : message;
  }

  factory AppException.create(dio.DioError error) {
    final data = error.response?.data;

    String? msg;

    try {
      if (data != null && data is Map<String, dynamic>) {
        msg = data['message'];
      }
    } catch (_) {}

    switch (error.type) {
      case dio.DioErrorType.cancel:
        {
          /// 请求取消
          return BadRequestException(201, "Request cancellation",dioError: error);
        }
      case dio.DioErrorType.connectionTimeout:
        {
          return BadRequestException(-1, "Connection timed out",dioError: error);
        }
      case dio.DioErrorType.sendTimeout:
        {
          return BadRequestException(-1, "Connection timed out",dioError: error);
        }
      case dio.DioErrorType.receiveTimeout:
        {
          return BadRequestException(-1, "Response timeout",dioError: error);
        }
      case dio.DioErrorType.badResponse:
        {
          try {
            int? errCode = error.response?.statusCode;
            switch (errCode) {
              case 400:
                {
                  /// 请求语法错误
                  return BadRequestException(errCode!, msg ?? "Request syntax error",dioError: error);
                }
              case 401:
                {
                  /// 没有权限
                  ///
                  ///
                  ///
                  return UnauthorisedException(errCode!, msg ?? "Permission denied",dioError: error);
                }
              case 403:
                {
                  /// 服务器拒绝执行
                  return UnauthorisedException(errCode!, msg ?? "Server refused to execute",dioError: error);
                }
              case 404:
                {
                  return UnauthorisedException(errCode!, msg ?? "Can not connect to the server",dioError: error);
                }
              case 405:
                {
                  /// 请求方法被静止
                  return UnauthorisedException(errCode!, msg ?? "Request method is forbidden",dioError: error);
                }
              case 500:
                {
                  /// 服务器内部错误
                  return UnauthorisedException(errCode!, msg ?? "Server internal error",dioError: error);
                }
              case 502:
                {
                  /// 无效的请求
                  return UnauthorisedException(errCode!, msg ?? "Invalid request",dioError: error);
                }
              case 503:
                {
                  /// 服务器挂了
                  return UnauthorisedException(errCode!, msg ?? "Server hung up",dioError: error);
                }
              case 505:
                {
                  /// 不支持http请求
                  return UnauthorisedException(errCode!, msg ?? "Does not support HTTP protocol request",dioError: error);
                }
              case 504:
                {
                  return UnauthorisedException(504, 'Processing timed out, please try again',dioError: error);
                }
              default:
                {
                  return AppException(
                      code: errCode ?? 90001,
                      message: 'Sorry, there are some errors in the program, please contact our online customer for processing.',dioError: error);
                }
            }
          } on Exception {
            return AppException(message: msg ?? "unknown mistake", code: -1,dioError: error);
          }
        }
      default:
        {
          final otherErrorType = error.error.runtimeType;
          switch (otherErrorType) {
            case io.SocketException:
              return AppException(code: -121, message: "Network error, please check and try again",dioError: error);
            case io.HandshakeException:
              return AppException(code: -122, message: 'Please check your network connection',dioError: error);
            case AppException:
              return error.error as AppException;
            default:
              return AppException(message: "Service error, please try again", code: -122,dioError: error);
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
  BadRequestException(int code, String message,{dio.DioError? dioError}) : super(code: code, message: message,dioError: dioError);
}

/// 未认证异常
class UnauthorisedException extends AppException {
  UnauthorisedException(int code, String message,{dio.DioError? dioError}) : super(code: code, message: message,dioError: dioError);
}

/// 拦截器
/// 错误处理拦截器
class ErrorInterceptor extends dio.Interceptor {
  @override
  void onError(dio.DioError err, dio.ErrorInterceptorHandler handler) {
    AppException appException = AppException.create(err);
    final ae = err.copyWith(error: appException);
    super.onError(ae, handler);
  }
}
