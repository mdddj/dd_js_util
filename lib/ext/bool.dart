part of dd_js_util;

extension BoolExt on bool {
  bool get not => !this;

  void trueCall(VoidCallback call) {
    if (this) {
      call.call();
    }
  }

  void falseCall(VoidCallback call) {
    if (this == false) {
      call.call();
    }
  }
}

void nullCall<T>(T? value,void Function(T value) call){
  if(value!=null){
    call.call(value);
  }
}