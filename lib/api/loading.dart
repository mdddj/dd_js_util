part of '../dd_js_util.dart';

typedef LB = BaseApiDialogBuilder;

typedef BaseApiDialogErrorHandle = String Function(Object exception, Object errorStack);

class BaseApiDialogBuilder {
  static void show<M, A extends BaseApi<M>>(A api,
      {required ValueChanged<M> successResult,
      R? params,
      bool enableLog = false,
      Widget? loadingWidget,
      BaseApiDialogErrorHandle? errorHandle,
      Color? maskColor,
      Duration? animationTime}) {
    const tag = 'loading-dialog-api';
    SmartDialog.show(
        builder: (ctx) {
          return BaseApiDialog<M, A>(
            result: (M r) {
              successResult.call(r);
              SmartDialog.dismiss(tag: tag);
            },
            params: params,
            api: api,
            enableLog: enableLog,
            loadingWidget: loadingWidget,
            error: errorHandle,
          );
        },
        tag: tag,
        clickMaskDismiss: false,
        animationType: SmartAnimationType.centerFade_otherSlide,
        maskColor: maskColor ?? Colors.white30,
        animationTime: animationTime);
  }
}


class BaseApiDialog<M, A extends BaseApi<M>> extends ConsumerStatefulWidget {
  final void Function(M model) result;
  final R? params;
  final A api;
  final bool enableLog;
  final Widget? loadingWidget;
  final BaseApiDialogErrorHandle? error;

  const BaseApiDialog(
      {super.key,
      required this.result,
      this.params,
      required this.api,
      this.enableLog = false,
      this.loadingWidget,
      this.error});

  @override
  ConsumerState<BaseApiDialog<M, A>> createState() => _LoadingApiDialogState<M, A>();
}

class _LoadingApiDialogState<M, A extends BaseApi<M>> extends ConsumerState<BaseApiDialog<M, A>>
    with ApiMixin<M, A, BaseApiDialog<M, A>> {
  void _log(dynamic msg) {
    if (widget.enableLog) {
      debugPrint('$msg');
    }
  }

  @override
  Widget builder(BuildContext context, M data) {
    _log('builder执行了 $data  $pageState');
    return const SizedBox.shrink();
  }

  @override
  void responseModelHandle(M model) {
    _log("response model handle : $model");
    super.responseModelHandle(model);
    widget.result.call(model);
  }

  @override
  R get requestParams => widget.params ?? super.requestParams;

  @override
  Widget builderLoadingWidget() {
    _log('builderLoadingWidget...');
    return widget.loadingWidget ?? const SizedBox();
  }

  @override
  Widget builderErrorWidget(Object error) {
    _log('builderErrorWidget...');
    return const SizedBox();
  }

  @override
  void onError(Object exception, Object s) {
    super.onError(exception, s);
    SmartDialog.dismiss(tag: 'loading-dialog-api');
    toast(widget.error?.call(exception, s) ?? exception.toString());
  }

  @override
  A get api => widget.api;
}

enum PageState { loading, hasData, error }

mixin ApiMixin<M, T extends BaseApi<M>, S extends StatefulWidget> on State<S> {
  T get api;

  late PageState pageState = initModel != null ? PageState.hasData : PageState.loading;
  late M? stateModel = initModel;

  bool get showLoading => false;

  Object? _error;

  @override
  void initState() {
    super.initState();
    delayFunction(startRequest, 0);
  }

  void requestBefore() {}

  void requestEnd(bool isError) {}

  @Doc(message: '开始发起请求')
  Future<void> startRequest() async {
    requestBefore();
    if (igRequest) {
      requestEnd(false);
      return;
    }
    setState(() {
      _error = null;
    });
    try {
      if (pageState != PageState.hasData && pageState != PageState.loading) {
        setState(() => pageState = PageState.loading);
      }
      final r = await api.request(requestParams);
      responseModelHandle(r);
      setState(() => pageState = PageState.hasData);
      requestEnd(false);
    } catch (e, s) {
      if (showLogs) {
        Logger().e("请求失败.", error: e, stackTrace: s);
      }
      _error = e;
      requestEnd(true);
      onError(e, s);
      setState(() => pageState = PageState.error);
    }
  }

  bool get showLogs => false;

  @Doc(message: '请求配置')
  R get requestParams => const R(showDefaultLoading: false);

  @Doc(message: '处理接口返回的数据')
  void responseModelHandle(M model) {
    setState(() {
      stateModel = model;
    });
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (pageState) {
      case PageState.loading:
        return builderLoadingWidget();
      case PageState.hasData:
        return builder(context, stateModel as M);
      case PageState.error:
        return builderErrorWidget(_error!);
    }
  }

  M? get initModel => null;

  bool get igRequest => false;

  Widget builder(BuildContext context, M data);

  Widget builderLoadingWidget() {
    return Scaffold(
      body: const CircularProgressIndicator().center,
    );
  }

  Widget builderErrorWidget(Object error) {
    return const Text('error');
  }

  void onError(Object exception, Object s) {}
}
