import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dart_type_model.freezed.dart';
part 'dart_type_model.g.dart';

extension DartTypeModelDynEx on dynamic {
  DartTypeModel get dartModel => DartTypeModel.createFrom(this);
}

extension JsonStringDataEx on JsonStringData {
  ///获取 json
  Map<String, dynamic>? tryGetMap({ValueChanged<Map<String, dynamic>>? run}) {
    if (jsonString.isEmpty) {
      return null;
    }
    try {
      final mapData = jsonDecode(jsonString);
      if (map is Map<String, dynamic>) {
        run?.call(mapData);
        return mapData;
      }
    } catch (_) {}
    return null;
  }
}

@freezed
class DartTypeModel with _$DartTypeModel {
  const DartTypeModel._();

  const factory DartTypeModel.string(String value) = StringData;

  const factory DartTypeModel.num(num value) = NumData;

  const factory DartTypeModel.bool(bool value) = BoolData;

  const factory DartTypeModel.list(List<dynamic> value) = ListData;

  const factory DartTypeModel.json(Map<String, dynamic> value) = JsonData;

  const factory DartTypeModel.dynamic(dynamic value) = DynamicData;

  const factory DartTypeModel.nil() = NullData;

  const factory DartTypeModel.jsonString(String jsonString) = JsonStringData;

  factory DartTypeModel.fromJson(Map<String, dynamic> json) => _$DartTypeModelFromJson(json);

  factory DartTypeModel.createFrom(dynamic data) {
    if (data == null) {
      return const DartTypeModel.nil();
    }
    var model = DartTypeModel.dynamic(data);
    if (data is String) {
      try {
        final dec = jsonDecode(data);
        if (dec is Map<String, dynamic>) {
          model = DartTypeModel.fromJson(dec);
        } else if (dec is List) {
          model = DartTypeModel.list(dec);
        }
      } catch (e) {
        model = DartTypeModel.string(data);
      }
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
