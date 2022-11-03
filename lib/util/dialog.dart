part of dd_js_util;

@Doc(message: "简单toast弹窗")
void showToast(String msg) {
  SmartDialog.showToast(msg);
}

@Doc(message: '显示一个iOS弹窗')
void showIosDialog(String msg) {
  SmartDialog.show(builder: (_){
    return CupertinoAlertDialog(
      content: Text(msg),
    );
  });
}