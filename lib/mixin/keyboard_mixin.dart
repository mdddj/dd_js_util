part of dd_js_util;
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



  void reset(){
    Future.microtask(() => ref.read(myKeyBoardHeight.state).state = 0.0);
  }

  ///当键盘高度变化时执行
  void didChangeMetrics(){
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        final height =  MediaQuery.of(context).viewInsets.bottom;
        ref.read(myKeyBoardHeight.notifier).state = height;
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
    binds = _Binds(didChangeMetricsFun:didChangeMetrics);
    WidgetsBinding.instance.addObserver(binds);

  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(binds);
  }

  void hideKeyboard(){
    context.hideKeyBoard();
  }
}