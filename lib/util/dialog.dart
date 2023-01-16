part of dd_js_util;

@Doc(message: "简单toast弹窗")
void showToast(String msg) {
  SmartDialog.showToast(msg);
}

@Doc(message: '显示一个iOS弹窗')
void showIosDialog(String msg,{String? okText,List<Widget>? startActions,List<Widget>? endActions}) {
  const tag = 's-dialog-simple-ok-btn';
  SmartDialog.show(builder: (_){
    return CupertinoAlertDialog(
      content: Text(msg),
      actions:  [
        if(startActions!=null)
          ...startActions,
        CupertinoDialogAction(child: const Text("Ok"),onPressed: ()=>SmartDialog.dismiss(tag: tag)),
        if(endActions!=null)
          ...endActions
      ],
    );
  },tag: tag);
}