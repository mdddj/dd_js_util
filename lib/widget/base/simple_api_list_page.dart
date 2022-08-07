import 'dart:async';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';

import '../../api/base.dart';
import '../../ext/widget.dart';

///页面所需要的基本数据
mixin MyBasePageList<T extends BaseApi, S, W extends StatefulWidget, A> on State<W> {
  List<S> _pageData = []; //页面所需要的数组数据
  bool _loading = true; //加载中
  PageListException? pageListException; //页面异常
  int _page = 1; //第几页

  List<S>? get data => _pageData;

  @override
  void initState() {
    super.initState();
    Future.microtask(_requestApi);
  }

  @Doc(message: '接口')
  T get api;

  @Doc(message: '转换数据')
  List<S> parseDynamicData(final A data);

  @Doc(message: '执行请求')
  FutureOr _requestApi({T? vApi}) async {
    try {
      final response = await (vApi ?? api).request(showDefaultLoading: false);
      if (response == null) {
        throw PageListException.nullResponse();
      }
      final vData = parseDynamicData(response as A);
      if (mounted && vData.isNotEmpty) {
        _pageData.addAll(vData);
        setState(() {
          _pageData = List.from(_pageData);
          _loading = false;
        });
      }
      if(vData.isEmpty){
      }
    } on PageListException catch (e) {
      debugPrint('>>>$e');
      if (mounted) {
        setState(() {
          _loading = false;
          pageListException = e;
        });
      }
    }
  }

  @Doc(message: '加载下一页')
  FutureOr _nextPage({int? page}) async {
    final nextPage = page ?? (_page + 1);
    setState(() {
      _page = nextPage;
    });
    final result = await _requestApi(vApi: nextPageLoad(nextPage));
    return result;
  }

  Widget get loadingWidget {
    return Container(
      height: 100,
      alignment: Alignment.center,
      child: const CircularProgressIndicator(),
    );
  }

  List<Widget> get headerChildren => [];

  List<Widget> get footChildren => [];

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        onRefresh: () async {
          setState(() {
            _pageData = [];
            _loading = true;
          });
          return await _nextPage(page: 1);
        },
        onLoad: _nextPage,
        header: MaterialHeader(),
        footer: MaterialFooter(),
        refreshOnStart: true,
        child: CustomScrollView(
          slivers: [
            ...headerChildren,
            // SliverToBoxAdapter(
            //   child: AnimatedSwitcher(
            //     duration: const Duration(milliseconds: 300),
            //     child: _loading ? loadingWidget : const SizedBox(),
            //   ),
            // ),
            PageExceptionWidget(
              exception: pageListException,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) => renderCell(context, index, _pageData[index]), childCount: _pageData.length)),
            ...footChildren
          ],
        ));
  }

  @Doc(message: '选择item布局')
  Widget renderCell(BuildContext context, int index, S item);

  @Doc(message: '加载下一页请求')
  T nextPageLoad(int page);
}

@Doc(message: '异常组件')
class PageExceptionWidget extends StatelessWidget {
  final PageListException? exception;

  const PageExceptionWidget({Key? key, this.exception}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return exception != null
        ? Center(
            child: Text(exception.toString()).marginOnly(left: 12, right: 12),
          ).toSliverWidget
        : const SliverToBoxAdapter();
  }
}

@Doc(message: '页面异常')
class PageListException implements Exception {
  final String msg;
  final int code;

  const PageListException(this.code, this.msg);

  @override
  String toString() {
    return '可能有些问题出现,状态码:$code,消息:$msg,可以联系客服或者开发者';
  }

  factory PageListException.nullResponse() => const PageListException(10000, '服务器没有成功响应客户端请求.');

  factory PageListException.emptyData() => const PageListException(20000, '数据为空.');

  factory PageListException.dataDecodeException() => const PageListException(30000, '数据解析错误.');
}
