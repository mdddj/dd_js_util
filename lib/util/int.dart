part of dd_js_util;

// 时间戳转时间
String customStampStr({
  int? timestamp, // 为空则显示当前时间
  String? date, // 显示格式，比如：'YY年MM月DD日 hh:mm:ss'
  bool toInt = true, // 去除0开头
}) {
  timestamp ??= (DateTime.now().millisecondsSinceEpoch / 1000).round();
  String timeStr = (DateTime.fromMillisecondsSinceEpoch(timestamp * 1000)).toString();

  dynamic dateArr = timeStr.split(' ')[0];
  dynamic timeArr = timeStr.split(' ')[1];

  String yy = dateArr.split('-')[0];
  String mm = dateArr.split('-')[1];
  String dd = dateArr.split('-')[2];

  String hhh = timeArr.split(':')[0];
  String mmm = timeArr.split(':')[1];
  String sss = timeArr.split(':')[2];

  sss = sss.split('.')[0];

  // 去除0开头
  if (toInt) {
    mm = (int.parse(mm)).toString();
    dd = (int.parse(dd)).toString();
    hhh = (int.parse(hhh)).toString();
    mmm = (int.parse(mmm)).toString();
  }

  if (date == null) {
    return timeStr;
  }

  date = date.replaceAll('YY', yy).replaceAll('MM', mm).replaceAll('DD', dd).replaceAll('hh', hhh).replaceAll('mm', mmm).replaceAll('ss', sss);

  return date;
}
