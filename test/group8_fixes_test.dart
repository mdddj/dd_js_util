import 'dart:typed_data';

import 'package:dd_js_util/dd_js_util.dart';
import 'package:dd_js_util/model/models.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('customStampStr: 时分秒保持两位,月/日去掉前导零', () {
    final time = DateTime(2026, 10, 7, 9, 5, 3);
    expect(
      customStampStr(
        timestamp: time.millisecondsSinceEpoch ~/ 1000,
        date: 'YY年MM月DD日 hh:mm:ss',
      ),
      '2026年10月7日 09:05:03',
    );
    expect(
      customStampStr(
        timestamp: time.millisecondsSinceEpoch ~/ 1000,
        date: 'YY-MM-DD hh:mm',
        toInt: false,
      ),
      '2026-10-07 09:05',
    );
  });

  test('MyPlatform: web 既不是桌面也不是移动端', () {
    expect(const MyPlatform.web().isDesktop, isFalse);
    expect(const MyPlatform.web().isMobile, isFalse);
    expect(const MyPlatform.macos().isDesktop, isTrue);
    expect(const MyPlatform.windows().isDesktop, isTrue);
    expect(const MyPlatform.android().isMobile, isTrue);
    expect(const MyPlatform.android().isDesktop, isFalse);
  });

  group('HttpMethod 映射成真实 verb', () {
    test('probuf 走 POST', () async {
      final api = _VerbApi(HttpMethod.probuf);
      final model = await api.request(const RequestParams(showDefaultLoading: false));
      expect(model, isNotNull);
      expect(api.adapter.lastRequest?.method.toUpperCase(), 'POST');
      expect(api.adapter.lastRequest?.contentType, kProtobufContentType);
    });

    test('update 走 PATCH', () async {
      final api = _VerbApi(HttpMethod.update);
      await api.request(const RequestParams(showDefaultLoading: false));
      expect(api.adapter.lastRequest?.method.toUpperCase(), 'PATCH');
    });

    test('get/post 保持原样', () async {
      final getApi = _VerbApi(HttpMethod.get);
      await getApi.request(const RequestParams(showDefaultLoading: false));
      expect(getApi.adapter.lastRequest?.method.toUpperCase(), 'GET');

      final postApi = _VerbApi(HttpMethod.post);
      await postApi.request(const RequestParams(showDefaultLoading: false));
      expect(postApi.adapter.lastRequest?.method.toUpperCase(), 'POST');
    });
  });
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

class _VerbApi extends BaseApi<DartTypeModel> {
  _VerbApi(HttpMethod method) : super('/ping', httpMethod: method) {
    options = options.copyWith(baseUrl: 'http://example.test');
  }

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
