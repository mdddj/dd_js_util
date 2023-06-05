part of dd_js_util;

typedef SearchSupportRepository<T> = LoadingMoreBase<T>;
typedef SearchSupportSliverList<T> = LoadingMoreSliverList<T>;
typedef SearchSupportConfig<T> = SliverListConfig<T>;
typedef SearchSupportScrollView = LoadingMoreCustomScrollView;
typedef SearchSupportItemBuilder<T> = Widget Function(BuildContext context, T item, int index, bool isSelect);

///超级搜索
class SearchSupport<T> extends StatefulWidget {
  //执行获取过滤列表
  final SearchSupportItemBuilder<T> itemBuilder;
  final SearchSupportRepository<T> sourceList;
  final SearchSupportParams<T> params;
  final Widget child;

  const SearchSupport({
    Key? key,
    required this.params,
    required this.child,
    required this.itemBuilder,
    required this.sourceList,
  }) : super(key: key);

  @override
  State<SearchSupport<T>> createState() => _SearchSupportState<T>();
}

class _SearchSupportState<T> extends State<SearchSupport<T>> {
  SearchSupportParams get _params => widget.params;

  Widget get child => widget.child;
  final FFloatController _fFloatController = FFloatController();

  late StateSetter _floatSetState;
  late State _floatState;

  //选中的
  T? _selectValue;

  @override
  void initState() {
    super.initState();
    _bind();
    delayFunction(() {
      if (_params.autoShow == true) {
        _log('初始化展示搜索结果');
        _fFloatController.show();
      }
    });
  }

  @override
  void didUpdateWidget(covariant SearchSupport<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_params.controller != oldWidget.params.controller) {
      _bind();
    }
  }

  @override
  void dispose() {
    if (_fFloatController.isShow) {
      _fFloatController.dismiss();
    }
    super.dispose();
  }

  void _bind() {
    _params.controller?._bind(this);
  }

  Widget get _coreWidget {
    return SearchSupportSliverList(SearchSupportConfig<T>(itemBuilder: itemBuild, sourceList: widget.sourceList, showNoMore: false));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FFloat(
        (setter, s) {
          _params.listening?.onBuild(s.context);
          _floatSetState = setter;
          _floatState = s;
          return _params.childBuilder.call(
              SearchSupportManager(
                context: s.context,
                floatStateSetter: _floatSetState,
                floatState: _floatState,
              ),
              _coreWidget);
        },
        anchor: child,
        controller: _fFloatController,
        alignment: FFloatAlignment.bottomLeft,
        shadowBlur: 0,
        shadowColor: Colors.transparent,
        igBackground: false,
        backgroundColor: Colors.transparent,
        color: Colors.transparent,
        onShow: (s) {
          _params.listening?.initShow();
          _floatState = s;
          _floatSetState = s.setState;
        },
        onDispose: () {
          _params.listening?.onHide();
        },
      );
    });
  }

  void _log(dynamic msg) {
    kLog(msg);
  }

  Widget itemBuild(BuildContext context, T item, int index) {
    return widget.itemBuilder.call(context, item, index, item == _selectValue);
  }

  //设置选中项
  void toSelect(T item) {
    _selectValue = item;
    widget.sourceList.setState();
    _floatSetState((){});
  }
}

class RefreshController<T> {
  _SearchSupportState<T>? _state;

  void _bind(_SearchSupportState<T> s) {
    _state = s;
  }

  //显示搜索结果
  void show() {
    _state?._fFloatController.show();
  }

  bool get isShow => _state?._fFloatController.isShow ?? false;

  //隐藏搜索结果
  void hide() {
    _state?._fFloatController.dismiss();
  }

  //刷新弹窗层UI,重新构建UI
  void setState() {
    if (_state?._floatState.mounted == true) {
      _state?._floatSetState(() {});
    }
  }

  void toSelectItem(T item){
    _state?.toSelect(item);
  }


  //控制器
  FFloatController? get floatController => _state?._fFloatController;
}
