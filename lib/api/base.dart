part of dd_js_util;

const kProtobufContentType = 'application/x-protobuf';

enum HttpMethod { post, get, probuf }

const kMultipartFormDataHeader = 'multipart/form-data';

typedef MyFormData = dio.FormData;
typedef MyMultipartFile = dio.MultipartFile;
typedef MyInterceptorWrapper = dio.InterceptorsWrapper;
typedef MyInterceptor = dio.Interceptor;
typedef ParseObject = BaseModel Function(Map<String, dynamic> originMap);
typedef ToastWrapper = FlutterSmartDialog;
typedef BaseApiOption = dio.BaseOptions;
typedef MyList<T> = IList<T>;
typedef MyConstList<T> = IListConst<T>;
typedef MyMap<K, V> = IMap<K, V>;
typedef MyConstMap<K, V> = IMapConst<K, V>;
typedef MySliverWaterfallFlowDelegateWithFixedCrossAxisCount = SliverWaterfallFlowDelegateWithFixedCrossAxisCount;

///loading more 组件
typedef MyLoadingModel<T> = LoadingModel<T>;
typedef MyLoadingMoreList<T> = LoadingMoreList<T>;
typedef MyLoadingMoreSliverList<T> = LoadingMoreSliverList<T>;
typedef MyListConfig<T> = ListConfig<T>;
typedef MySliverListConfig<T> = SliverListConfig<T>;
typedef MyLoadingMoreCustomScrollView = LoadingMoreCustomScrollView;
typedef MyIndicatorStatus = IndicatorStatus;
typedef R = RequestParams;
typedef MySwiper = Swiper;

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
  static dio.BaseOptions options =
      dio.BaseOptions(connectTimeout: const Duration(milliseconds: 30000), receiveTimeout: const Duration(seconds: 5));

  static set host(String h) => _host = h;

  final String url;
  final HttpMethod httpMethod;
  final Map<String, dynamic> params = <String, dynamic>{};
  dio.FormData formData = dio.FormData.fromMap({});
  List<dio.Interceptor> interceptions = [];

  static dio.Dio? _dio;

  BaseApi(this.url, {this.httpMethod = HttpMethod.get});

  /// [isFullUrl] - url传入的是否为完整的一个URL,如果为[true],将忽略[host]
  @Doc(message: "向服务器发起http请求")
  Future<dynamic> request([RequestParams? options]) async {
    options ??= const RequestParams();
    try {
      if (options.showDefaultLoading) {
        showLoading(loadingText: options.loadingText);
      }
      final d = getDio();
      interceptions.add(ErrorInterceptor());
      d.interceptors.addAll(options.interceptorCall?.call(interceptions) ?? interceptions);
      final contentTypeStr =
          options.contentType ?? (httpMethod == HttpMethod.post ? io.ContentType.json.value : options.contentType);
      final bodyParams = formData.files.isNotEmpty ? formData : (options.data ?? params);
      final queryParameters =
          httpMethod == HttpMethod.post ? null : (options.nullParams == true ? null : options.data ?? params);
      final contentTypeString = httpMethod == HttpMethod.probuf ? kProtobufContentType : contentTypeStr;
      final finalUrl = options.isFullUrl ? url : (_host + url);
      await options.dioStart?.call(d, finalUrl);
      printLog("url---$finalUrl");
      printLog("params---$queryParameters");
      var uri = (options.urlParseFormat ?? (v, p) => v).call(finalUrl, queryParameters);
      final response = await d.request(
        uri,
        options: dio.Options(
          method: method,
          contentType: contentTypeString,
          headers: options.headers,
          responseType: options.responseType,
          requestEncoder: options.requestEncoder,
        ),
        queryParameters: httpMethod == HttpMethod.get ? queryParameters : null,
        data: httpMethod == HttpMethod.get ? null : bodyParams,
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
            kLogErr(data.runtimeType);
            kLogErr(data);
            throw AppException.appError(code: 10003, msg: "Unable to process server data", data: data);
          }
        }
        return data;
      } else {
        throw AppException(code: response.statusCode ?? 10004, message: response.statusMessage ?? "ERROR");
      }
    } on dio.DioError catch (e) {
      if (options.showDefaultLoading) {
        closeLoading();
      }
      throw e.error as AppException;
    } on AppException catch (_) {
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

  static dio.Dio getDio() {
    _dio ??= dio.Dio(options);
    return _dio!;
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

  ///添加代理
  static void addProxy(String proxy) {
    (getDio().httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate = (io.HttpClient client) {
      client.findProxy = (uri) {
        return proxy;
      };
      return null;
    };
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
  AppCoreApi(String url, {HttpMethod? httpMethod, List<dio.Interceptor>? ints})
      : super(url, httpMethod: httpMethod ?? HttpMethod.get) {
    if (ints?.isNotEmpty == true) {
      interceptions.addAll(ints!);
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
