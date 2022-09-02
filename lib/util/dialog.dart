

import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../api/base.dart';

@Doc(message: "简单toast弹窗")
void showToast(String msg) {
  SmartDialog.showToast(msg);
}

@Doc(message: '显示一个iOS弹窗')
void showIosDialog(String msg) {
  SmartDialog.show(builder: (_){
    return CupertinoAlertDialog(
      content: Text(msg),
    );
  });
}