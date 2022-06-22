
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../api/base.dart';

///添加系列弹窗支持
mixin DialogSupport<T extends StatefulWidget> on State<T> {

  @Doc(message: "显示loading弹窗")
  void pageLoading(String loading) {
    SmartDialog.showLoading(msg: loading);
  }

  @Doc(message: "显示一个error类型弹窗")
  void pageErrorDialog(String msg){
    SmartDialog.dismiss(tag: "error-dialog");
    SmartDialog.show(builder: (context){
      return AlertDialog(
        content: SingleChildScrollView(child: Column(
          children: [
            const Center(
              child: Icon(Icons.error,color: Colors.red,),
            ),
            const SizedBox(height: 12,),
            Text(msg),
          ],
        )),
      );
    },tag: "error-dialog");
  }
  
  @Doc(message: "关闭loading弹窗")
  void pageCloseLoadingDialog(){
    SmartDialog.dismiss();
  }

  @Doc(message: "关闭error弹窗")
  void pageCloseErrorDialog(){
    SmartDialog.dismiss(tag: "error-dialog");
  }
  
  @Doc(message: "简单toast弹窗")
  void toast(String msg) {
    SmartDialog.showToast(msg);
  }
  
  @Doc(message: "日志打印")
  void log(dynamic msg) {
    debugPrint(msg);
  }
}