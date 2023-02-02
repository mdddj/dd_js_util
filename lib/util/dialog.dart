part of dd_js_util;

@Doc(message: "简单toast弹窗")
void showToast(String msg) {
  SmartDialog.showToast(msg);
}

@Doc(message: '显示一个iOS弹窗')
void showIosDialog(String msg, {String? okText, List<Widget>? startActions, List<Widget>? endActions,Widget? title}) {
  const tag = 's-dialog-simple-ok-btn';
  SmartDialog.show(
      builder: (_) {
        final isIos = io.Platform.isIOS;
        if (isIos) {
          return CupertinoAlertDialog(
            content: Text(msg),
            actions: [if (startActions != null) ...startActions, CupertinoDialogAction(child: const Text("Ok"), onPressed: () => SmartDialog.dismiss(tag: tag)), if (endActions != null) ...endActions],
          );
        } else {
          return AlertDialog(
            title: title ?? const Text(''),
            content: Text(msg),
            actions: [if (startActions != null) ...startActions, ElevatedButton(onPressed: () => SmartDialog.dismiss(tag: tag), child: const Text("OK")), if (endActions != null) ...endActions],
          );
        }
      },
      tag: tag);
}
