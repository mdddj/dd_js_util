import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'dd_js_util_method_channel.dart';

abstract class DdJsUtilPlatform extends PlatformInterface {
  /// Constructs a DdJsUtilPlatform.
  DdJsUtilPlatform() : super(token: _token);

  static final Object _token = Object();

  static DdJsUtilPlatform _instance = MethodChannelDdJsUtil();

  /// The default instance of [DdJsUtilPlatform] to use.
  ///
  /// Defaults to [MethodChannelDdJsUtil].
  static DdJsUtilPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DdJsUtilPlatform] when
  /// they register themselves.
  static set instance(DdJsUtilPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
