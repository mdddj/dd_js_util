import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

enum HttpMethod { post, get }


const kMultipartFormDataHeader = 'multipart/form-data';

typedef ParseObject = BaseModel Function(Map<String, dynamic> originMap);

//list的扩展
extension ListExt on List<dynamic> {
  @Doc(message: "将一个List<dynamic>数组转成对应的数组模型")
  List<T> parseObj<T>(ParseObject covert) {
    return List<T>.from(map((e) => covert(e))).toList();
  }

  @Doc(message: '将List<dynamic>转成List<String类型>')
  List<String> get asStringList {
    return List<String>.from(map((e) => e.toString())).toList();
  }
}

//动态类型的扩展
extension DynamicExt on dynamic {
  @Doc(message: "将一个dynamic转换成一个数组,如果不是数组类型,则返回一个空数组")
  List<dynamic> get asList {
    return this is List<dynamic> ? this as List<dynamic> : <dynamic>[];
  }

  @Doc(message: "对象转换")
  T parseTo<T extends BaseModel>(ParseObject parse) {
    return parse(this) as T;
  }
}


//组件扩展
extension WidgetExt on Widget {
  @Doc(message: "给组件添加点击事件")
  Widget click(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }
}

@Doc(message: "简单toast弹窗")
void toast(String msg) {
  SmartDialog.showToast(msg);
}

abstract class BaseModel<T> {
  T fromJson(Map<String, dynamic> map);
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

  @Doc(message: "向服务器发起http请求")
  Future<dynamic> request({bool showErrorMsg = true, String? loadingText, String contentType = "", Map<String, dynamic>? headers,bool showDefaultLoading = true}) async {
    try {

      if(showDefaultLoading){
        showLoading(loadingText: loadingText);
      }

      final dio = getDio();
      dio.interceptors.addAll(intrtceptors);
      final response = await dio.request(
        _host + url,
        options: Options(method: methed, contentType: contentType.isNotEmpty ? contentType : null, headers: headers),
        queryParameters: params,
        data: formData.files.isNotEmpty ? formData : params,
      );
      if(showDefaultLoading){
        closeLoading();
      }

      if (response.statusCode == 200) {
        final data = response.data;
        return data;
      }
    } on DioError catch (e) {
      if(showDefaultLoading){
        closeLoading();
      }
      switch (e.error) {
        case DioErrorType.connectTimeout:
          break;
        default:
          toast(e.message);
          break;
      }
      return null;
    }
    return null;
  }

  //请求方法,
  String get methed => getMethod();

  String getMethod() {
    switch (httpMethod) {
      case HttpMethod.get:
        return 'GET';
      default:
        return "POST";
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
}

/// 主动显示的注解
class Doc {
  final String message;

  const Doc({required this.message});
}
