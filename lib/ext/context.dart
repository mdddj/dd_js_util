part of '../dd_js_util.dart';

extension ContextExt on BuildContext {
  void hideKeyBoard() {
    //不要requestFocus一个新建的FocusNode,那个节点不会被释放
    FocusScope.of(this).unfocus();
  }

  TextTheme get kTextTheme => theme.textTheme;

  TextTheme get textTheme => theme.textTheme;

  ThemeData get theme => Theme.of(this);

  ThemeData get kTheme => Theme.of(this);

  ///[MediaQuery.sizeOf]只在尺寸变化时通知,用[MediaQuery.of]会被键盘/安全区等任何变化牵连重建
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  ///iOS 尺寸类(宽),比裸宽度断点准:iPad、Split View、iPhone Duo 都能反映。
  ///
  ///非 iOS 或没装 `FoldableProvider` 时返回 [foldable.SizeClass.unspecified],
  ///此时请用 [isRegularWidth] 或 [screenWidth] 做回退。
  foldable.SizeClass get horizontalSizeClass =>
      foldable.DuoMediaQuery.horizontalSizeClassOf(this);

  ///iOS 尺寸类(高)。语义同 [horizontalSizeClass]。
  foldable.SizeClass get verticalSizeClass =>
      foldable.DuoMediaQuery.verticalSizeClassOf(this);

  ///是否宽屏布局。
  ///
  ///优先用 iOS 尺寸类;拿不到时(iOS 旧版没装 Provider、Android、桌面)
  ///退回 600 宽度断点。
  bool get isRegularWidth {
    final sizeClass = horizontalSizeClass;
    if (sizeClass != foldable.SizeClass.unspecified) {
      return sizeClass == foldable.SizeClass.regular;
    }
    return screenWidth >= 600;
  }

  ///当前设备是否有铰链(iPhone Duo)。
  ///
  ///需要在根部装有 [foldable.FoldableProvider],否则永远是 false。
  bool get isFoldable => foldable.DuoMediaQuery.isFoldableOf(this);

  ///当前折叠姿态。没装 Provider 或非折叠设备时是 [foldable.HingeStatus.unknown]。
  foldable.HingeStatus get hingeStatus =>
      foldable.DuoMediaQuery.statusOf(this);

  ///铰链角度(度)。0° 合上,180° 平展。无铰链时为 null。
  double? get hingeAngle => foldable.DuoMediaQuery.angleOf(this);

  double get paddingBottom => MediaQuery.paddingOf(this).bottom;

  double get paddingTop => MediaQuery.paddingOf(this).top;

  double get kBodyHeight => screenHeight - paddingTop - kToolbarHeight;

  ColorScheme get colorScheme => theme.colorScheme;

  Color get backgroundColor => theme.colorScheme.surface;

  Color get highlightColor => theme.highlightColor;

  Color get cardColor => theme.cardTheme.color ?? theme.cardColor;

  Color get primaryColor => theme.primaryColor;

  Color? get iconColor => theme.iconTheme.color;

  Color? get appbarBackgroundColor => theme.appBarTheme.backgroundColor;

  bool get isDarkModel => Theme.of(this).brightness == Brightness.dark;

  Future<T?> navToWidget<T>({required Widget to}) async {
    return await Navigator.push<T>(this, MaterialPageRoute(builder: (_) => to));
  }

  NavigatorState get nav => Navigator.of(this);

  void pop() => Navigator.pop(this);

  Future<void> showSimpleDialog(String tip,
      {String? title, String? cancelText}) async {
    await showCupertinoDialog(
      context: this,
      builder: (c) {
        return CupertinoAlertDialog(
          title: Text(title ?? "提示"),
          content: Text(tip),
          actions: [
            CupertinoDialogAction(
                onPressed: pop, child: Text(cancelText ?? 'Cancel'))
          ],
        );
      },
    );
  }

  Future<void> bottomSheet<T>({required Widget child}) async {
    return await showModalBottomSheet(context: this, builder: (c) => child);
  }

  Future<bool> askOk(AskOkDialogParams params) async {
    return AskOkDialog.show(this, params);
  }

  Future<void> simpleAskOk(String content, VoidCallback trueCall,
      [AskOkDialogParams Function(AskOkDialogParams old)? paramsHandle]) async {
    var params = AskOkDialogParams(contentText: content);
    if (paramsHandle != null) {
      params = paramsHandle.call(params);
    }
    final isOk = await askOk(params);
    if (isOk) {
      trueCall.call();
    }
  }
}
