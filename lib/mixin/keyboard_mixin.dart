part of '../dd_js_util.dart';

extension MyRef on WidgetRef {

  ///键盘高度
  double get watchKeyBoardHeight {
    return watch(myKeyBoardHeight);
  }

  ///键盘是否展示
  bool get boardIsShow => watchKeyBoardHeight >= 100;
}
class _Binds extends WidgetsBindingObserver {
  final VoidCallback didChangeMetricsFun;
  _Binds({required this.didChangeMetricsFun});
  @override
  void didChangeMetrics() {
    didChangeMetricsFun.call();
    super.didChangeMetrics();
  }
}
class KeyBoardDefaultHeight{
  static double defaultHeight = 0;
}

final myKeyBoardHeight =  StateProvider((ref) => KeyBoardDefaultHeight.defaultHeight);

mixin KeyboardMixin<T extends ConsumerStatefulWidget> on ConsumerState<T>   {
  // ignore: library_private_types_in_public_api
  late _Binds binds;

  ///initState里取到notifier后持有,dispose阶段不能再使用ref
  late final StateController<double> _keyboardHeightNotifier;



  void reset(){
    Future.microtask(() {
      //不用ref:执行时组件可能已经dispose
      _keyboardHeightNotifier.state = 0.0;
    });
  }

  ///当键盘高度变化时执行
  void didChangeMetrics(){
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        //回调在下一帧执行,期间可能已经dispose
        if (!mounted) {
          return;
        }
        final height =  MediaQuery.of(context).viewInsets.bottom;
        _keyboardHeightNotifier.state = height;
        if(height == 0.0){
          onClose();
        }else{
          onShow(height);
        }
      });
  }

  ///键盘展示回调
  void onShow(double height){}

  ///键盘关闭回调
  void onClose(){}

  @override
  void initState() {
    super.initState();
    _keyboardHeightNotifier = ref.read(myKeyBoardHeight.notifier);
    binds = _Binds(didChangeMetricsFun:didChangeMetrics);
    WidgetsBinding.instance.addObserver(binds);

  }

  @override
  void dispose() {
    //先移除观察者,避免释放后回调进来
    WidgetsBinding.instance.removeObserver(binds);
    //全局键盘高度复位,否则页面退出后其他页面会读到上一次的残留高度
    _keyboardHeightNotifier.state = 0.0;
    super.dispose();
  }

  void hideKeyboard(){
    context.hideKeyBoard();
  }
}