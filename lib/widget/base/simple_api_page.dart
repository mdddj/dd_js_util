import 'package:dd_js_util/api/base.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///页面所需要的基本数据
abstract class MyBasePage<T extends BaseApi, S extends BaseModel<S>> extends ConsumerState {
  final BaseApi _api;
  final BaseModel<S> _model;

  MyBasePage(this._api, this._model);

  S? _pageData;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.microtask(() => _requestApi());
  }

  Future<void> _requestApi() async {
    final response = await _api.request();
    final _data = _model.fromJson(response);
    if (mounted) {
      setState(() {
        _pageData = _data;
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        onRefresh: () async {
          await _requestApi();
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                child: _loading ? CircularProgressIndicator() : SizedBox(),
              ),
            ),
            if (_pageData != null) ...renderBody(_pageData!)
          ],
        ));
  }

  List<Widget> renderBody(final S pageData);
}
