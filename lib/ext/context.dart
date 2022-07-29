import 'package:flutter/material.dart';

import '../api/base.dart';

extension ContextExt on BuildContext {
  @Doc(message: '隐藏键盘')
  void hideKeyBoard() {
    FocusScope.of(this).requestFocus(FocusNode());
  }

  @Doc(message: '主题')
  TextTheme get kTextTheme => theme.textTheme;

  @Doc(message: '主题2')
  TextTheme get textTheme => theme.textTheme;


  ThemeData get theme => Theme.of(this);


  @Doc(message: '设备屏幕宽度')
  double get screenWidth => MediaQuery.of(this).size.width;

  @Doc(message: '设备屏幕高度')
  double get screenHeight => MediaQuery.of(this).size.height;

  @Doc(message: '适配底部')
  double get paddingBottom => MediaQuery.of(this).padding.bottom;

  @Doc(message: '设备屏幕宽度')
  double get paddingTop => MediaQuery.of(this).padding.top;

  ColorScheme get colorScheme => theme.colorScheme;
  Color get backgroundColor => theme.backgroundColor;
  Color get cardColor => theme.cardColor;
  Color? get appbarBackgroundColor => theme.appBarTheme.backgroundColor;
}
