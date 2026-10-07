part of '../dd_js_util.dart';

///[Logger]每次新建都会重建filter/printer,共用一个实例
final Logger _kLogger = Logger();

void kLog(dynamic msg){
  if(kDebugMode){
    _kLogger.d(msg);
  }
}


void wtfLog(dynamic msg) {
  if(kDebugMode) {
    _kLogger.f(msg);
  }
}

void kLogErr(dynamic m){
  if(kDebugMode){
    _kLogger.e(m);
  }
}


///
void logCurrentTime([String? msg]) {
  if(!kDebugMode){
    return;
  }
  final time = DateTime.now();
  debugPrint('$time:${msg ?? "当前时间"}:');
}