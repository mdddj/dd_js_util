import 'package:flutter/material.dart';

import '../api/base.dart';
import '../common/edit_page.dart';
import '../common/w.dart';
import 'context.dart';

extension WidgetExt on Widget {
  @Doc(message: '移除水波纹')
  Widget get removeScrollViewSplash {
    return ScrollConfiguration(behavior: NoShadowScrollBehavior(), child: this);
  }

  @Doc(message: '添加内边距')
  Widget padding(double v) {
    return Padding(
      padding: EdgeInsets.all(v),
      child: this,
    );
  }

  @Doc(message: '默认内边距8')
  Widget get defaultPadding8 => padding(8);

  @Doc(message: '默认内边距8')
  Widget get defaultPadding12 => padding(12);

  @Doc(message: '底部外边距')
  Widget mb(double v) => Container(margin: EdgeInsets.only(bottom: v), child: this);

  @Doc(message: '左部外边距')
  Widget ml(double v) => Container(margin: EdgeInsets.only(left: v), child: this);

  @Doc(message: '右部外边距')
  Widget mr(double v) => Container(margin: EdgeInsets.only(right: v), child: this);

  @Doc(message: '顶部外边距')
  Widget mt(double v) => Container(margin: EdgeInsets.only(top: v), child: this);

  @Doc(message: '外边距-全部')
  Widget margin(double v) => Container(margin: EdgeInsets.all(v), child: this);

  @Doc(message: '边距')
  Widget marginOnly({double left = 0.0, double right = 0.0, double top = 0.0, double bottom = 0.0}) => Container(
        margin: EdgeInsets.only(top: top, right: right, bottom: bottom, left: left),
        child: this,
      );

  @Doc(message: '边距')
  Widget paddingOnly({double left = 0.0, double right = 0.0, double top = 0.0, double bottom = 0.0}) => Padding(
        padding: EdgeInsets.only(top: top, right: right, bottom: bottom, left: left),
        child: this,
      );

  Widget get toSliverWidget => SliverToBoxAdapter(
        child: this,
      );

  @Doc(message: '点击空白区域隐藏键盘的能力')
  Widget get editPage => EditPage(child: this);

  @Doc(message: '卡片组件')
  Widget get cardWidget => Card(
        child: this,
      );
  @Doc(message: '卡片组件')
  Widget cardWidget2(double eve) => Card(
        child: this,
        elevation: eve,
      );

  Widget get center => Center(
        child: this,
      );

  Widget get expanded => Expanded(child: this);

  Widget minHeight(double height) => ConstrainedBox(constraints: BoxConstraints(minHeight: height), child: this);
  Widget maxHeight(double height) => ConstrainedBox(constraints: BoxConstraints(maxHeight: height), child: this);
  Widget minWidth(double width) => ConstrainedBox(constraints: BoxConstraints(minWidth: width), child: this);
  Widget maxWidth(double width) => ConstrainedBox(constraints: BoxConstraints(maxWidth: width), child: this);

  Widget paddingWithObj(EdgeInsets edgeInsets) => Padding(padding: edgeInsets);

  Widget aspectRatio(double v) => AspectRatio(
        aspectRatio: v,
        child: this,
      );

  Route get materialRouter => MaterialPageRoute(builder: (_) => this);

  Widget border(BuildContext context, {BoxDecoration? decoration, Color? borderColor, BorderRadius? borderRadius}) {
    return Container(
      decoration: decoration ?? BoxDecoration(border: Border.all(color: borderColor ?? context.theme.dividerColor), borderRadius: borderRadius),
      child: this,
    );
  }

  Widget get topBorder {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey.shade100, width: 0.5))),
      child: this,
    );
  }

  @Doc(message: '长按点击事件')
  Widget longClick({required VoidCallback onLongPress}){
    return GestureDetector(onLongPress: onLongPress,child: this);
  }
}