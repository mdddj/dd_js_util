import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dd_js_util/dd_js_util.dart';

void main() {
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
    expect(await DdJsUtil.platformVersion, '42');
  });
}
