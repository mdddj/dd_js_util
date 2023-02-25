part of dd_js_util;

typedef SearchSupportRepository<T> = LoadingMoreBase<T>;
typedef SearchSupportSliverList<T> = LoadingMoreSliverList<T>;
typedef SearchSupportConfig<T> = SliverListConfig<T>;
typedef SearchSupportScrollView = LoadingMoreCustomScrollView;

///超级搜索
class SearchSupport<T> extends StatefulWidget {
  //执行获取过滤列表
  final SearchSupportSliverList<T> loadingMoreSliverList;
  final SearchSupportParams params;
  final Widget child;

  const SearchSupport(
    this.loadingMoreSliverList, {
    Key? key,
    required this.params,
    required this.child,
  }) : super(key: key);

  @override
  State<SearchSupport> createState() => _SearchSupportState<T>();
}

class _SearchSupportState<T> extends State<SearchSupport> {
  SearchSupportParams get _params => widget.params;

  Widget get child => widget.child;
  final FFloatController _fFloatController = FFloatController();

  late StateSetter _floatSetState;
  late State _floatState;

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
  void didUpdateWidget(covariant SearchSupport oldWidget) {
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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FFloat(
        (setter, s) {
          _params.listening?.onBuild(s.context);
          return _params.childBuilder.call(
              SearchSupportManager(
                context: s.context,
                floatStateSetter: _floatSetState,
                floatState: _floatState,
              ),
              widget.loadingMoreSliverList);
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
}

class RefreshController {
  _SearchSupportState? _state;

  void _bind(_SearchSupportState s) {
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
  void setState(){
    if(_state?._floatState.mounted == true){
      _state?._floatSetState((){});
    }
  }

  //控制器
  FFloatController? get floatController => _state?._fFloatController;
}
