part of dd_js_util;

typedef LB = BaseApiDialogBuilder;

class BaseApiDialogBuilder {
  static void show<M, A extends BaseApi>(A api, {required ValueChanged<M> successResult, R? params}) {
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
          );
        },
        tag: tag,
        maskColor: Colors.white30);
  }
}

class BaseApiDialog<M, A extends BaseApi> extends ConsumerStatefulWidget {
  final void Function(M model) result;
  final R? params;
  final A api;

  const BaseApiDialog({Key? key, required this.result, this.params, required this.api}) : super(key: key);

  @override
  ConsumerState<BaseApiDialog<M, A>> createState() => _LoadingApiDialogState<M, A>();
}

class _LoadingApiDialogState<M, A extends BaseApi> extends ConsumerState<BaseApiDialog<M, A>>
    with ApiMixin<M, A, BaseApiDialog<M, A>> {
  @override
  Widget builder(BuildContext context, M data) {
    return Container(
      alignment: Alignment.center,
      child: const CupertinoActivityIndicator(),
    );
  }

  @override
  void responseModelHandle(M model) {
    super.responseModelHandle(model);
    widget.result.call(model);
  }

  @override
  R get requestParams => widget.params ?? super.requestParams;

  @override
  Widget builderLoadingWidget() {
    return const SizedBox();
  }

  @override
  Widget builderErrorWidget() {
    return const SizedBox();
  }

  @override
  void onError(AppException exception) {
    super.onError(exception);
    SmartDialog.dismiss(tag: 'loading-dialog-api');
    toast(exception.getMessage);
  }

  @override
  A get api => widget.api;
}

enum PageState { loading, hasData, error }

mixin ApiMixin<M, T extends BaseApi, S extends StatefulWidget> on State<S> {
  T get api;

  late PageState pageState = initModel != null ? PageState.hasData : PageState.loading;
  late M? stateModel = initModel;

  @override
  void initState() {
    super.initState();
    delayFunction(startRequest, 0);
  }

  @Doc(message: '开始发起请求')
  Future<void> startRequest() async {
    if (igRequest) {
      return;
    }
    try {
      if (pageState != PageState.hasData && pageState != PageState.loading) {
        setState(() => pageState = PageState.loading);
      }
      final r = await api.request(requestParams);
      responseModelHandle(r);
      setState(() => pageState = PageState.hasData);
    } on AppException catch (exception) {
      onError(exception);
      setState(() => pageState = PageState.error);
    }
  }

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
        return builderErrorWidget();
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

  Widget builderErrorWidget() {
    return const Text('error');
  }

  void onError(AppException exception) {}
}
