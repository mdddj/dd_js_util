part of '../dd_js_util.dart';

extension DynamicExt on dynamic {
  Map<String, dynamic> get asMap => this as Map<String, dynamic>;

  int get asInt => this as int;

  double get asDouble => this as double;

  bool get asBool => this as bool;

  String get asString => this as String;

  @Doc(message: '将一个dynamic的值尝试转换成double类型,如果转换失败了, 则返回一个0.0的默认值')
  double get doubleValueIfNullReturnZero {
    if (this case double d) {
      return d;
    } else if (this case int d) {
      return d.toDouble();
    } else if (this case String s) {
      return double.tryParse(s) ?? 0;
    }
    return 0;
  }

  @Doc(message: '将一个dynamic的值尝试转换成double类型,如果转换失败了, 则返回null')
  double? get tryParseToDoubleValue {
    if (this case double d) {
      return d;
    } else if (this case int d) {
      return d.toDouble();
    } else if (this case String s) {
      return double.tryParse(s);
    }
    return null;
  }

  @Doc(message: "将一个dynamic转换成一个数组,如果不是数组类型,则返回一个空数组")
  List<dynamic> get asList {
    return this is List<dynamic> ? this as List<dynamic> : <dynamic>[];
  }
}
