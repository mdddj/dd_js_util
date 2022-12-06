part of dd_js_util;
typedef BuildWidgetFun = Widget Function();
class FBuildWidget extends StatelessWidget {
  final BuildWidgetFun fun;
  const FBuildWidget(this.fun,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return fun.call();
  }
}
