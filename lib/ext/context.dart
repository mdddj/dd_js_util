

import 'package:dd_js_util/api/base.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {

  @Doc(message: '隐藏键盘')
  void hideKeyBoard(){
    FocusScope.of(this).requestFocus(FocusNode());
  }

}