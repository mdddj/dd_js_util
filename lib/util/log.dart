part of '../dd_js_util.dart';

void kLog(dynamic msg){
  if(kDebugMode){
    Logger().d(msg);
  }
}


void wtfLog(dynamic msg) {
  if(kDebugMode) {
    Logger().f(msg);
  }
}

void kLogErr(dynamic m){
  if(kDebugMode){
    Logger().e(m);
  }
}


///
void logCurrentTime([String? msg]) {
  final time = DateTime.now();
  debugPrint('$time:${msg ?? "当前时间"}:');
}