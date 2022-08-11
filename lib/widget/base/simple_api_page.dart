import 'package:flutter/cupertino.dart';

import '../../api/base.dart';
import '../../ext/widget.dart';

///页面所需要的基本数据
mixin MyBasePage<T extends BaseApi, S,W extends StatefulWidget,R> on State<W> {
  S? _pageData;
  bool _loading = true;
  bool _empty = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(_requestApi);
  }

  @Doc(message: '加载中')
  Future<void> _requestApi() async {

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
    if (_loading) {
      return loadingWidget;
    }
    if(_empty){
      return emptyWidget;
    }
    if (_pageData != null) {
      return renderBody(_pageData as S);
    }
    return const SizedBox();
  }

  Widget get loadingWidget => const CupertinoActivityIndicator().center;
  Widget get emptyWidget => const Text('空空如也').center;

  Widget renderBody(final S pageData);

  T get api;

  @Doc(message: '转换为所需要的模型')
  S responseHandle(final R response);
}
