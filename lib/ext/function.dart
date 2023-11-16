part of '../dd_js_util.dart';

typedef TakeIfFun = bool Function();

//函数扩展
extension FunctionExt on VoidCallback {

  ///判断执行
  void takeIf(TakeIfFun fun){
    if(fun.call()) {
      this.call();
    }
  }

  ///延迟执行
  void delayInvoke([Duration duration = Duration.zero]) {
    Future.delayed(duration,()=>this.call());
  }

}