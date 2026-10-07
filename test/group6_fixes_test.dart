import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  testWidgets('SwitchAnimShow: 同类型 child 切换时有过渡动画', (tester) async {
    Widget build(bool condition) => MaterialApp(
          home: SwitchAnimShow(
            condition: condition,
            show: const Text('show'),
            elseShow: const Text('else'),
          ),
        );

    await tester.pumpWidget(build(false));
    expect(find.text('else'), findsOneWidget);

    await tester.pumpWidget(build(true));
    await tester.pump(const Duration(milliseconds: 100));
    //过渡期间新旧child同时存在;旧实现直接替换,同一时刻只剩一个
    expect(find.text('show'), findsOneWidget);
    expect(find.text('else'), findsOneWidget);

    await tester.pumpAndSettle();
    expect(find.text('else'), findsNothing);
  });

  testWidgets('RecordWidget: customBuild 收到状态(有权限)', (tester) async {
    _mockPermissionStatus(PermissionStatus.granted);
    final states = <RecordState>[];

    await tester.pumpWidget(
      MaterialApp(
        home: RecordWidget(customBuild: (state) {
          states.add(state);
          return Text(state.name);
        }),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 350));

    expect(states, contains(RecordState.initComplete));
    expect(find.text(RecordState.initComplete.name), findsOneWidget);
  });

  testWidgets('RecordWidget: 没有权限时进入 noPermission', (tester) async {
    _mockPermissionStatus(PermissionStatus.denied);

    await tester.pumpWidget(
      MaterialApp(
        home: RecordWidget(
          customBuild: (state) => Text(state.name),
        ),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 350));

    expect(find.text(RecordState.noPermission.name), findsOneWidget);
  });

  test('askMicrophonePermission: 被拒绝时返回 false 而不是抛异常', () async {
    _mockPermissionStatus(PermissionStatus.denied);
    expect(await KPermissionUtil.askMicrophonePermission(), isFalse);
  });

  test('askMicrophonePermission: 授权时返回 true', () async {
    _mockPermissionStatus(PermissionStatus.granted);
    expect(await KPermissionUtil.askMicrophonePermission(), isTrue);
  });

  testWidgets('askPhotoPermissioin: 授权时返回 true', (tester) async {
    _mockPermissionStatus(PermissionStatus.granted);
    late BuildContext context;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(builder: (c) {
          context = c;
          return const SizedBox();
        }),
      ),
    );
    expect(await KPermissionUtil.askPhotoPermissioin(context), isTrue);
  });

  testWidgets('MySwiper: 父级频繁重建时 autoplay 仍然会翻页', (tester) async {
    final changed = <int>[];
    Widget build() => MaterialApp(
          home: Scaffold(
            body: SizedBox(
              height: 200,
              child: MySwiper(
                itemCount: 3,
                autoplay: true,
                autoplayDelay: 200,
                duration: 50,
                loop: true,
                onIndexChanged: changed.add,
                itemBuilder: (context, index) => Text('page$index'),
              ),
            ),
          ),
        );

    await tester.pumpWidget(build());
    //每 50ms 重建一次父级(小于 autoplayDelay)
    for (var i = 0; i < 8; i++) {
      await tester.pump(const Duration(milliseconds: 50));
      await tester.pumpWidget(build());
    }

    expect(changed, isNotEmpty, reason: '重建间隔小于 autoplayDelay 时也要能翻页');
  });
}

///模拟 permission_handler 的平台响应
void _mockPermissionStatus(PermissionStatus status) {
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(
    const MethodChannel('flutter.baseflow.com/permissions/methods'),
    (MethodCall call) async {
      if (call.method == 'requestPermissions') {
        final requested = (call.arguments as List).cast<int>();
        return <int, int>{for (final value in requested) value: status.index};
      }
      if (call.method == 'checkPermissionStatus') {
        return status.index;
      }
      return null;
    },
  );
}
