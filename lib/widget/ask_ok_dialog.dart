import 'package:flutter/material.dart';

import '../model/ask_ok_dialog_params.dart';



///询问弹窗
class AskOkDialog extends StatelessWidget {
  final AskOkDialogParams params;
  const AskOkDialog({Key? key, required this.params}) : super(key: key);


  ///显示弹窗
  static Future<bool> show(BuildContext context,[AskOkDialogParams? params]) async {
    final v = await showDialog<bool?>(context: context, builder: (_)=>AskOkDialog(params: params??const AskOkDialogParams()));
    return v ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: params.title,
      content: Text(params.contentText),
      actions: [
        TextButton(onPressed: ()=>Navigator.pop(context,false), child: Text(params.cancelText)),
        const SizedBox(width: 12),
        FilledButton(onPressed: (){
          Navigator.pop(context,true);
        }, child: Text(params.okText))
      ],
    );
  }
}
