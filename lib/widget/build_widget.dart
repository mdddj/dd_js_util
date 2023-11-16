part of '../dd_js_util.dart';

typedef BuildWidgetFun = Widget Function();
class FBuildWidget extends StatelessWidget {
  final BuildWidgetFun fun;

  const FBuildWidget(this.fun, {super.key});

  @override
  Widget build(BuildContext context) {
    return fun.call();
  }
}
