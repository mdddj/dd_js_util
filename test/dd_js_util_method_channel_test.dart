import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dd_js_util/dd_js_util_method_channel.dart';

void main() {
  MethodChannelDdJsUtil platform = MethodChannelDdJsUtil();
  const MethodChannel channel = MethodChannel('dd_js_util');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
