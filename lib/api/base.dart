part of dd_js_util;

const kProtobufContentType = 'application/x-protobuf';

enum HttpMethod { post, get, probuf }

const kMultipartFormDataHeader = 'multipart/form-data';

typedef ParseObject = BaseModel Function(Map<String, dynamic> originMap);

@Doc(message: "简单toast弹窗")
void toast(String msg) {
  SmartDialog.dismiss(status: SmartStatus.toast);
  SmartDialog.showToast(msg);
}

abstract class BaseModel<T> {
  T fromJson(Map<String, dynamic> map);

  @override
  String toString() {
    return "BaseModel: ${T.runtimeType}";
  }
}

///分页api
mixin BasePagedApiMixin on BaseApi {
  String get pageParamsKey => 'page';
}

abstract class BaseApi {
  static bool showLog = false;
  static late String _host;
  static set host(String h) => _host = h;

  final String url;
  final HttpMethod httpMethod;
  final Map<String, dynamic> params = <String, dynamic>{};
  FormData formData = FormData.fromMap({});
  List<Interceptor> intrtceptors = [];

  static Dio? dio;

  BaseApi(this.url, {this.httpMethod = HttpMethod.get});

  /// [isFullUrl] - url传入的是否为完整的一个URL,如果为[true],将忽略[host]
  @Doc(message: "向服务器发起http请求")
  Future<dynamic> request([RequestParams? options]) async {
    options ??= const RequestParams();
    try {
      if (options.showDefaultLoading) {
        showLoading(loadingText: options.loadingText);
      }
      final dio = getDio();
      intrtceptors.add(ErrorInterceptor());
      dio.interceptors.addAll(intrtceptors);
      final contentTypeStr = options.contentType.isNotEmpty
          ? options.contentType
          : (httpMethod == HttpMethod.post ? io.ContentType.json.value : null);
      final bodyParams =
          formData.files.isNotEmpty ? formData : (options.data ?? params);
      options.dioStart?.call(dio, _host + url);
      final queryParameters = httpMethod == HttpMethod.post
          ? null
          : (options.nullParams == true ? null : options.data ?? params);
      final contentTypeString = httpMethod == HttpMethod.probuf
          ? kProtobufContentType
          : contentTypeStr;
      final finalUrl = options.isFullUrl ? url : (_host + url);
      printLog("url---$finalUrl");
      printLog("params---$queryParameters");
      final response = await dio.request(
        finalUrl,
        options: Options(
            method: method,
            contentType: contentTypeString,
            headers: options.headers,
            responseType: options.responseType,
            requestEncoder: options.requestEncoder),
        queryParameters: queryParameters,
        data: bodyParams,
      );
      if (options.showDefaultLoading) {
        closeLoading();
      }

      if (response.statusCode == 200) {
        final data = response.data;
        if (data is String) {
          if (options.returnIsString == true) {
            return data;
          }
          try {
            return jsonDecode(data);
          } catch (e) {
            throw AppException.appError(
                code: 10003, msg: "Unable to process server data",data: data);
          }
        }
        return data;
      } else {
        throw AppException(
            code: response.statusCode ?? 10004,
            message: response.statusMessage ?? "ERROR");
      }
    } on DioError catch (e) {
      if (options.showDefaultLoading) {
        closeLoading();
      }
      throw e.error as AppException;
    } on AppException catch(_){
      rethrow;
    } catch (e, s) {
      if (showLog) {
        debugPrintStack(stackTrace: s, label: '$e');
      }
      throw AppException.appError(msg: e.toString());
    }
  }

  //请求方法,
  String get method {
    switch (httpMethod) {
      case HttpMethod.get:
        return 'get';
      case HttpMethod.post:
        return 'post';
      default:
        return "get";
    }
  }

  @Doc(message: "页面中间显示loading等待框")
  void showLoading({String? loadingText}) {
    SmartDialog.showLoading(msg: loadingText ?? '加载中...');
  }

  @Doc(message: "关闭loading框")
  void closeLoading() {
    SmartDialog.dismiss();
  }

  static Dio getDio() {
    if (dio != null) {
      return dio!;
    }
    dio = Dio(BaseOptions(connectTimeout: const Duration(milliseconds: 30000)));
    return dio!;
  }

  void handle(CallIf callIf, ValueChanged<BaseApi> call) {
    if (callIf.call()) {
      call.call(this);
    }
  }

  void printLog(dynamic log) {
    if (showLog) {
      debugPrint('$log');
    }
  }

}

typedef CallIf = bool Function();

/// 主动显示的注解
class Doc {
  final String message;

  const Doc({required this.message});
}

///wrapjson类型的接口封装
abstract class AppCoreApi extends BaseApi {
  AppCoreApi(String url, {HttpMethod? httpMethod, List<Interceptor>? ints})
      : super(url, httpMethod: httpMethod ?? HttpMethod.get) {
    if (ints?.isNotEmpty == true) {
      intrtceptors.addAll(ints!);
    }
  }

  @override
  Future<WrapJson> request([RequestParams? options]) async {
    try {
      final r = await super.request(options);
      return WrapJson(r);
    } on AppException catch (e) {
      return WrapJson.fromMyServerError(e);
    }
  }
}
