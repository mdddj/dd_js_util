import 'dart:convert';
import 'dart:io';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('PictureSelection: 删除图片不会改动调用方的列表', (tester) async {
    final initUrls = <PictureSelectionItemModel>[
      PictureSelectionItemModel.file(file: _tempPng('a')),
      PictureSelectionItemModel.file(file: _tempPng('b')),
    ];

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PictureSelection(
            initUrls: initUrls,
            multipleChoice: true,
            maxCount: 5,
          ),
        ),
      ),
    );
    expect(find.byIcon(Icons.delete), findsNWidgets(2));

    await tester.tap(find.byIcon(Icons.delete).first);
    await tester.pumpAndSettle();

    expect(initUrls.length, 2, reason: '组件不应该修改调用方传入的列表');
    expect(find.byIcon(Icons.delete), findsOneWidget);
  });

  testWidgets('PictureSelection: 后传入的 controller 能拿到数据', (tester) async {
    final initUrls = <PictureSelectionItemModel>[
      PictureSelectionItemModel.file(file: _tempPng('c')),
    ];

    Widget build(PictureSelectionController? controller) => MaterialApp(
          home: Scaffold(
            body: PictureSelection(
              initUrls: initUrls,
              controller: controller,
              multipleChoice: true,
            ),
          ),
        );

    await tester.pumpWidget(build(null));
    final controller = PictureSelectionController();
    await tester.pumpWidget(build(controller));
    await tester.pump();

    expect(controller.getFiles.length, 1);
    expect(controller.length, 1);
  });

  testWidgets('PictureSelection: 卸载后 controller 不再指向已销毁的State', (tester) async {
    final controller = PictureSelectionController();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PictureSelection(
            initUrls: <PictureSelectionItemModel>[
              PictureSelectionItemModel.file(file: _tempPng('d')),
            ],
            controller: controller,
          ),
        ),
      ),
    );
    expect(controller.getFiles.length, 1);

    await tester.pumpWidget(const SizedBox());
    expect(controller.getFiles, isEmpty);
  });

  testWidgets('MySwiper: 每个数据项带稳定的 ValueKey', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SizedBox(
            height: 200,
            child: MySwiper(
              itemCount: 3,
              loop: true,
              itemBuilder: (context, index) => Text('page$index'),
            ),
          ),
        ),
      ),
    );

    final keys = tester
        .widgetList<KeyedSubtree>(find.byType(KeyedSubtree))
        .map((widget) => widget.key)
        .toList();
    expect(keys, contains(const ValueKey<int>(0)));
  });

  testWidgets('FlipCardComponent: 卸载后 controller 不再指向已销毁的State', (tester) async {
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
    expect(controller.state, isNotNull);

    await tester.pumpWidget(const SizedBox());
    expect(controller.state, isNull);

    //不应该抛异常
    controller.switchComponent();
    expect(tester.takeException(), isNull);
  });
}

const String _onePixelPng =
    'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg==';

File _tempPng(String name) {
  final dir = Directory.systemTemp.createTempSync('pic_$name');
  return File('${dir.path}/$name.png')
    ..writeAsBytesSync(base64Decode(_onePixelPng));
}
