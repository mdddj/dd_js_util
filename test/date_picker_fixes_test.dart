import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('minuteInterval: 滚到最小值以下会停回最小分钟(而不是跳到 45 分)', (tester) async {
    final changed = <DateTime>[];
    await tester.pumpWidget(
      MaterialApp(
        home: Center(
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.time,
            use24hFormat: true,
            minuteInterval: 15,
            initialDateTime: DateTime(2026, 1, 1, 10, 15),
            minimumDate: DateTime(2026, 1, 1, 10, 15),
            onDateTimeChanged: changed.add,
          ),
        ),
      ),
    );

    //LTR + 24h: 第 0 个滚轮是小时, 第 1 个是分钟; 向下拖一格 15 分 -> 00 分(低于最小值)
    await _dragWheel(tester, index: 1, dy: 32);

    expect(changed, isNotEmpty);
    expect(changed.last, DateTime(2026, 1, 1, 10, 15));
  });

  testWidgets('hideDay: 1月31日切到2月会回调2月最后一天', (tester) async {
    final changed = <DateTime>[];
    await tester.pumpWidget(
      MaterialApp(
        home: Center(
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            hideDay: true,
            initialDateTime: DateTime(2026, 1, 31),
            onDateTimeChanged: changed.add,
          ),
        ),
      ),
    );

    //en_US 默认顺序 monthDayYear, hideDay 去掉 day 后第 0 个滚轮是月份; 向上拖一格 1月 -> 2月
    await _dragWheel(tester, index: 0, dy: -32);

    expect(changed, isNotEmpty);
    expect(changed.last, DateTime(2026, 2, 28));
  });
}

///拖动第[index]个滚轮一格
Future<void> _dragWheel(
  WidgetTester tester, {
  required int index,
  required double dy,
}) async {
  final finder = find.byType(cupertino.CupertinoPicker).at(index);
  final gesture = await tester.startGesture(tester.getCenter(finder));
  await gesture.moveBy(Offset(0, dy));
  await tester.pump();
  await gesture.up();
  await tester.pumpAndSettle();
}
