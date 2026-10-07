import 'dart:typed_data';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  test('asT<num> 能解析小数', () {
    expect(asT<num>('1.5'), 1.5);
    expect(asT<num>('3'), 3);
    expect(asT<double>('1.5'), 1.5);
    expect(asT<int>('3'), 3);
    expect(asT<String>('abc'), 'abc');
    expect(asT<int>('abc', 7), 7);
  });

  test('tryCatch 能吞掉异步异常', () async {
    tryCatch(() async => throw Exception('async boom'));
    await Future<void>.delayed(const Duration(milliseconds: 50));
    //走到这里就说明没有未捕获的异步异常
    expect(true, isTrue);
  });

  testWidgets('CatchBaseMixin: 加载失败会走错误界面', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: _CatchPage()));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 350));

    final state = tester.state<_CatchPageState>(find.byType(_CatchPage));
    expect(state.cacheError, isNotNull);
    expect(find.text('ERR'), findsOneWidget);
  });

  test('DartTypeModel.createFrom: 标量 JSON 字符串按解码结果归类', () {
    expect(DartTypeModel.createFrom('123'), isA<NumData>());
    expect(DartTypeModel.createFrom('1.5'), isA<NumData>());
    expect(DartTypeModel.createFrom('true'), isA<BoolData>());
    expect(DartTypeModel.createFrom('"abc"'), isA<StringData>());
    expect(DartTypeModel.createFrom('null'), isA<NullData>());
    expect(DartTypeModel.createFrom('{"a":1}'), isA<JsonData>());
    expect(DartTypeModel.createFrom('[1,2]'), isA<ListData>());
    expect(DartTypeModel.createFrom('not json'), isA<StringData>());
  });

  test('FetchRawByUrl: 保留调用方传入的 headers', () async {
    final api = _RawApi();
    await api.request(const RequestParams(
      showDefaultLoading: false,
      headers: <String, dynamic>{'X-Test': '1'},
    ));

    expect(api.adapter.lastRequest?.headers['X-Test'], '1');
    expect(api.adapter.lastRequest?.uri.toString(),
        'http://example.test/raw');
  });

  test('BaseApi.download: 缺少参数抛业务异常而不是 assert', () async {
    final api = _DownloadApi();
    await expectLater(
      api.download(const RequestParams(showDefaultLoading: false)),
      throwsA(isA<BaseApiException>()),
    );
    await expectLater(
      api.download(const RequestParams(
        showDefaultLoading: false,
        downloadUrl: 'http://example.test/a.png',
      )),
      throwsA(isA<BaseApiException>()),
    );
  });

  testWidgets('CountDown: 结束后数字归零', (tester) async {
    //deadline 会被截断到秒,所以实际剩余 1~2 秒
    final endTime = _format(DateTime.now().add(const Duration(seconds: 2)));
    final rendered = <String>[];

    await tester.pumpWidget(
      MaterialApp(
        home: CountDown(
          endTime: endTime,
          autoStart: true,
          interval: const Duration(milliseconds: 50),
          builder: (context, day, hour, minute, second, millisecond) {
            final text = '$day-$hour-$minute-$second-$millisecond';
            rendered.add(text);
            return Text(text);
          },
        ),
      ),
    );

    //先让倒计时跑起来
    await tester.pump(const Duration(milliseconds: 100));
    expect(rendered.any((text) => text != '0-0-0-0-0'), isTrue,
        reason: '倒计时过程中应该渲染出非零数字');

    //让真实时间越过deadline(DateTime.now 不受tester的假时钟影响)
    await tester.runAsync(
        () => Future<void>.delayed(const Duration(seconds: 3)));
    //下一次tick发现已结束,数字归零
    await tester.pump(const Duration(milliseconds: 100));

    expect(rendered.last, '0-0-0-0-0');
    expect(find.text('0-0-0-0-0'), findsOneWidget);

    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('CountDown: 卸载后 controller 不再指向已销毁的State', (tester) async {
    final controller = CountDownController();
    await tester.pumpWidget(
      MaterialApp(
        home: CountDown(
          controller: controller,
          endTime: _format(DateTime.now().add(const Duration(hours: 1))),
          builder: (context, day, hour, minute, second, millisecond) =>
              Text('$day-$hour-$minute-$second-$millisecond'),
        ),
      ),
    );
    await tester.pumpWidget(const SizedBox());

    //不应该在已销毁的State上装一个没人取消的Timer
    controller.start();
    await tester.pump(const Duration(milliseconds: 200));
    expect(tester.takeException(), isNull);
  });

  testWidgets('KeyboardMixin: 页面销毁后全局键盘高度复位', (tester) async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: const MaterialApp(home: _KeyboardPage()),
      ),
    );

    container.read(myKeyBoardHeight.notifier).state = 200;
    expect(container.read(myKeyBoardHeight), 200);

    await tester.pumpWidget(const SizedBox());
    expect(container.read(myKeyBoardHeight), 0);
  });
}

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

class _RawApi extends FetchRawByUrl {
  _RawApi() : super('http://example.test/raw');

  final _FakeAdapter adapter = _FakeAdapter();

  @override
  Future<dio.Dio> getDio(dio.BaseOptions baseOptions) async {
    final d = await super.getDio(baseOptions);
    d.httpClientAdapter = adapter;
    return d;
  }
}

class _DownloadApi extends BaseApi<DartTypeModel> {
  _DownloadApi() : super('/download');

  @override
  DartTypeModel covertToModel(DartTypeModel data, RequestParams param) => data;
}

class _CatchPage extends StatefulWidget {
  const _CatchPage();

  @override
  State<_CatchPage> createState() => _CatchPageState();
}

class _CatchPageState extends State<_CatchPage>
    with CatchBaseMixin<_CatchPage, String> {
  @override
  Future<String> get loadCatchModel async => throw Exception('boom');

  @override
  Widget buildWidget(String cache) => Text('data:$cache');

  @override
  Widget buildCacheErrorWidget(Object error) => const Text('ERR');
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
