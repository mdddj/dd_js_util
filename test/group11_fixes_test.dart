import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_ce/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('ImageUtil: 反差色来自真实像素而不是压缩字节', (tester) async {
    //flutter_test 默认把 HttpClient mock 成 400,这里放行真实请求
    final savedOverrides = HttpOverrides.current;
    HttpOverrides.global = null;
    addTearDown(() => HttpOverrides.global = savedOverrides);

    await tester.runAsync(() async {
      final pngBytes = await _solidColorPng(const Color(0xFF3366CC));
      final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      addTearDown(() => server.close(force: true));
      server.listen((request) {
        request.response
          ..statusCode = 200
          ..headers.contentType = ContentType('image', 'png')
          ..add(pngBytes);
        request.response.close();
      });

      final color = await ImageUtil().getContrastColorFromNetworkImage(
          'http://${server.address.address}:${server.port}/a.png');

      //平均色就是 0x3366CC,反差色是它的取反
      expect(color, const Color.fromARGB(255, 255 - 0x33, 255 - 0x66, 255 - 0xCC));
    });
  });

  testWidgets('BaseApiDialog: 销毁后不再回调 result', (tester) async {
    final api = _SlowApi();
    final results = <String>[];

    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: BaseApiDialog<String, _SlowApi>(
            api: api,
            result: results.add,
          ),
        ),
      ),
    );
    //让 delayFunction 里的 microtask/延迟跑起来,请求进入等待
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 50));

    //销毁后再让请求成功
    await tester.pumpWidget(const SizedBox());
    api.completer.complete('data');
    await tester.pump();

    expect(results, isEmpty);
  });

  testWidgets('HiveConsumerWidget: 重建不会换新的 listenable', (tester) async {
    var boxCalls = 0;
    final box = _FakeBox<String>();
    Widget build() =>
        MaterialApp(home: _TestHiveWidget(box, () => boxCalls++));

    await tester.pumpWidget(build());
    await tester.pumpAndSettle();
    final first = _listenable(tester);

    await tester.pumpWidget(build());
    await tester.pumpAndSettle();
    final second = _listenable(tester);

    expect(boxCalls, 1);
    expect(identical(first, second), isTrue,
        reason: '每次重建都新建 listenable 会让 ValueListenableBuilder 重复订阅');
  });
}

ValueListenable<Box<String>> _listenable(WidgetTester tester) => tester
    .widget<ValueListenableBuilder<Box<String>>>(
        find.byType(ValueListenableBuilder<Box<String>>))
    .valueListenable;

Future<Uint8List> _solidColorPng(Color color) async {
  final recorder = ui.PictureRecorder();
  final canvas = Canvas(recorder);
  canvas.drawRect(
    const Rect.fromLTWH(0, 0, 8, 8),
    Paint()..color = color,
  );
  final image = await recorder.endRecording().toImage(8, 8);
  try {
    final data = await image.toByteData(format: ui.ImageByteFormat.png);
    return data!.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
  } finally {
    image.dispose();
  }
}

class _SlowApi extends BaseApi<String> {
  _SlowApi() : super('/slow');

  final Completer<String> completer = Completer<String>();

  @override
  Future<String> request([RequestParams options = const RequestParams()]) =>
      completer.future;

  @override
  String covertToModel(DartTypeModel data, RequestParams param) => 'x';
}

class _TestHiveWidget extends HiveConsumerWidget<String> {
  const _TestHiveWidget(this.hiveBox, this.onBox);

  final Box<String> hiveBox;
  final VoidCallback onBox;

  @override
  Future<Box<String>> get box async {
    onBox();
    return hiveBox;
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
