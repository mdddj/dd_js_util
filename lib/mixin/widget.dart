import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin WidgetBodyBuildMixin  {
  ///构建主显示的小部件
  Widget buildCoreBodyWidget(BuildContext context,[WidgetRef? ref]);
}