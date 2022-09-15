import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../ext/map.dart';
import '../util/log.dart';
import 'exception.dart';

const kProtobufContentType = 'application/x-protobuf';

enum HttpMethod { post, get, probuf }

const kMultipartFormDataHeader = 'multipart/form-data';

typedef ParseObject = BaseModel Function(Map<String, dynamic> originMap);

typedef DioStart = void Function(Dio dio,String url);

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
  @override
  String toString() {
    return "BaseModel: ${T.runtimeType}";
  }
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
      DioStart? dioStart}) async {
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
      final response = await dio.request(
        (_host + url),
        options: Options(
            method: methed,
            contentType: httpMethod == HttpMethod.probuf ? kProtobufContentType : contentTypeStr,
            headers: headers,
            responseType: responseType,
            requestEncoder: requestEncoder),
        queryParameters: nullParams == true ? null : data ?? params,
        data: bodyParams,
      );
      if (showDefaultLoading) {
        closeLoading();
      }

      if (response.statusCode == 200) {
        final data = response.data;
        return data;
      }
    } on DioError catch (e, s) {
      kLogErr("出现异常:${e.error.runtimeType}\n$s");
      if (showDefaultLoading) {
        closeLoading();
      }
      throw e.error as AppException;
    } catch (e,s) {
      kLogErr('error:$e\n$s');
      throw AppException.appError();
    }
    throw AppException.appError();
  }

  //请求方法,
  String get methed {
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
}

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
      DioStart? dioStart}) async {
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
          dioStart: dioStart);
      return WrapJson(r);
    } on AppException catch (e) {
      return WrapJson.fromMyServerError(e);
    }
  }
}
