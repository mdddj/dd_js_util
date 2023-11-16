import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart_type_model.g.dart';

part 'dart_type_model.freezed.dart';

extension DartTypeModelDynEx on dynamic {
  DartTypeModel get dartModel => DartTypeModel.createFrom(this);
}

@freezed
class DartTypeModel with _$DartTypeModel {
  const DartTypeModel._();

  factory DartTypeModel.string(String value) = StringData;

  factory DartTypeModel.num(num value) = NumData;

  factory DartTypeModel.bool(bool value) = BoolData;

  factory DartTypeModel.list(List<dynamic> value) = ListData;

  factory DartTypeModel.json(Map<String, dynamic> value) = JsonData;

  factory DartTypeModel.dynamic(dynamic value) = DynamicData;

  const factory DartTypeModel.nil() = NullData;

  factory DartTypeModel.fromJson(Map<String, dynamic> json) => _$DartTypeModelFromJson(json);

  factory DartTypeModel.createFrom(dynamic data) {
    if (data == null) {
      return const DartTypeModel.nil();
    }
    var model = DartTypeModel.dynamic(data);
    if (data is String) {
      model = DartTypeModel.string(data);
    } else if (data is Map<String, dynamic>) {
      model = DartTypeModel.json(data);
    } else if (data is List<dynamic>) {
      model = DartTypeModel.list(data);
    } else if (data is num) {
      model = DartTypeModel.num(data);
    } else if (data is bool) {
      model = DartTypeModel.bool(data);
    }
    return model;
  }

  static DartTypeModel freezedFromJson(dynamic v) => DartTypeModel.createFrom(v);
}

T tryString2Model<T>(String data, T Function(Map<String, dynamic> json) parse, T Function() orElse) {
  try {
    return parse(jsonDecode(data));
  } catch (_) {
    return orElse.call();
  }
}

T? decodeModelOrNull<T>(String jsonString, T Function(Map<String, dynamic> jsonMap) decode) {
  try {
    final map = jsonDecode(jsonString);
    return decode(map);
  } catch (e) {
    return null;
  }
}
