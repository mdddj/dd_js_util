import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('RightPopupMenuButton: isRightMenu 时图标只响应右键', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: RightPopupMenuButton<int>(
              isRightMenu: true,
              itemBuilder: (context) =>
                  const <PopupMenuEntry<int>>[PopupMenuItem(value: 1, child: Text('item1'))],
              onSelected: (_) {},
            ),
          ),
        ),
      ),
    );

    //左键不应该弹菜单
    await tester.tap(find.byType(IconButton));
    await tester.pumpAndSettle();
    expect(find.text('item1'), findsNothing);

    //右键弹出
    await tester.tapAt(
      tester.getCenter(find.byType(IconButton)),
      buttons: kSecondaryButton,
    );
    await tester.pumpAndSettle();
    expect(find.text('item1'), findsOneWidget);
  });

  testWidgets('CupertinoDatePicker: RTL + hideDay 的偏角方向正确', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                hideDay: true,
                initialDateTime: DateTime(2026, 1, 31),
                onDateTimeChanged: (_) {},
              ),
            ),
          ),
        ),
      ),
    );

    final picker = tester.widget<cupertino.CupertinoPicker>(
        find.byType(cupertino.CupertinoPicker).at(1));
    expect(picker.offAxisFraction, -0.5);
  });

  testWidgets('CupertinoTimerPicker: 卸载时释放资源不报错', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Center(
          child: CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hms,
            initialTimerDuration: const Duration(minutes: 1),
            onTimerDurationChanged: (_) {},
          ),
        ),
      ),
    );
    expect(tester.takeException(), isNull);

    await tester.pumpWidget(const SizedBox());
    expect(tester.takeException(), isNull);
  });

  group('正则复用后行为不变', () {
    test('isNetworkImage 默认与自定义正则', () {
      expect('https://a.com/a.png'.isNetworkImage(), isTrue);
      expect('https://a.com/a.webp'.isNetworkImage(), isFalse);
      expect('https://a.com/a.webp'.isNetworkImage(r'\.webp$'), isTrue);
      expect('not a url'.isNetworkImage(), isFalse);
    });

    test('stringIsEmail', () {
      expect('a@b.com'.stringIsEmail, isTrue);
      expect('not-an-email'.stringIsEmail, isFalse);
    });

    test('ImageEx.isImageURL', () {
      expect('https://a.com/a.JPG'.urlManager.isImageURL, isTrue);
      expect('https://a.com/a.txt'.urlManager.isImageURL, isFalse);
    });
  });
}
