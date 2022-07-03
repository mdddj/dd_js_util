import 'package:dd_js_util/api/base.dart';
import 'package:ffloat_nullsafety/ffloat_nullsafety.dart';
import 'package:flutter/material.dart';

typedef ItemBuilder<T> = Widget Function(T item);
typedef SearchController = FFloatController;
typedef SearchRequest<T> = Future<List<T>> Function(String? searchKey);
typedef ContainerBuilder = Widget Function(Widget child);

///超级搜索
class SearchSupport<T> extends StatefulWidget {
  ///子组件
  final Widget child;

  ///结果列表
  final List<T> childrens;

  ///用户选中某个值
  final ValueChanged<dynamic> onSelected;

  final ItemBuilder itemBuilder;

  final SearchController controller;

  final SearchRequest request;

  final RefreshController? refreshController;

  final ContainerBuilder? containerBuilder;

  const SearchSupport(
      {Key? key,
      required this.child,
      required this.childrens,
      required this.onSelected,
      required this.itemBuilder,
      required this.controller,
      required this.request,
      this.refreshController,
      this.containerBuilder})
      : super(key: key);

  @override
  State<SearchSupport> createState() => _SearchSupportState<T>();
}

class _SearchSupportState<T> extends State<SearchSupport> {
  Widget get child => widget.child;

  StateSetter? ss;
  State? contentState;
  var _list = <dynamic>[];

  @override
  void initState() {
    super.initState();
    _bind();
  }

  @override
  void didUpdateWidget(covariant SearchSupport oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.refreshController != oldWidget.refreshController) {
      _bind();
    }
  }

  @override
  void dispose() {
    if (widget.controller.isShow) {
      widget.controller.dismiss();
    }
    super.dispose();
    widget.controller.dispose();
  }

  void _bind() {
    widget.refreshController?._bind(this);
  }

  //执行刷新
  Future<void> doRefreshList(String? searchKey) async {
    final list = await widget.request(searchKey);
    if (mounted && contentState?.mounted == true) {
      ss?.call(() {
        _list = list;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, cpro) {
      return FFloat(
        (setter, s) {
          ss = setter;
          contentState = s;
          return SizedBox(
            width: cpro.maxWidth,
            child: widget.containerBuilder?.call(_listWidget) ?? _listWidget,
          );
        },
        anchor: child,
        controller: widget.controller,
        alignment: FFloatAlignment.bottomLeft,
        shadowBlur: 0,
        shadowColor: Colors.transparent,
      );
    });
  }

  Widget get _listWidget => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _list
              .map((e) => widget.itemBuilder(e).click(() {
                    widget.onSelected.call(e as T);
                    widget.controller.dismiss();
                  }))
              .toList(),
        ),
      );
}

class RefreshController {
  _SearchSupportState? _state;

  void _bind(_SearchSupportState s) {
    _state = s;
  }

  Future<void> doRefresh(String? searchKey) async {
    await _state?.doRefreshList(searchKey);
  }
}
