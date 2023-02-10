

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'app_local_setting_model.g.dart';
@HiveType(typeId: 88)
class AppLocalSettingModel extends HiveObject {
  ///主题下标
  @HiveField(0)
  int themeIndex;

  ///选择的模式
  /// [0] - 跟随系统 (默认)
  /// [1] - 亮色模式
  /// [2] - 深色模式
  @HiveField(1)
  int themeModel;

  AppLocalSettingModel({required this.themeIndex, this.themeModel = 0});

  factory AppLocalSettingModel.defaultSetting() => AppLocalSettingModel(themeIndex: 0, themeModel: 0);

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

  @override
  String toString() {
    return 'themeIndex  is $themeIndex , themeModel is $themeModel';
  }
}