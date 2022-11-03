part of dd_js_util;

enum WrapJsonBroadcase {
  value("wrap-json-value");
  const WrapJsonBroadcase(this.text);
  final String text;
}

mixin BroadcaseMixin<T extends StatefulWidget> on State<T>{
  @override
  void initState() {
    super.initState();
    FBroadcast.systemInstance.register(WrapJsonBroadcase.value.text, (value, callback) {
      if(value is WrapJson){
        handleWrapJson(value);
      }
    });
  }

  void handleWrapJson(WrapJson json);
}