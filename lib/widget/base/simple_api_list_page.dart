import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import '../../api/base.dart';
import '../../api/exception.dart';
import '../../ext/context.dart';
import '../../ext/widget.dart';
import 'loading.dart';

///要插入的widget
class InsetWidget {
  final int insertIndex;
  final Widget child;

  InsetWidget(this.child, this.insertIndex);
}

///页面所需要的基本数据
mixin MyBasePageList<T extends BaseApi, S, W extends StatefulWidget, A> on State<W>  {
  List<S> _pageData = []; //页面所需要的数组数据
  bool _loading = true; //加载中
  PageListException? pageListException; //页面异常

  int _page = 1; //第几页

  List<S>? get data => _pageData;

  EasyRefreshController easyRefreshController = EasyRefreshController();

  bool get loadingState => _loading;

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
      if (vData.isEmpty) {
        easyRefreshController.finishLoad(success: true,noMore: true);
      }
    } on PageListException catch (e) {
      if (mounted) {
        setState(() {
          _loading = false;
          pageListException = e;
        });
      }
    }on AppException catch(e){
      if (mounted) {
        setState(() {
          _loading = false;
          pageListException = PageListException.fromAppException(e);
        });
      }
    }catch(_){
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

  Future<void> nextPageLoadFun() async {
    await _nextPage();
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

  @Doc(message: '要插入位置的小部件')
  List<InsetWidget> get insetWidget => [];

  @override
  Widget build(BuildContext context) {
    if(_loading){
      return loadingWidget;
    }
    if(pageListException != null){
      return   buildExceptionWidget(pageListException!);
    }
    return customBuildWidget(data??[]);
  }

  Widget customBuildWidget(final List<S> data) {
    return coreWidget;
  }

  Widget get coreWidget {
    return EasyRefresh(
        controller: easyRefreshController,
        header: CustomLoadingHeader(),
        footer: CustomLoadingFooter(),
        onRefresh: () async {
          setState(() {
            _pageData = [];
            _loading = true;
          });
          return await _nextPage(page: 1);
        },
        onLoad:enableOnLoad ?  () async {
          await _nextPage();
        } : null,
        child: CustomScrollView(
          slivers: [
            ...headerChildren,
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  if (_pageData.isEmpty) {
                    return const SizedBox();
                  }
                  for (var i = 0; i < insetWidget.length; i++) {
                    final item = insetWidget[i];
                    if (index == item.insertIndex) {
                      return item.child;
                    }
                  }
                  return renderCell(context, index, _pageData[index - _getAddCount(index)]);
                }, childCount: _pageData.length + insetWidget.length)),
            ...footChildren
          ],
        ),

    );
  }

  ///获取需要位移的数量
  int _getAddCount(int index) {
    var count = 0;
    for (var i = 0; i < insetWidget.length; i++) {
      final item = insetWidget[i];
      if (item.insertIndex <= index) {
        count++;
      }
    }
    return count;
  }

  @Doc(message: '选择item布局')
  Widget renderCell(BuildContext context, int index, S item);

  bool get enableOnLoad => true;

  @Doc(message: '加载下一页请求')
  T nextPageLoad(int page);

  bool get isSliver => true;

  Widget buildExceptionWidget(PageListException exception) {
    return PageExceptionWidget(
      exception: pageListException,
      isSliver: isSliver,
    );
  }
}

@Doc(message: '异常组件')
class PageExceptionWidget extends StatelessWidget {
  final PageListException? exception;
  final bool isSliver;

  const PageExceptionWidget({Key? key, this.exception,this.isSliver = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return exception != null
        ? (isSliver ? SliverToBoxAdapter(child: widget) : widget)
        :  (isSliver ? const SliverToBoxAdapter() : const SizedBox());
  }

  Widget get widget {
    if(exception == null){
      return const SizedBox();
    }
    return Center(
      child: Card(child: Column(
        children: [
          Builder(
            builder: (ctx) {
              return CircleAvatar(
                backgroundColor: ctx.cardColor,
                child: const Icon(Icons.warning,color: Colors.orange,),
              );
            }
          ),
          Text(exception!.code.toString()).marginOnly(left: 12, right: 12),
          Text(exception!.msg)
        ],
      )),
    );
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

  factory PageListException.nullResponse() => const PageListException(10000, 'null response.');

  factory PageListException.emptyData() => const PageListException(20000, 'empty data.');

  factory PageListException.dataDecodeException() => const PageListException(30000, 'Data parsing error.');

  factory PageListException.fromAppException(AppException exception) => PageListException(exception.code, exception.message);
}
