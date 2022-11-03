part of dd_js_util;
mixin JsonWrapWidget<W extends StatefulWidget, T extends BaseApi, R extends WrapJson> on State<W> {
  bool loading = true;

  late WrapJson serverData;
  AppException? exception;

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return loadingWidget;
    }
    if (exception != null) {
      return buildErrorWidget(exception!);
    }
    return buildCoreWidget(serverData);
  }

  ///
  /// 构建正常结束的显示组件
  ///
  Widget buildCoreWidget(WrapJson data);

  /// 接口
  T get createApi;

  ///
  /// 判断是否需要显示错误信息组件
  /// [json] - 服务器数据,获取本地dio错误数据
  Widget buildErrorWidget(AppException exception) {
    return MyErrorWidget(exception: exception);
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() => Future.delayed(const Duration(milliseconds: 300), _loadData));
  }

  ///请求数据
  Future<void> _loadData() async {
    if (loading != true) {
      loading = true;
      exception = null;
      refreshUi();
    }
    try {
      final r = await createApi.request();
      serverData = r as R;
      loading = false;
      refreshUi();
    } catch (e) {
      exception = e as AppException;
      loading = false;
      refreshUi();
    }
  }

  ///刷新UI
  void refreshUi() {
    if (mounted) {
      setState(() {});
    }
  }

  ///加载中小部件
  Widget get loadingWidget {
    return const CupertinoActivityIndicator();
  }
}
