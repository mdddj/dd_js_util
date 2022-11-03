part of dd_js_util;


const kProtobufContentType = 'application/x-protobuf';

enum HttpMethod { post, get, probuf }

const kMultipartFormDataHeader = 'multipart/form-data';

typedef ParseObject = BaseModel Function(Map<String, dynamic> originMap);

typedef DioStart = void Function(Dio dio,String url);



@Doc(message: "简单toast弹窗")
void toast(String msg) {
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
  Future<dynamic> request(
      {bool showErrorMsg = true,
      String? loadingText,
      String contentType = "",
      Map<String, dynamic>? headers,
      bool showDefaultLoading = true,
      dynamic data,
      ResponseType? responseType,
      bool? nullParams,
      RequestEncoder? requestEncoder,
      DioStart? dioStart,bool? returnIsString,bool isFullUrl = false}) async {
    try {
      if (showDefaultLoading) {
        showLoading(loadingText: loadingText);
      }

      final dio = getDio();
      intrtceptors.add(ErrorInterceptor());
      dio.interceptors.addAll(intrtceptors);
      final contentTypeStr = contentType.isNotEmpty ? contentType : (httpMethod == HttpMethod.post ? ContentType.json.value : null);
      final bodyParams = formData.files.isNotEmpty ? formData : (data ?? params);
      dioStart?.call(dio,_host + url);
      final queryParameters = httpMethod == HttpMethod.post ? null : (nullParams == true ? null : data ?? params);
      final contentTypeString = httpMethod == HttpMethod.probuf ? kProtobufContentType : contentTypeStr;
      final response = await dio.request(
        isFullUrl ? url : (_host + url),
        options: Options(
            method: method,
            contentType: contentTypeString,
            headers: headers,
            responseType: responseType,
            requestEncoder: requestEncoder),
        queryParameters: queryParameters,
        data: bodyParams,
      );
      if (showDefaultLoading) {
        closeLoading();
      }

      if (response.statusCode == 200) {
        final data = response.data;
        if(data is String){
          if(returnIsString == true){
            return data;
          }
          try{
           return jsonDecode(data);
          }catch(e){
            throw AppException.appError(code: 10003,msg: "Unable to process server data");
          }
        }
        return data;
      }else{
        throw AppException(code: response.statusCode ?? 10004, message: response.statusMessage??"请求失败");
      }
    } on DioError catch (e) {
      if (showDefaultLoading) {
        closeLoading();
      }
      kLogErr('${e.error.runtimeType}');
      throw e.error as AppException;
    } catch (e,s) {
      kLogErr('Error:$e\n$s');
      throw AppException.appError();
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
    dio = Dio(BaseOptions(connectTimeout: 30000));
    return dio!;
  }

  void handle(CallIf callIf , ValueChanged<BaseApi> call) {
    if(callIf.call()){
      call.call(this);
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
  AppCoreApi(String url, {HttpMethod? httpMethod, List<Interceptor>? ints}) : super(url, httpMethod: httpMethod ?? HttpMethod.get) {
    if (ints?.isNotEmpty == true) {
      intrtceptors.addAll(ints!);
    }
  }

  @override
  Future<WrapJson> request(
      {bool showErrorMsg = true,
      String? loadingText,
      String contentType = "",
      Map<String, dynamic>? headers,
      bool showDefaultLoading = true,
      dynamic data,
      ResponseType? responseType,
      bool? nullParams,
      RequestEncoder? requestEncoder,
      DioStart? dioStart,bool? returnIsString,bool isFullUrl = false}) async {
    try {
      final r = await super.request(
          showErrorMsg: showErrorMsg,
          loadingText: loadingText,
          contentType: contentType,
          headers: headers,
          showDefaultLoading: showDefaultLoading,
          data: data,
          responseType: responseType,
          nullParams: nullParams,
          requestEncoder: requestEncoder,
          dioStart: dioStart,returnIsString: returnIsString);
      return WrapJson(r);
    } on AppException catch (e) {
      return WrapJson.fromMyServerError(e);
    }
  }
}
