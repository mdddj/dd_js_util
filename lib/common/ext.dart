

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

extension ListExt on List<dynamic> {

  /// list转模型
  /// [data] - 待装换的列表
  /// [covert] - 转换函数
  List<T> covertFun<T>(List<dynamic> data,T covert(dynamic object)) {
    return List<T>.from(data.map((e) => covert(e))).toList();
  }

}