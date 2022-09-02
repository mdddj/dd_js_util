

import 'package:logger/logger.dart';

void kLog(dynamic msg){
  Logger().d(msg);
}

void kLogErr(dynamic m){
  Logger().e(m);
}


void logCurrentTime([String? msg]) {
  final time = DateTime.now();
  kLog('${msg??"当前时间"}:$time');
}