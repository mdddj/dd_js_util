part of '../dd_js_util.dart';

const kProtobufContentType = 'application/x-protobuf';

enum HttpMethod {
  post("post"),
  get("get"),
  probuf("probuf"),
  delete('delete'),
  put("put"),
  update("update");

  final String method;

  const HttpMethod(this.method);
}

const kMultipartFormDataHeader = 'multipart/form-data';

typedef MyFormData = dio.FormData;
typedef MyMultipartFile = dio.MultipartFile;
typedef MyInterceptorWrapper = dio.InterceptorsWrapper;
typedef MyInterceptor = dio.Interceptor;
typedef ToastWrapper = FlutterSmartDialog;
typedef BaseApiOption = dio.BaseOptions;
typedef MyList<T> = IList<T>;
typedef MyConstList<T> = IListConst<T>;
typedef MyMap<K, V> = IMap<K, V>;
typedef MyConstMap<K, V> = IMapConst<K, V>;
typedef MySliverWaterfallFlowDelegateWithFixedCrossAxisCount
    = SliverWaterfallFlowDelegateWithFixedCrossAxisCount;

///loading more 组件
typedef MyLoadingModel<T> = LoadingModel<T>;
typedef MyLoadingMoreList<T> = LoadingMoreList<T>;
typedef MyLoadingMoreSliverList<T> = LoadingMoreSliverList<T>;
typedef MyListConfig<T> = ListConfig<T>;
typedef MySliverListConfig<T> = SliverListConfig<T>;
typedef MyLoadingMoreCustomScrollView = LoadingMoreCustomScrollView;
typedef MyIndicatorStatus = IndicatorStatusModel;
typedef R = RequestParams;
typedef MySwiper = Swiper;

@Doc(message: "简单toast弹窗")
void toast(String msg) {
  SmartDialog.dismiss(status: SmartStatus.toast);
  SmartDialog.showToast(msg,);
}

extension Tex3<T> on T? {
  T ifNullThrowBizException([String message = ""]) {
    if (this == null) {
      throw BaseApiException.businessException(message: message);
    }
    return this!;
  }
}

///分页api
mixin BasePagedApiMixin<T> on BaseApi<T> {
  String get pageParamsKey => 'page';
}


abstract class BaseApi<T> extends ChangeNotifier {
  dio.BaseOptions options = dio.BaseOptions(
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(seconds: 5));
  bool showLog = false;
  String _host = '';
  final String url;
  final HttpMethod httpMethod;
  final Map<String, dynamic> params = <String, dynamic>{};
  dio.FormData? formData;
  ISet<dio.Interceptor> interceptions = ISet();
  dio.Dio? _dio;

  BaseApi(this.url, {this.httpMethod = HttpMethod.get});

  /// [isFullUrl] - url传入的是否为完整的一个URL,如果为[true],将忽略[host]
  @Doc(message: "向服务器发起http请求")
  Future<T> request([RequestParams options = const RequestParams()]) async {
    final fullUrl = options.fullUrl;
    try {
      if (options.showDefaultLoading) {
        showLoading(loadingText: options.loadingText);
      }
      final baseOptions = await getOptions(options);
      final d = await getDio(baseOptions);
      d.interceptors.addAll(
          options.interceptorCall?.call(interceptions) ?? interceptions);
      final contentTypeStr = options.contentType ??
          (httpMethod == HttpMethod.post
              ? io.ContentType.json.value
              : options.contentType);
      final bodyParams = formData ?? (options.data ?? params);
      final queryParameters = httpMethod == HttpMethod.post
          ? null
          : (options.nullParams == true ? null : options.data ?? params);
      final contentTypeString = httpMethod == HttpMethod.probuf
          ? kProtobufContentType
          : contentTypeStr;
      final finalUrl = fullUrl ?? (_host + url);
      await options.dioStart?.call(d, finalUrl);
      var uri = (options.urlParseFormat ?? (v, p) => v)
          .call(finalUrl, queryParameters);
      final bodyData = httpMethod == HttpMethod.get ? null : bodyParams;
      final response = await d.request(uri,
          options: dio.Options(
            method: httpMethod.method,
            contentType: contentTypeString,
            headers: options.headers,
            responseType: options.responseType,
            requestEncoder: options.requestEncoder,
            extra: options.extra
          ),
          queryParameters:
              httpMethod == HttpMethod.get ? queryParameters : null,
          data: bodyData,
          onReceiveProgress: options.onReceiveProgress,
          onSendProgress: options.onSendCallback,
          cancelToken: options.cancelToken);
      options.responseResultCallback?.call(response);
      if (options.showDefaultLoading) {
        closeLoading();
      }
      final data = response.data;
      var model = DartTypeModel.createFrom(data);
      beforeHandleDartTypeModel(model, options, response);
      return covertToModel(model, options);
    } on dio.DioException catch (e) {
      throw BaseApiException.createFromDioException(e);
    } finally {
      if (options.showDefaultLoading) {
        closeLoading();
      }
    }
  }

  ///下载文件
  Future<T> download([RequestParams options = const RequestParams()]) async {
    final baseOptions = await getOptions(options);
    final d = await getDio(baseOptions);
    assert(options.downloadUrl != null, "请传入下载链接");
    assert(options.savePath != null, "请传入保存路径");
    try {
      final response = await d.download(
          options.downloadUrl!, options.savePath!.path,
          onReceiveProgress: options.onReceiveProgress,
          data: options.data,
          cancelToken: options.cancelToken);
      options.responseResultCallback?.call(response);
      var model = DartTypeModel.createFrom(response.data);
      beforeHandleDartTypeModel(model, options, response);
      return covertToModel(model, options);
    } on dio.DioException catch (e) {
      throw BaseApiException.createFromDioException(e);
    }
  }

  T covertToModel(DartTypeModel data, RequestParams param);

  void beforeHandleDartTypeModel(DartTypeModel model,
      RequestParams requestParams, dio.Response<dynamic> response) {}

  @Doc(message: "页面中间显示loading等待框")
  void showLoading({String? loadingText}) {
    SmartDialog.showLoading(msg: loadingText ?? '加载中...');
  }

  @Doc(message: "关闭loading框")
  void closeLoading() {
    SmartDialog.dismiss(status: SmartStatus.loading);
  }

  Future<dio.BaseOptions> getOptions(RequestParams param) async =>
      dio.BaseOptions();

  Future<dio.Dio> getDio(dio.BaseOptions baseOptions) async {
    if (_dio != null) {
      return _dio!;
    }
    _host = baseOptions.baseUrl;
    _dio ??= dio.Dio(baseOptions);
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

  String getMediaType(String filename) => lookupMimeType(filename) ?? '';
}

///请求参数去重
String removeDuplicateParams(String url) {
  Uri uri = Uri.parse(url);
  Map<String, List<String>> queryParams = uri.queryParametersAll;

  Map<String, List<String>> uniqueParams = {};
  queryParams.forEach((key, value) {
    uniqueParams[key] = value.toSet().toList();
  });

  Uri updatedUri = uri.replace(queryParameters: uniqueParams);
  return updatedUri.toString();
}

typedef CallIf = bool Function();

/// 主动显示的注解
class Doc {
  final String message;

  const Doc({required this.message});
}

///加载原始数据
class FetchRawByUrl extends BaseApi<DartTypeModel> {
  final String requestUrl;

  FetchRawByUrl(this.requestUrl) : super(requestUrl);

  @override
  DartTypeModel covertToModel(DartTypeModel data, RequestParams param) {
    return data;
  }

  @override
  Future<DartTypeModel> request(
      [RequestParams options = const RequestParams()]) {
    return super
        .request(RequestParams(showDefaultLoading: false, fullUrl: requestUrl));
  }
}

String myPrintFormattedJson(dynamic jsonObject, {bool doPrint = true}) {
  var encoder = const JsonEncoder.withIndent('  '); // 两个空格用于缩进
  String prettyPrint = encoder.convert(jsonObject);
  if (doPrint) {
    debugPrint(prettyPrint);
  }
  return prettyPrint;
}
