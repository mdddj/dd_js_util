
import 'package:flutter/material.dart';

import '../api/base.dart';

extension NavigatorExt on NavigatorState {


  @Doc(message: '导航到这个页面')
  Future<T?> navToWidget<T>({required Widget to}) async {
    return await push<T>(MaterialPageRoute(builder: (_)=>to));
  }

}