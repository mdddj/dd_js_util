import 'package:flutter/cupertino.dart';

import '../dd_js_util.dart';
import '../model/ask_int_dialog_params.dart';

class AskIntDialog extends StatelessWidget {
  final AskIntDialogParams params;

  static Future<int?> show(BuildContext context,
      {AskIntDialogParams? params}) async {
    return await showCupertinoDialog<int>(
        context: context,
        builder: (_) => AskIntDialog(
              params: params ?? const AskIntDialogParams(),
            ));
  }

  const AskIntDialog({Key? key, required this.params}) : super(key: key);

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
            keyboardType: TextInputType.number,
            placeholder: params.placeholder,
          )
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
              final count = int.tryParse(controller.text);
              if (count != null && count != 0) {
                Navigator.pop(context, int.tryParse(controller.text));
              }
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
