

import 'package:flutter/widgets.dart';

import '../api/base.dart';

extension CircleExt on Widget {

  @Doc(message: '将组件裁切成一个圆形')
  Widget get circleWidget {
    return ClipRRect(
      child: this,
      borderRadius: BorderRadius.circular(10000),
    );
  }
}