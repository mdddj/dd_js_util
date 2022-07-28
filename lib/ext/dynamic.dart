import '../api/base.dart';

extension DynamicExt on dynamic {
  Map<String, dynamic> get asMap => this as Map<String, dynamic>;

  int get asInt => this as int;

  double get asDouble => this as double;

  bool get asBool => this as bool;

  String get asString => this as String;

  @Doc(message: '将一个dynamic的值尝试转换成double类型,如果转换失败了, 则返回一个0.0的默认值')
  double get doubleValueIfNullReturnZero {
    switch (runtimeType) {
      case double:
        return this as double;
      case int:
        return asInt.toDouble();
      case String:
        return double.tryParse(asString) ?? 0.0;
      default:
        return 0.0;
    }
  }

  @Doc(message: '将一个dynamic的值尝试转换成double类型,如果转换失败了, 则返回null')
  double? get tryParseToDoubleValue {
    switch (runtimeType) {
      case double:
        return this as double;
      case int:
        return asInt.toDouble();
      default:
        return double.tryParse(asString);
    }
  }
}
