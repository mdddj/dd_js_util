

import 'package:flutter/material.dart';

extension WidgetExt on Widget {

  /// 高度扩展
  Widget height(double hei) {
    return SizedBox(
      height: hei,
      child: this,
    );
  }

}