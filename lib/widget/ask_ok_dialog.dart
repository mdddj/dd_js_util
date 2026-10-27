part of '../dd_js_util.dart';

///询问弹窗
///
///内部走`adaptive_platform_ui`,平台分支交给它处理:
///
/// * iOS 26+ : 原生 UIAlertController + Liquid Glass
/// * iOS <26 : CupertinoAlertDialog
/// * Android  : Material AlertDialog
///
///对外API(`AskOkDialog.show` / `AskOkDialogParams`)保持不变。
class AskOkDialog extends StatelessWidget {
  final AskOkDialogParams params;

  const AskOkDialog({super.key, required this.params});

  ///显示弹窗
  static Future<bool> show(BuildContext context, [AskOkDialogParams? params]) async {
    final p = params ?? const AskOkDialogParams();
    final content = p.content;

    //带自定义 Widget 时无法走字符串标题/正文的原生通道,退回旧实现
    if (content != null || p.title != null) {
      final v = await showDialog<bool?>(
          context: context, builder: (_) => AskOkDialog(params: p));
      return v ?? false;
    }

    var result = false;
    await AdaptiveAlertDialog.show(
      context: context,
      title: p.contentText,
      actions: [
        AlertAction(
          title: p.cancelText,
          style: AlertActionStyle.cancel,
          onPressed: () => result = false,
        ),
        AlertAction(
          title: p.okText,
          style: AlertActionStyle.primary,
          onPressed: () => result = true,
        ),
      ],
    );
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return switch (myPlatform) {
      IosPlatform() => _iosStyle(context),
      MacosPlatform() => _iosStyle(context),
      _ => _materialStyle(context)
    };
  }

  Widget _iosStyle(BuildContext context) {
    return Center(
      child: CupertinoAlertDialog(
        title: params.title,
        content: params.content ?? Text(params.contentText),
        actions: [
          CupertinoDialogAction(
            onPressed: () => Navigator.pop(context, false),
            child: Text(params.cancelText),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () => Navigator.pop(context, true),
            child: Text(params.okText),
          ),
        ],
      ),
    );
  }

  Widget _materialStyle(BuildContext context) {
    return AlertDialog(
      title: params.title,
      content: params.content ?? Text(params.contentText),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(params.cancelText),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context, true),
          child: Text(params.okText),
        ),
      ],
    );
  }
}
