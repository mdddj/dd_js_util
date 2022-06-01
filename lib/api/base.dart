import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

enum HttpMethod { post, get }

typedef ParseObject = BaseModel Function(Map<String, dynamic> originMap);

//list的扩展
extension ListExt on List<dynamic> {

  @Doc(message: "将一个List<dynamic>数组转成对应的数组模型")
  List<T> parseObj<T>(ParseObject covert) {
    return List<T>.from(map((e) => covert(e))).toList();
  }
}

//动态类型的扩展
extension DynamicExt on dynamic {
  @Doc(message: "将一个dynamic转换成一个数组,如果不是数组类型,则返回一个空数组")
  List<dynamic> get asList {
    return this is List<dynamic> ? this as List<dynamic> : <dynamic>[];
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
  static late String iP;
  static String host = 'http://$iP:8888';

  set ip(String ip) => iP = ip;

  final String url;
  final HttpMethod httpMethod;
  final Map<String, dynamic> params = <String, dynamic>{};

  static Dio? dio;

  BaseApi(this.url, {this.httpMethod = HttpMethod.get});

  @Doc(message: "向服务器发起http请求")
  Future<dynamic> request({bool showSuccessMsg = true, bool showErrorMsg = true, String? loadingText}) async {
    try {
      showLoading(loadingText: loadingText);
      final response = await getDio().request(host + url, options: Options(method: methed), queryParameters: params, data: params);
      closeLoading();
      if (response.statusCode == 200) {
        final data = response.data;
        return data;
      }
    } on DioError catch (e) {
      closeLoading();
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
