part of '../dd_js_util.dart';

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

/// 梁典典: 判空执行
/// 如果[value]不为空,将会在[call]函数中回调出去
/// [可以省略null判断]
void nullCall<T>(T? value,void Function(T value) call){
  if(value!=null){
    call.call(value);
  }
}