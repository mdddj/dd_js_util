import 'package:logger/logger.dart';

import '../api/base.dart';

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

  void print(){
    Logger().wtf(data);
  }
}
