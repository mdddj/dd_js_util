import 'package:flutter/cupertino.dart';

import '../../api/base.dart';
import '../../ext/context.dart';
import '../../ext/widget.dart';
typedef WidgetBuilder = Widget Function();
///页面异常
class PageException implements Exception {
  final String msg;
  const PageException(this.msg);
}
///页面所需要的基本数据
mixin MyBasePage<T extends BaseApi, S,W extends StatefulWidget,R> on State<W> {
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

    if(mounted){
      setState(() {
        exception = null;
      });
    }
    try{
      final response = await api.request(showDefaultLoading: false);
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
      }
    }catch(e,s){
      debugPrint('出错了:$e,\n$s');
      if(mounted){
        setState(() {
          _empty = true;
          _loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildCoreWidget((){
      return renderBody(_pageData as S);
    });
  }

  Widget buildCoreWidget(WidgetBuilder builder){
    if (_loading) {
      return loadingWidget;
    }
    if(exception != null){
      return Text('服务器出现了一些小问题:${exception!.msg}',style: context.kTextTheme.bodyText1?.copyWith(color: context.colorScheme.error),);
    }
    if(_empty){
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
    if(mounted){
      setState(() {
        exception = PageException(msg);
      });
    }
  }

}
