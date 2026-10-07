part of '../dd_js_util.dart';

extension AskStringDialogEx on BuildContext {
  Future<String> askString([AskStringDialogParams? params]) async {
    return (await AskStringDialog.show(this, params: params)) ?? "";
  }
}

class AskStringDialog extends StatefulWidget {
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

  const AskStringDialog({super.key, required this.params});

  @override
  State<AskStringDialog> createState() => _AskStringDialogState();
}

class _AskStringDialogState extends State<AskStringDialog> {
  ///控制器由State持有并在[dispose]里释放;放在build里每次重建都会丢输入并泄漏一个
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final params = widget.params;
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
        CupertinoDialogAction(
          onPressed: () {
            context.pop();
          },
          isDestructiveAction: true,
          child: Text(params.cancelBtnText),
        ),
        CupertinoDialogAction(
          onPressed: () {
            final text = controller.text;
            if (text.isNotEmpty) {
              Navigator.pop(context, controller.text);
            }
          },
          isDefaultAction: true,
          child: Text(
            params.okBtnText,
          ),
        )
      ],
    );
  }
}
