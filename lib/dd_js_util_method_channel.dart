import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'dd_js_util_platform_interface.dart';

/// An implementation of [DdJsUtilPlatform] that uses method channels.
class MethodChannelDdJsUtil extends DdJsUtilPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dd_js_util');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
