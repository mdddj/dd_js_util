import 'package:flutter/material.dart';

import '../dd_js_util.dart';

///[T]是页面组件类型,[S]是缓存数据模型。
///
///原来写成 `on State`(裸泛型),约束会被推断成[State<StatefulWidget>],
///导致任何 `State<具体组件>` 都无法混入这个mixin。
mixin CatchBaseMixin<T extends StatefulWidget, S> on State<T> {
  S? cache;

  ///加载失败时的异常,子类可以据此渲染错误态
  Object? cacheError;

  Future<S> get loadCatchModel;

  @override
  void initState() {
    super.initState();
    delayFunction(_getMode);
  }

  Future<void> _getMode() async {
    try {
      final r = await loadCatchModel;
      setState(() {
        cache = r;
        cacheError = null;
      });
    } catch (e) {
      //加载失败时不能只留一个空白Scaffold,记录异常交给子类处理
      setState(() {
        cacheError = e;
      });
      onCacheError(e);
    }
  }

  ///加载失败回调,默认不处理
  void onCacheError(Object error) {}

  @override
  Widget build(BuildContext context) {
    final error = cacheError;
    if (error != null) {
      return buildCacheErrorWidget(error);
    }
    if (cache == null) {
      return const Scaffold();
    }
    return buildWidget(cache as S);
  }

  ///加载失败时的界面,默认和加载中一样是空Scaffold
  Widget buildCacheErrorWidget(Object error) => const Scaffold();

  Widget buildWidget(S cache);

  //重新加载
  void reloadCache() {
    setState(() {
      cacheError = null;
    });
    _getMode();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}
