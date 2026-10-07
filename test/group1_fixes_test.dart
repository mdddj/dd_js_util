import 'dart:typed_data';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/models.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('map 扩展', () {
    test('mapValueGetWithListString 取的是 value 而不是 key', () {
      final map = <String, dynamic>{'a': [1, 'x'], 'b': 'not-a-list'};
      expect(map.mapValueGetWithListString('a'), <String>['1', 'x']);
      expect(map.mapValueGetWithListString('b'), isEmpty);
      expect(map.mapValueGetWithListString('missing'), isEmpty);
    });

    test('getDynamicList 取的是 value 而不是 key', () {
      final map = <String, dynamic>{'a': [1, 'x']};
      expect(map.getDynamicList('a'), <dynamic>[1, 'x']);
      expect(map.getDynamicList('missing'), isEmpty);
    });

    test('firbaseAnalysisParams 只保留 String/num', () {
      final params = <String, dynamic>{
        's': 'v',
        'i': 1,
        'd': 1.5,
        'bool': true,
        'list': <int>[],
        'nil': null,
      }.firbaseAnalysisParams;
      expect(params.keys.toSet(), <String>{'s', 'i', 'd'});
    });
  });

  testWidgets('paddingWithObj 不丢 child', (tester) async {
    await tester.pumpWidget(
      MaterialApp(home: const Text('hello').paddingWithObj(const EdgeInsets.all(8))),
    );
    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('CountDown: 无 endTime 不抛异常, 小时按 24 取模', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: CountDown(key: ValueKey('sec'), secondBuild: _second)),
    );
    await tester.pump();
    expect(tester.takeException(), isNull);

    await tester.pumpWidget(
      MaterialApp(
        home: CountDown(
          key: const ValueKey('full'),
          endTime: _format(DateTime.now()
              .add(const Duration(days: 1, hours: 5, minutes: 2))),
          autoStart: true,
          interval: const Duration(milliseconds: 20),
          builder: (context, day, hour, minute, second, millisecond) =>
              Text('$day-$hour-$minute'),
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 60));
    expect(tester.takeException(), isNull);
    expect(find.text('1-5-1'), findsOneWidget);

    //卸载, 让 Timer 被 dispose 取消
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('失败后重试成功不再显示"空空如也"', (tester) async {
    final api = _FakeApi();
    await tester.pumpWidget(MaterialApp(home: _Page(api: api)));
    await tester.pumpAndSettle();
    expect(find.text('ERR'), findsOneWidget);

    api.shouldFail = false;
    await tester.state<_PageState>(find.byType(_Page)).refresh();
    await tester.pumpAndSettle();

    expect(find.text('空空如也'), findsNothing);
    expect(find.text('data:ok'), findsOneWidget);
  });

  test('拦截器只注册一次, options 里的 baseUrl 生效', () async {
    final api = _TestApi();
    api.options = api.options.copyWith(baseUrl: 'http://example.test');
    var interceptorHits = 0;
    api.interceptions = api.interceptions.add(
      dio.InterceptorsWrapper(
        onRequest: (options, handler) {
          interceptorHits++;
          handler.next(options);
        },
      ),
    );

    for (var i = 0; i < 3; i++) {
      await api.request(const RequestParams(showDefaultLoading: false));
    }

    expect(interceptorHits, 3,
        reason: '拦截器被重复注册时单次请求会执行多次');
    expect(api.adapter.lastRequest?.uri.host, 'example.test');
  });
}

Widget _second(int seconds) => Text('$seconds');

String _format(DateTime t) {
  String p2(int v) => v.toString().padLeft(2, '0');
  return '${t.year}-${p2(t.month)}-${p2(t.day)} '
      '${p2(t.hour)}:${p2(t.minute)}:${p2(t.second)}';
}

class _FakeAdapter implements dio.HttpClientAdapter {
  dio.RequestOptions? lastRequest;

  @override
  Future<dio.ResponseBody> fetch(
    dio.RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    lastRequest = options;
    return dio.ResponseBody.fromString(
      '{"ok":true}',
      200,
      headers: <String, List<String>>{
        dio.Headers.contentTypeHeader: <String>[dio.Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

class _TestApi extends BaseApi<DartTypeModel> {
  _TestApi() : super('/ping');

  final _FakeAdapter adapter = _FakeAdapter();

  @override
  Future<dio.Dio> getDio(dio.BaseOptions baseOptions) async {
    final d = await super.getDio(baseOptions);
    d.httpClientAdapter = adapter;
    return d;
  }

  @override
  DartTypeModel covertToModel(DartTypeModel data, RequestParams param) => data;
}

class _FakeApi extends BaseApi<String> {
  _FakeApi() : super('/fake');

  bool shouldFail = true;

  @override
  Future<String> request(
      [RequestParams options = const RequestParams()]) async {
    if (shouldFail) {
      throw BaseApiException.businessException(message: 'boom');
    }
    return 'ok';
  }

  @override
  String covertToModel(DartTypeModel data, RequestParams param) => 'ok';
}

class _Page extends StatefulWidget {
  const _Page({required this.api});

  final _FakeApi api;

  @override
  State<_Page> createState() => _PageState();
}

class _PageState extends State<_Page>
    with MyBasePage<_FakeApi, String, _Page, String> {
  @override
  _FakeApi get api => widget.api;

  @override
  String getErrorMessage(BaseApiException exception) => 'ERR';

  @override
  Widget renderBody(String pageData) => Text('data:$pageData');

  @override
  String? responseHandle(String response) => response;
}
