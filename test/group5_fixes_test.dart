import 'dart:convert';
import 'dart:io';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/models.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_ce/hive.dart';

void main() {
  group('IList 更新', () {
    test('updateAll 每个元素只更新一次', () {
      final list = <int>[1, 2, 1].lock;
      expect(list.updateAll((v) => v + 1), <int>[2, 3, 2]);
    });

    test('updateAllWhere 只改命中的元素', () {
      final list = <int>[1, 2].lock;
      expect(list.updateAllWhere((e) => e <= 2, (v) => v * 2), <int>[2, 4]);
    });

    test('updateItemWithIndex / updateLast / updateFirst 按下标定位', () {
      final list = <int>[5, 3, 5].lock;
      expect(list.updateItemWithIndex(2, (v) => v * 10), <int>[5, 3, 50]);
      expect(list.updateLast((v) => v * 10), <int>[5, 3, 50]);
      expect(list.updateFirst((v) => v * 10), <int>[50, 3, 5]);
    });
  });

  testWidgets('screenWidth 不会因为键盘(viewInsets)变化而重建', (tester) async {
    var builds = 0;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(builder: (context) {
          builds++;
          context.screenWidth; //注册依赖
          return const SizedBox();
        }),
      ),
    );
    expect(builds, 1);

    addTearDown(tester.view.reset);
    tester.view.viewInsets = const FakeViewPadding(bottom: 300);
    await tester.pump();

    expect(builds, 1);
  });

  testWidgets('HiveConsumerWidget: 重建不会重复 openBox', (tester) async {
    var boxCalls = 0;
    Widget build() => MaterialApp(home: _TestHiveWidget(() => boxCalls++));

    await tester.pumpWidget(build());
    await tester.pumpAndSettle();
    await tester.pumpWidget(build());
    await tester.pumpAndSettle();

    expect(boxCalls, 1);
  });

  testWidgets('CupertinoTimerPicker: 重建不会新建滚轮controller', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Center(
          child: CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.hms,
            initialTimerDuration: const Duration(hours: 1, minutes: 2, seconds: 3),
            onTimerDurationChanged: (_) {},
          ),
        ),
      ),
    );

    final before = _hourController(tester);
    //滚一格触发一次 setState 重建
    final gesture = await tester.startGesture(
        tester.getCenter(find.byType(cupertino.CupertinoPicker).at(0)));
    await gesture.moveBy(const Offset(0, -32));
    await tester.pump();
    await gesture.up();
    await tester.pumpAndSettle();

    expect(identical(before, _hourController(tester)), isTrue);
  });

  testWidgets('ImageDefaultShow: 按控件尺寸解码,不是原图分辨率', (tester) async {
    final file = File(
        '${Directory.systemTemp.createTempSync('pic_show').path}/one.png')
      ..writeAsBytesSync(base64Decode(_onePixelPng));

    await tester.pumpWidget(
      MaterialApp(
        home: Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: ImageDefaultShow(PictureSelectionItemModel.file(file: file)),
          ),
        ),
      ),
    );

    final image = tester.widget<Image>(find.byType(Image));
    final provider = image.image;
    expect(provider, isA<ResizeImage>());
    expect(
      (provider as ResizeImage).width,
      (100 * tester.view.devicePixelRatio).round(),
    );
  });

  testWidgets('ImageView: 同一个 base64 图片重建不会重复解码进缓存', (tester) async {
    final image = MyImage.base64(base64Code: _onePixelPng);
    Widget build() => MaterialApp(home: ImageView(image: image));

    await tester.runAsync(() async {
      PaintingBinding.instance.imageCache.clear();
      await tester.pumpWidget(build());
      //Skeleton 是无限动画,pumpAndSettle 不会停下
      await Future<void>.delayed(const Duration(milliseconds: 200));
      await tester.pump();
      final firstSize = PaintingBinding.instance.imageCache.currentSize;
      expect(firstSize, greaterThan(0), reason: '图片缓存里应该有这张图');

      await tester.pumpWidget(build());
      await Future<void>.delayed(const Duration(milliseconds: 200));
      await tester.pump();

      expect(PaintingBinding.instance.imageCache.currentSize, firstSize);
    });
  });
}

const String _onePixelPng =
    'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg==';

FixedExtentScrollController? _hourController(WidgetTester tester) =>
    tester.widget<cupertino.CupertinoPicker>(
        find.byType(cupertino.CupertinoPicker).at(0)).scrollController;

class _TestHiveWidget extends HiveConsumerWidget<String> {
  const _TestHiveWidget(this.onBox);

  final VoidCallback onBox;

  @override
  Future<Box<String>> get box async {
    onBox();
    return _FakeBox<String>();
  }

  @override
  Widget builder(BuildContext context, Box<String> hiveBox, Widget? child) =>
      const Text('box');
}

class _FakeBox<T> implements Box<T> {
  @override
  Stream<BoxEvent> watch({dynamic key}) => const Stream<BoxEvent>.empty();

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
