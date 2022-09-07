import 'package:logger/logger.dart';

import '../api/base.dart';
import '../api/exception.dart';

extension MapExt2 on Map<String, Object> {
  Map<String, dynamic> get asMapDynamic {
    final map = <String, dynamic>{};
    forEach((key, value) {
      map[key] = value;
    });
    return map;
  }
}

extension MapExt on Map<String, dynamic> {
  @Doc(message: 'List<dynamic> to List<String>')
  List<String> mapValueGetWithListString(String key) {
    return List<String>.from(([key]).map((e) => e.toString())).toList();
  }

  @Doc(message: 'get List<dynamic>')
  List<dynamic> getDynamicList(String key) {
    return List<dynamic>.from(([key]).map((e) => e)).toList();
  }

  Map<String, Object> get asMapObject {
    final map = <String, Object>{};
    forEach((key, value) {
      map[key] = value;
    });
    return map;
  }


}

class WrapJson {
  final Map<String, dynamic> data;

  WrapJson(this.data);

  factory WrapJson.fromMyServerError(AppException exception){
    return WrapJson({
      'state': exception.code,
      'message': exception.message
    });
  }

  String getString(String key, {String defaultValue = ''}) {
    final v = data[key];
    if (v == null) {
      return defaultValue;
    }
    if (v is String) {
      return v;
    } else {
      return v.toString();
    }
  }

  int getInt(String key, {int defaultValue = 0}) {
    final a = data[key];
    if (a == null) {
      return defaultValue;
    }
    if (a is int) {
      return a;
    } else if (a is String) {
      return int.tryParse(a) ?? defaultValue;
    } else if (a is double) {
      return a.toInt();
    }
    return defaultValue;
  }


  List<dynamic> getListValue(String key) {
    final value = data[key];
    if(value == null){
      return [];
    }
    if(value is List<dynamic>){
      return value;
    }
    return [];
  }

  dynamic getValue(String key){
    return data[key];
  }

  void print(){
    Logger().wtf(data);
  }



  ///---- 一些扩展工具类
  bool get isSuccess {
    return getInt('state',defaultValue: 0) == 200;
  }

  String get message {
    return getString('message',defaultValue: '未知消息');
  }

  dynamic get resultApiData {
    return getValue('data');
  }
}
