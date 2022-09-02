import 'package:flutter/cupertino.dart';
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

  ThemeData get kTheme => Theme.of(this);

  @Doc(message: '设备屏幕宽度')
  double get screenWidth => MediaQuery.of(this).size.width;

  @Doc(message: '设备屏幕高度')
  double get screenHeight => MediaQuery.of(this).size.height;

  @Doc(message: '适配底部')
  double get paddingBottom => MediaQuery.of(this).padding.bottom;

  @Doc(message: '设备屏幕宽度')
  double get paddingTop => MediaQuery.of(this).padding.top;

  double get kBodyHeight => screenHeight - paddingTop - kToolbarHeight;

  ColorScheme get colorScheme => theme.colorScheme;

  Color get backgroundColor => theme.backgroundColor;

  Color get highlightColor => theme.highlightColor;

  Color get cardColor => theme.cardColor;

  Color get primaryColor => theme.primaryColor;

  Color? get iconColor => theme.iconTheme.color;

  Color? get appbarBackgroundColor => theme.appBarTheme.backgroundColor;

  bool get isDarkModel => Theme.of(this).brightness == Brightness.dark;

  @Doc(message: '导航跳转')
  Future<T?> navToWidget<T>({required Widget to}) async {
    return await Navigator.push<T>(this, MaterialPageRoute(builder: (_) => to));
  }

  NavigatorState get nav => Navigator.of(this);

  @Doc(message: '回退页面')
  void pop() => Navigator.pop(this);

  @Doc(message: '显示一个简单的iOS提示弹窗')
  Future<void> showSimpleDialog(String tip,{String? title,String? cancelText}) async {
    await showCupertinoDialog(
        context: this,
        builder: (c) {
          return CupertinoAlertDialog(
            title:  Text(title ?? "提示"),
            content: Text(tip),
            actions: [
              CupertinoDialogAction(onPressed: this.pop, child: Text(cancelText??'Cancel'))
            ],
          );
        },);
  }

  @Doc(message: '底部弹窗')
  Future<void> bottomSheet<T>({required Widget child}) async {
    return await showModalBottomSheet(context: this, builder: (c) => child);
  }
}
