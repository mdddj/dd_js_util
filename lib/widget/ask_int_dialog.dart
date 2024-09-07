part of '../dd_js_util.dart';

class AskIntDialog extends StatefulWidget {
  final AskIntDialogParams params;

  static Future<int?> show(BuildContext context, {AskIntDialogParams? params}) async {
    return await showCupertinoDialog<int>(
        context: context,
        builder: (_) => AskIntDialog(
              params: params ?? const AskIntDialogParams(),
            ));
  }

  const AskIntDialog({super.key, required this.params});

  @override
  State<AskIntDialog> createState() => _AskIntDialogState();
}

class _AskIntDialogState extends State<AskIntDialog> {
  String? errorMessage;
  bool disableOkButton = false;

final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return CupertinoAlertDialog(
      content: SingleChildScrollView(
        child: Column(children: [
          Text(widget.params.title).visible(widget.params.title.isNotEmpty),
          const SizedBox(
            height: 12,
          ),
          CupertinoTextField(
            autofocus: true,
            controller: controller,
            textInputAction: TextInputAction.go,
            keyboardType: TextInputType.number,
            style: TextStyle(color: context.primaryColor),
            placeholder: widget.params.placeholder,
            onChanged: (value) {
              final intValue = int.tryParse(value) ?? 0;
              errorMessage = widget.params.errorMessage?.call(intValue);
              disableOkButton = widget.params.disableOkButton?.call(intValue) ?? false;
              setState(() {});
            },
          ),
          if(errorMessage!=null)
            Text(errorMessage!,style: const TextStyle(color: Colors.red),).marginOnly(top: 12)
          
        ]),
      ),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            context.pop();
          },
          isDestructiveAction: true,
          child: Text(widget.params.cancelBtnText),
        ),
        CupertinoDialogAction(
          onPressed: disableOkButton ? (){} : () {
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
            widget.params.okBtnText,
            style: TextStyle(color: disableOkButton? Colors.grey : context.primaryColor),
          ),
        )
      ],
    );
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}
