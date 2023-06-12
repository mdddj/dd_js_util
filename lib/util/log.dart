part of dd_js_util;


void kLog(dynamic msg){
  if(kDebugMode){
    Logger().d(msg);
  }
}


void wtfLog(dynamic msg) {
  if(kDebugMode) {
    Logger().wtf(msg);
  }
}

void kLogErr(dynamic m){
  if(kDebugMode){
    Logger().e(m);
  }
}


void logCurrentTime([String? msg]) {
  final time = DateTime.now();
  kLog('${msg??"当前时间"}:$time');
}