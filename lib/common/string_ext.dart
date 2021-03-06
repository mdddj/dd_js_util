import 'package:flutter/material.dart';

/// 对字符串的扩展
extension StringExt on String {
  /// 修复中英文下文本自动被截断的bug。
  /// 原理是每个字符后面加一个“0”宽字符。
  ///
  /// 参考资料：
  /// [https://blog.csdn.net/lhj_android/article/details/119737478]
  ///
  String get fixAutoLines => Characters(this).join('\u{200B}');
}
