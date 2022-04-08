
import 'dart:async';

import 'package:flutter/services.dart';

class DdJsUtil {
  static const MethodChannel _channel =
      const MethodChannel('dd_js_util');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// 判断浏览器是否为微信浏览器
  static Future<bool> get isWeChatBrowser async {
    return await _channel.invokeMethod('isWeChatBrowser');
  }


}

