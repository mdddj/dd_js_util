import 'package:flutter/material.dart';

import '../dd_js_util.dart';

mixin CatchBaseMixin<S> on State {
  S? cache;

  Future<S> get loadCatchModel;

  @override
  void initState() {
    super.initState();
    delayFunction(_getMode);
  }

  Future<void> _getMode() async {
    final r = await loadCatchModel;
    setState(() {
      cache = r;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (cache == null) {
      return const Scaffold();
    }
    return buildWidget(cache as S);
  }

  Widget buildWidget(S cache);

  //重新加载
  void reloadCache() {
    _getMode();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}
