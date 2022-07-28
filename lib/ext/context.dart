import 'package:flutter/material.dart';

import '../api/base.dart';

extension ContextExt on BuildContext {
  @Doc(message: '隐藏键盘')
  void hideKeyBoard() {
    FocusScope.of(this).requestFocus(FocusNode());
  }

  @Doc(message: '主题')
  TextTheme get kTextTheme => Theme.of(this).textTheme;

  @Doc(message: '主题2')
  TextTheme get textTheme => Theme.of(this).textTheme;

  @Doc(message: '设备屏幕宽度')
  double get screenWidth => MediaQuery.of(this).size.width;

  @Doc(message: '设备屏幕高度')
  double get screenHeight => MediaQuery.of(this).size.height;

  @Doc(message: '适配底部')
  double get paddingBottom => MediaQuery.of(this).padding.bottom;

  @Doc(message: '设备屏幕宽度')
  double get paddingTop => MediaQuery.of(this).padding.top;
}
