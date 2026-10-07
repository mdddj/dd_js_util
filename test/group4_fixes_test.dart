import 'dart:convert';
import 'dart:io';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('AskStringDialog: 重建不会丢掉已输入的内容', (tester) async {
    Future<void> pumpApp() => tester.pumpWidget(
          MaterialApp(
            home: Builder(
              builder: (context) => TextButton(
                onPressed: () => AskStringDialog.show(context),
                child: const Text('open'),
              ),
            ),
          ),
        );

    await pumpApp();
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(CupertinoTextField), 'hello');
    await tester.pump();
    expect(find.text('hello'), findsOneWidget);

    //整体重建,旧实现会在build里新建controller导致输入被清空
    await pumpApp();
    await tester.pumpAndSettle();

    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('SimpleApiPageV2: 请求失败不会一直转圈', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SimpleApiPageV2(
          api: _FailApi(),
          build: (json, state) => const Text('DATA'),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(find.byType(CircularProgressIndicator), findsNothing);
    expect(find.text('暂无数据'), findsOneWidget);
    expect(
      tester.state<SimpleApiPageV2State>(find.byType(SimpleApiPageV2)).error,
      isNotNull,
    );
  });

  testWidgets('KeyboardMixin: dispose 后 post-frame 回调不会再用 ref', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(home: _KeyboardPage()),
      ),
    );

    tester
        .state<_KeyboardPageState>(find.byType(_KeyboardPage))
        .didChangeMetrics();
    //卸载后再执行 post-frame 回调
    await tester.pumpWidget(const SizedBox());
    await tester.pump();

    expect(tester.takeException(), isNull);
  });

  testWidgets('ImageCutWidget: 裁剪失败不崩溃也不退出页面', (tester) async {
    final file = File(
        '${Directory.systemTemp.createTempSync('image_cut').path}/one.png')
      ..writeAsBytesSync(base64Decode(_onePixelPng));

    await tester.pumpWidget(MaterialApp(home: ImageCutWidget(file: file)));
    await tester.pumpAndSettle();

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(find.byType(ImageCutWidget), findsOneWidget);
  });
}

const String _onePixelPng =
    'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg==';

class _FailApi extends BaseApi<WrapJson> {
  _FailApi() : super('/fail');

  @override
  Future<WrapJson> request([RequestParams options = const RequestParams()]) {
    throw BaseApiException.businessException(message: 'boom');
  }

  @override
  WrapJson covertToModel(DartTypeModel data, RequestParams param) {
    throw UnimplementedError();
  }
}

class _KeyboardPage extends ConsumerStatefulWidget {
  const _KeyboardPage();

  @override
  ConsumerState<_KeyboardPage> createState() => _KeyboardPageState();
}

class _KeyboardPageState extends ConsumerState<_KeyboardPage>
    with KeyboardMixin<_KeyboardPage> {
  @override
  Widget build(BuildContext context) => const Text('keyboard');
}
