part of '../dd_js_util.dart';

@Doc(message: "简单toast弹窗")
void showToast(String msg) {
  SmartDialog.showToast(msg);
}

@Doc(message: '显示一个iOS弹窗')
void showIosDialog(String msg,
    {String okText = 'Ok',
    List<Widget>? startActions,
    List<Widget>? endActions,
    Widget? title,
    String cancelText = 'Cancel',
      Widget? content
    }) {
  if (msg.isNotEmpty) {
    const tag = 's-dialog-simple-ok-btn';
    SmartDialog.show(
        builder: (_) {
          final isIos = io.Platform.isIOS;
          if (isIos) {
            return CupertinoAlertDialog(
              title: title,
              content: content ?? Text(msg),
              actions: [
                if (startActions != null) ...startActions,
                CupertinoDialogAction(child: Text(okText), onPressed: () => SmartDialog.dismiss(tag: tag)),
                if (endActions != null) ...endActions
              ],
            );
          } else {
            final allEmpty = startActions == null && endActions == null;
            return AlertDialog(
              title: title ?? const Text(''),
              content: content ?? Text(msg),
              actions: allEmpty
                  ? [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                                  onPressed: () {
                                    SmartDialog.dismiss(tag: tag);
                                  },
                                  child: Text(cancelText))
                              .marginOnly(right: 12),
                          FilledButton(onPressed: () => SmartDialog.dismiss(tag: tag), child: Text(okText)).center
                        ],
                      )
                    ]
                  : [
                      if (startActions != null) ...startActions,
                      ElevatedButton(onPressed: () => SmartDialog.dismiss(tag: tag), child: Text(okText)),
                      if (endActions != null) ...endActions
                    ],
            );
          }
        },
        tag: tag);
  }
}
