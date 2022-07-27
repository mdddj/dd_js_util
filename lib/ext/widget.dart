import 'package:dd_js_util/api/base.dart';
import 'package:flutter/material.dart';

import '../common/w.dart';

extension WidgetExt on Widget {

  @Doc(message: '移除水波纹')
  Widget get removeScrollViewSplash {
    return ScrollConfiguration(behavior: NoShadowScrollBehavior(), child: this);
  }
}
