import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'app_local_setting_model.g.dart';

part 'app_local_setting_model.freezed.dart';

extension ThemeModeEx on ThemeMode {
  ///根据主题获取下标
  int get getThemeModeIndex {
    switch (this) {
      case ThemeMode.system:
        return 0;
      case ThemeMode.light:
        return 1;
      case ThemeMode.dark:
        return 2;
    }
  }
}

extension AppLocalSettingModelEx on AppLocalSettingModel {
  ///获取系统主题mode
  ThemeMode get getThemeMode {
    switch (themeModel) {
      case 0:
        return ThemeMode.system;
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
    }
    return ThemeMode.system;
  }


}

///选择的模式
/// [0] - 跟随系统 (默认)
/// [1] - 亮色模式
/// [2] - 深色模式
@HiveType(typeId: 88)
@freezed
class AppLocalSettingModel with _$AppLocalSettingModel {
  const AppLocalSettingModel._();

  const factory AppLocalSettingModel(
      {@HiveField(0, defaultValue: 0) @Default(0) int themeIndex,
    @HiveField(1, defaultValue: 0) @Default(0) int themeModel,
  }) = _AppLocalSettingModel;

  factory AppLocalSettingModel.fromJson(Map<String, dynamic> json) => _$AppLocalSettingModelFromJson(json);
}
