import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LazyIndexedStack: children 数量变化不会越界', (tester) async {
    Widget build(int count) => MaterialApp(
          home: LazyIndexedStack(
            index: count - 1,
            children: List<Widget>.generate(count, (i) => Text('child$i')),
          ),
        );

    await tester.pumpWidget(build(1));
    expect(tester.takeException(), isNull);

    //1 -> 3, 旧实现 _activatedList 不扩容会在 build 里 RangeError
    await tester.pumpWidget(build(3));
    expect(tester.takeException(), isNull);
    expect(find.text('child2'), findsOneWidget);

    //3 -> 2
    await tester.pumpWidget(build(2));
    expect(tester.takeException(), isNull);
    expect(find.text('child1'), findsOneWidget);
  });

  testWidgets('FlipCardComponent: 动画未结束时卸载不会触发 Ticker 断言', (tester) async {
    final controller = FlipCardComponentController();
    await tester.pumpWidget(
      MaterialApp(
        home: FlipCardComponent(
          controller: controller,
          frontComponent: const Text('front'),
          backComponent: const Text('back'),
        ),
      ),
    );

    controller.switchComponent();
    await tester.pump(const Duration(milliseconds: 100));
    await tester.pumpWidget(const SizedBox());

    expect(tester.takeException(), isNull);
  });

  testWidgets('FlipCardComponent: valueChanged 只在翻面时回调一次', (tester) async {
    final controller = FlipCardComponentController();
    final calls = <bool>[];
    await tester.pumpWidget(
      MaterialApp(
        home: FlipCardComponent(
          controller: controller,
          valueChanged: calls.add,
          frontComponent: const Text('front'),
          backComponent: const Text('back'),
        ),
      ),
    );

    controller.switchComponent();
    await tester.pumpAndSettle();

    expect(calls, <bool>[false]);
  });

  test('getMessageTimeWithString 按秒换算(不是毫秒)', () {
    final twoMinutesAgo = DateTime.now().subtract(const Duration(minutes: 2));
    expect(_format(twoMinutesAgo).getMessageTimeWithString, '2分钟前');
  });

  testWidgets('showIosDialog: 只传 content(空msg)也会显示', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        builder: FlutterSmartDialog.init(),
        home: Builder(
          builder: (context) => TextButton(
            onPressed: () => showIosDialog('', content: const Text('CONTENT')),
            child: const Text('open'),
          ),
        ),
      ),
    );

    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    expect(find.text('CONTENT'), findsOneWidget);
  });
}

String _format(DateTime t) {
  String p2(int v) => v.toString().padLeft(2, '0');
  return '${t.year}-${p2(t.month)}-${p2(t.day)} '
      '${p2(t.hour)}:${p2(t.minute)}:${p2(t.second)}';
}
