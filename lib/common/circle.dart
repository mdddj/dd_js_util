import 'package:flutter/widgets.dart';

import '../api/base.dart';

typedef BuildWidget = Widget Function(BoxConstraints size, Widget child);

extension CircleExt on Widget {
  @Doc(message: '将组件裁切成一个圆形')
  Widget get circleWidget {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10000),
      child: this,
    );
  }

  Widget width(double size) => SizedBox(width: size, child: this);

  Widget height(double size) => SizedBox(height: size, child: this);

  Widget sizeBox(double w, double h) => SizedBox(width: w, height: h, child: this);

  @Doc(message: '添加一个背景颜色')
  Widget bg(Color color) => Container(color: color, child: this);

  @Doc(message: '获取约束并处理子组件')
  Widget constraintBox(BuildWidget buildWidget) => LayoutBuilder(builder: (c, constraint) => buildWidget(constraint, this));

  @Doc(message: '圆角')
  Widget clipRadius(double radius)=> ClipRRect(borderRadius: BorderRadius.all(Radius.circular(radius)),child: this,);

}
