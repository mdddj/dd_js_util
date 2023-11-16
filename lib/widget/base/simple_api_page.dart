part of '../../dd_js_util.dart';

typedef WidgetBuilder = Widget Function();

///页面异常
class PageException implements Exception {
  final String msg;

  const PageException(this.msg);
}

///页面所需要的基本数据
///
mixin MyBasePage<T extends BaseApi, S, W extends StatefulWidget, R> on State<W> {
  S? _pageData;
  bool _loading = true;
  bool _empty = false;
  PageException? exception;

  @override
  void initState() {
    super.initState();
    Future.microtask(_requestApi);
  }

  S get pageData {
    return _pageData!;
  }

  @Doc(message: '加载中')
  Future<void> _requestApi() async {
    if (mounted) {
      setState(() {
        exception = null;
      });
    }
    try {
      final response = await api.request(
         const RequestParams(showDefaultLoading: false)
      );
      if (response == null) {
        if (mounted) {
          setState(() {
            _empty = true;
            _loading = false;
          });
        }
        return;
      }
      final vData = responseHandle(response);
      if (mounted) {
        setState(() {
          _pageData = vData;
          _loading = false;
        });
        loadedEnd();
      }

      ///
    } on BaseApiException catch (e) {
      if (mounted) {
        setState(() {
          _empty = true;
          _loading = false;
          exception = PageException(getErrorMessage(e));
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _empty = true;
          _loading = false;
          exception = const PageException("网络繁忙,请稍后重试");
        });
      }
    }
  }

  String getErrorMessage(BaseApiException exception);

  @override
  Widget build(BuildContext context) {
    return buildCoreWidget(() {
      return renderBody(_pageData as S);
    });
  }

  Widget buildCoreWidget(WidgetBuilder builder) {
    if (_loading) {
      return loadingWidget;
    }
    if (exception != null) {
      return  buildException ?? Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            exception!.msg,
            style: context.kTextTheme.bodyLarge?.copyWith(color: context.colorScheme.error),
          ).center.marginOnly(top: 20).click(refresh),
          Gap().h(20),
          OutlinedButton(onPressed: refresh, child: const Text("刷新试试"))
        ],
      );
    }
    if (_empty) {
      return emptyWidget;
    }
    if (_pageData != null) {
      return builder.call();
    }
    return const SizedBox();
  }

  Widget get loadingWidget => const CupertinoActivityIndicator().center;

  Widget get emptyWidget => const Text('空空如也').center;

  Widget renderBody(final S pageData);

  T get api;

  @Doc(message: '转换为所需要的模型')
  S? responseHandle(final R response);

  @Doc(message: '抛出页面异常')
  void throwPageException(String msg) {
    if (mounted) {
      setState(() {
        exception = PageException(msg);
      });
    }
  }

  void loadedEnd() {}

  Future<void> refresh() async {
    await _requestApi();
  }

  Widget? get buildException => null;
}
