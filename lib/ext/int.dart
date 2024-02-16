part of '../dd_js_util.dart';

//
// import '../api/base.dart';
// import '../util/int.dart';

extension DoubleExt on double {

}

extension IntExt on int {

  Duration get sec => Duration(seconds: this);

  Duration get milliseconds => Duration(milliseconds: this);

  BorderRadius get borderRadius => BorderRadius.circular(toDouble());

  Radius get radius => Radius.circular(toDouble());

  @Doc(message: '时间戳获取年龄')
  String get getAge {
    var brt = DateTime.fromMicrosecondsSinceEpoch(this * 1000);
    DateTime dateTime = DateTime.now();
    if (dateTime.isBefore(brt)) {
      return '出生日期不正確';
    }
    int yearBirth = brt.year;
    int monthBirth = brt.month;
    int dayOfMonthBirth = brt.day;
    return MyIntUtil()
        .getAge(yearBirth, monthBirth, dayOfMonthBirth)
        .toString();
  }

  String get getAgeV2 {
    final util = MyIntUtil();
    final model = util.parseWithInt(this);
    return util.getAge(model.y, model.m, model.d).toString();
  }

  String get getConstellationV2 {
    final util = MyIntUtil();
    final model = util.parseWithInt(this);
    return util.getConstellationWith(model.m, model.d);
  }

  @Doc(message: '根据日期，返回星座')
  String get getConstellation {
    final birthday = DateTime.fromMillisecondsSinceEpoch(this);
    int month = birthday.month;
    int day = birthday.day;
    return MyIntUtil().getConstellationWith(month, day);
  }

  String get messageTime {
    // 当前时间
    int time = (DateTime.now().millisecondsSinceEpoch / 1000).round();
    // 对比
    int distance = time - this;
    if (distance <= 60) {
      return '刚刚';
    } else if (distance <= 3600) {
      return '${(distance / 60).floor()}分钟前';
    } else if (distance <= 43200) {
      return '${(distance / 60 / 60).floor()}小时前';
    } else if (DateTime.fromMillisecondsSinceEpoch(time * 1000).year ==
        DateTime.fromMillisecondsSinceEpoch(this * 1000).year) {
      return customStampStr(timestamp: this, date: 'MM/DD hh:mm', toInt: false);
    } else {
      return customStampStr(
          timestamp: this, date: 'YY/MM/DD hh:mm', toInt: false);
    }
  }

  int get add => this + 1;
}



Widget get k24Height => const SizedBox(
      height: 24,
    );

class MyIntUtil {
  MyIntUtil._();

  static MyIntUtil get _instance => MyIntUtil._();

  factory MyIntUtil() => _instance;

  ///根据月份和日期获取星座
  ///例子: 19960515, 则getConstellationWith(5,15);
  ///[month]月份
  ///[day] 日期
  String getConstellationWith(int month, int day) {
    const String capricorn = '摩羯座'; //Capricorn 摩羯座（12月22日～1月20日）
    const String aquarius = '水瓶座'; //Aquarius 水瓶座（1月21日～2月19日）
    const String pisces = '双鱼座'; //Pisces 双鱼座（2月20日～3月20日）
    const String aries = '白羊座'; //3月21日～4月20日
    const String taurus = '金牛座'; //4月21～5月21日
    const String gemini = '双子座'; //5月22日～6月21日
    const String cancer = '巨蟹座'; //Cancer 巨蟹座（6月22日～7月22日）
    const String leo = '狮子座'; //Leo 狮子座（7月23日～8月23日）
    const String virgo = '处女座'; //Virgo 处女座（8月24日～9月23日）
    const String libra = '天秤座'; //Libra 天秤座（9月24日～10月23日）
    const String scorpio = '天蝎座'; //Scorpio 天蝎座（10月24日～11月22日）
    const String sagittarius = '射手座'; //Sagittarius 射手座（11月23日～12月21日）
    String constellation = '';

    ///去掉月份的0
    if (month.toString().startsWith('0')) {
      month = int.parse(month.toString().replaceAll('0', ''));
    }

    switch (month) {
      case DateTime.january:
        constellation = day < 21 ? capricorn : aquarius;
        break;
      case DateTime.february:
        constellation = day < 20 ? aquarius : pisces;
        break;
      case DateTime.march:
        constellation = day < 21 ? pisces : aries;
        break;
      case DateTime.april:
        constellation = day < 21 ? aries : taurus;
        break;
      case DateTime.may:
        constellation = day < 22 ? taurus : gemini;
        break;
      case DateTime.june:
        constellation = day < 22 ? gemini : cancer;
        break;
      case DateTime.july:
        constellation = day < 23 ? cancer : leo;
        break;
      case DateTime.august:
        constellation = day < 24 ? leo : virgo;
        break;
      case DateTime.september:
        constellation = day < 24 ? virgo : libra;
        break;
      case DateTime.october:
        constellation = day < 24 ? libra : scorpio;
        break;
      case DateTime.november:
        constellation = day < 23 ? scorpio : sagittarius;
        break;
      case DateTime.december:
        constellation = day < 22 ? sagittarius : capricorn;
        break;
    }

    return constellation;
  }

  ///根据年月日获取年龄
  int getAge(int y, int m, int d) {
    int age = 0;
    DateTime dateTime = DateTime.now();

    int yearNow = dateTime.year;
    int monthNow = dateTime.month;
    int dayOfMonthNow = dateTime.day;

    int yearBirth = y;
    int monthBirth = m;
    int dayOfMonthBirth = d;
    age = yearNow - yearBirth; //计算整岁数
    if (monthNow <= monthBirth) {
      if (monthNow == monthBirth) {
        if (dayOfMonthNow < dayOfMonthBirth) age--;
      } else {
        age--; //当前月份在生日之前，年龄减一
      }
    }
    return age;
  }

  ///将类似于19960515 这种数据,转换成model
  DateParseModel parseWithInt(int v) {
    final str = v.toString();
    final y = str.substring(0, 4);
    final m = str.substring(4, 6);
    final d = str.substring(6, 8);
    return DateParseModel(int.parse(y), int.parse(m), int.parse(d));
  }
}

class DateParseModel {
  int y;
  int m;
  int d;

  DateParseModel(this.y, this.m, this.d);

  @override
  String toString() {
    return '年:$y 月:$m 日:$d';
  }
}
