part of '../dd_js_util.dart';

extension ContextExt on BuildContext {
  void hideKeyBoard() {
    FocusScope.of(this).requestFocus(FocusNode());
  }

  TextTheme get kTextTheme => theme.textTheme;

  TextTheme get textTheme => theme.textTheme;

  ThemeData get theme => Theme.of(this);

  ThemeData get kTheme => Theme.of(this);

  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  double get paddingBottom => MediaQuery.of(this).padding.bottom;

  double get paddingTop => MediaQuery.of(this).padding.top;

  double get kBodyHeight => screenHeight - paddingTop - kToolbarHeight;

  ColorScheme get colorScheme => theme.colorScheme;

  Color get backgroundColor => theme.colorScheme.background;

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

  Future<void> showSimpleDialog(String tip, {String? title, String? cancelText}) async {
    await showCupertinoDialog(
      context: this,
      builder: (c) {
        return CupertinoAlertDialog(
          title: Text(title ?? "提示"),
          content: Text(tip),
          actions: [CupertinoDialogAction(onPressed: pop, child: Text(cancelText ?? 'Cancel'))],
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

  Future<void> simpleAskOk(String content, VoidCallback trueCall, [AskOkDialogParams Function(AskOkDialogParams old)? paramsHandle]) async {
    var params = AskOkDialogParams(contentText: content);
    if (paramsHandle != null) {
      params = paramsHandle.call(params);
    }
    final isOk = await askOk(params);
    if(isOk){
      trueCall.call();
    }
  }
}
