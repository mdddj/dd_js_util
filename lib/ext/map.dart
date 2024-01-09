
part of '../dd_js_util.dart';

extension MapExt2 on Map<String, Object> {
  Map<String, dynamic> get asMapDynamic {
    final map = <String, dynamic>{};
    forEach((key, value) {
      map[key] = value;
    });
    return map;
  }
}

extension MapExt3 on Map<dynamic, dynamic> {
  Map<String, dynamic> get asMapDynamic {
    final map = <String, dynamic>{};
    forEach((key, value) {
      map[key.toString()] = value.toString();
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

  WrapJson get json {
    return WrapJson(this);
  }


}

///递归处理函数
Map<String, dynamic> deepCastMap(Map<Object?, Object?> original) {
  final Map<String, dynamic> result = {};
  original.forEach((key, value) {
    if (value is Map<Object?, Object?>) {
      // 如果值是 Map 类型，递归调用 deepCastMap 函数。
      result['$key'] = deepCastMap(value);
    } else {
      // 否则，直接将值添加到结果 Map 中。
      result['$key'] = value;
    }
  });
  return result;
}

///freezed工具
class FreezedTool {
  static double? toDouble(dynamic v) => v is double ? v : (double.tryParse('$v'));

  static String toStringValue(dynamic v) => v is String ? v : '$v';
}

extension ObjectObjectExt on Map<Object?, Object?> {
  Map<String, dynamic> get asToDynamicMap {
    return deepCastMap(this);
  }
}

class WrapJson {
  final Map<String, dynamic> data;
  Map<String,dynamic> extMap = {};

  WrapJson(this.data);

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

  void print([VoidCallback? doSomeing]){
    doSomeing?.call();
    Logger().f(data);
  }

  Map<String,dynamic> getMap(String key,[Map<String,dynamic>? defaultValue]) {
    final v = data[key];
    if(v is Map<String,dynamic>){
      return v;
    }
    return defaultValue ?? <String,dynamic>{};
  }

  Map<String,dynamic> getMap2(String key1,String key2) {
    final value1 = data[key1];
    if(value1 is Map<String,dynamic>){
      final value2 = value1[key2];
      if(value2 is Map<String,dynamic>){
        return value2;
      }
    }
    return {};
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

  void ifNotNull(String key,ValueChanged<dynamic> value) {
    if(data[key]!=null){
      value.call(data[key]);
    }
  }
}


extension IMapEx<K,V> on IMap<K,V> {
  IMap<K,V> replace(K key,V value) {
    final Map<K,V> newMap = Map<K,V>.from(unlock);
    newMap[key] = value;
    return newMap.lock;
  }
}
