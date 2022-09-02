import 'package:flutter/material.dart';

import '../api/base.dart';
import '../ext/widget/simple_appbar.dart';

/// 对字符串的扩展
extension StringExt on String {
  /// 修复中英文下文本自动被截断的bug。
  /// 原理是每个字符后面加一个“0”宽字符。
  ///
  /// 参考资料：
  /// [https://blog.csdn.net/lhj_android/article/details/119737478]
  ///
  String get fixAutoLines => Characters(this).join('\u{200B}');



  Widget fontSizeText(double fontSize,{Color? color,FontWeight? fontWeight}) => Text(this,style: TextStyle(fontSize: fontSize,color: color,fontWeight: fontWeight),);
  PreferredSizeWidget get appbar => SimpleAppbar(title: this);

  @Doc(message: '首字母大写')
  String get firstChatToUpperCase => '${this[0].toUpperCase()}${substring(1)}';

}
