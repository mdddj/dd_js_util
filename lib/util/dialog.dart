

import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '../api/base.dart';

@Doc(message: "简单toast弹窗")
void showToast(String msg) {
  SmartDialog.showToast(msg);
}