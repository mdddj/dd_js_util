import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dd_js_util.dart';
import '../model/ask_ok_dialog_params.dart';
import '../model/my_platform.dart';

///询问弹窗
class AskOkDialog extends StatelessWidget {
  final AskOkDialogParams params;

  const AskOkDialog({super.key, required this.params});

  ///显示弹窗
  static Future<bool> show(BuildContext context, [AskOkDialogParams? params]) async {
    final v = await showDialog<bool?>(
        context: context, builder: (_) => AskOkDialog(params: params ?? const AskOkDialogParams()));
    return v ?? false;
  }

  @override
  Widget build(BuildContext context) {
    _DefaultStyle defaultStyle = _DefaultStyle(params: params);
    _AskOkIosStyle iosStyle = _AskOkIosStyle(param: params);
    return myPlatform.whenOrNull(ios: () => iosStyle, macos: () => iosStyle) ?? defaultStyle;
  }
}

class _AskOkIosStyle extends StatelessWidget {
  final AskOkDialogParams param;

  const _AskOkIosStyle({required this.param});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: param.title,
      content: param.content ?? Text(param.contentText),
      actions: [
        CupertinoDialogAction(
          onPressed: context.pop,
          child: Text(param.cancelText),
        ),
        CupertinoDialogAction(child: Text(param.okText), onPressed: () => Navigator.pop(context, true)),
      ],
    );
  }
}

class _DefaultStyle extends StatelessWidget {
  final AskOkDialogParams params;

  const _DefaultStyle({required this.params});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: params.title,
      content: params.content ?? Text(params.contentText),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context, false), child: Text(params.cancelText)),
        const SizedBox(width: 12),
        FilledButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: Text(params.okText))
      ],
    );
  }
}
