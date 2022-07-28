import 'dart:async';
// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the DdJsUtil plugin.
class DdJsUtilWeb {
  static void registerWith(Registrar registrar) {
    final MethodChannel channel = MethodChannel(
      'dd_js_util',
      const StandardMethodCodec(),
      registrar,
    );

    final pluginInstance = DdJsUtilWeb();
    channel.setMethodCallHandler(pluginInstance.handleMethodCall);
  }

  /// Handles method calls over the MethodChannel of this plugin.
  /// Note: Check the "federated" architecture for a new way of doing this:
  /// https://flutter.dev/go/federated-plugins
  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'getPlatformVersion':
        return getPlatformVersion();
      case 'isWeChatBrowser':
        return isWeChatBrowser();
      default:
        throw PlatformException(
          code: 'Unimplemented',
          details: 'dd_js_util for web doesn\'t implement \'${call.method}\'',
        );
    }
  }

  /// Returns a [String] containing the version of the platform.
  Future<String> getPlatformVersion() {
    final version = html.window.navigator.userAgent;
    return Future.value(version);
  }

  /// 判断是否为微信浏览器
  bool isWeChatBrowser() {
    final ua = html.window.navigator.userAgent.toLowerCase();
    return ua.contains('micromessenger');
  }
}
