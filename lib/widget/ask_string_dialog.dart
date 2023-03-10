import 'package:flutter/cupertino.dart';

import '../dd_js_util.dart';
import '../model/ask_int_dialog_params.dart';

extension AskStringDialogEx on BuildContext {
  Future<String> askString([AskStringDialogParams? params]) async {
    return (await AskStringDialog.show(this, params: params)) ?? "";
  }
}

class AskStringDialog extends StatelessWidget {
  final AskStringDialogParams params;


  /// ### Edit your dart document comments here
  ///
  /// [x] Support markdown syntax
  ///
  /// ```dart
  ///  val hello = "world";
  ///
  /// void doPrint() {
  ///   print(hello);
  /// }
  /// ```
  ///
  /// xxx
  static Future<String?> show(BuildContext context, {AskStringDialogParams? params}) async {
    return await showCupertinoDialog<String?>(
        context: context,
        builder: (_) => AskStringDialog(
              params: params ?? const AskStringDialogParams(),
            ));
  }

  const AskStringDialog({Key? key, required this.params}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return CupertinoAlertDialog(
      content: SingleChildScrollView(
        child: Column(children: [
          Text(params.title).visible(params.title.isNotEmpty),
          const SizedBox(
            height: 12,
          ),
          CupertinoTextField(
              autofocus: true,
              controller: controller,
              textInputAction: TextInputAction.go,
              placeholder: params.placeholder,
              onSubmitted: (string) => ifCall(string.isNotEmpty, () => Navigator.pop(context, string)))
        ]),
      ),
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            context.pop();
          },
          isDestructiveAction: true,
          child: Text(params.cancelBtnText),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            final text = controller.text;
            if (text.isNotEmpty) {
              Navigator.pop(context, controller.text);
            }
          },
          isDefaultAction: true,
          child: Text(
            params.okBtnText,
            style: TextStyle(color: context.primaryColor),
          ),
        )
      ],
    );
  }
}
