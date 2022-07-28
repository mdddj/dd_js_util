import 'package:flutter/material.dart';

import '../api/base.dart';
import '../common/edit_page.dart';
import '../common/w.dart';

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

  Widget get toSliverWidget => SliverToBoxAdapter(
        child: this,
      );

  @Doc(message: '点击空白区域隐藏键盘的能力')
  Widget get editPage => EditPage(child: this);
}
