part of dd_js_util;

mixin WidgetBodyBuildMixin {
  ///构建主显示的小部件
  Widget buildCoreBodyWidget(BuildContext context, [WidgetRef? ref]);
}

mixin SimplePageUtilMixin<T extends StatefulWidget> on State<T> {

  bool _widgetLoading = false;
  set widgetLoading(bool v) {
    noticeUiRefresh(() {
      _widgetLoading = v;
    });
  }
  bool get widgetLoading => _widgetLoading;

  void noticeUiRefresh(VoidCallback call) {
    call.call();
    if (mounted) {
      setState(() {});
    }
  }



}
