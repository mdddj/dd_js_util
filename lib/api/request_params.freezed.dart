// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestParams _$RequestParamsFromJson(Map<String, dynamic> json) {
  return _RequestParams.fromJson(json);
}

/// @nodoc
mixin _$RequestParams {
  bool get showErrorMsg => throw _privateConstructorUsedError;
  String get loadingText => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  Map<String, dynamic> get headers => throw _privateConstructorUsedError;
  bool get showDefaultLoading => throw _privateConstructorUsedError;
  @JsonKey(name: 'data', toJson: _dataToJson)
  dynamic get data => throw _privateConstructorUsedError;
  ResponseType? get responseType => throw _privateConstructorUsedError;
  bool? get nullParams => throw _privateConstructorUsedError;
  @igFreezedJson
  RequestEncoder? get requestEncoder => throw _privateConstructorUsedError;

  @igFreezedJson
  DioStart? get dioStart => throw _privateConstructorUsedError;

  bool? get returnIsString => throw _privateConstructorUsedError;

  @igFreezedJson
  bool get isFullUrl => throw _privateConstructorUsedError;

  @igFreezedJson
  InterceptorCall? get interceptorCall => throw _privateConstructorUsedError;

  @igFreezedJson
  UrlParseFormat? get urlParseFormat => throw _privateConstructorUsedError;

  @igFreezedJson
  ResponseResultCallback? get responseResultCallback => throw _privateConstructorUsedError;

  Map<String, dynamic>? get extra => throw _privateConstructorUsedError;

  @igFreezedJson
  CancelToken? get cancelToken => throw _privateConstructorUsedError;

  @igFreezedJson
  ProgressCallback? get onSendCallback => throw _privateConstructorUsedError;

  @igFreezedJson
  ProgressCallback? get onReceiveProgress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestParamsCopyWith<RequestParams> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestParamsCopyWith<$Res> {
  factory $RequestParamsCopyWith(
          RequestParams value, $Res Function(RequestParams) then) =
      _$RequestParamsCopyWithImpl<$Res, RequestParams>;
  @useResult
  $Res call(
      {bool showErrorMsg,
      String loadingText,
      String? contentType,
      Map<String, dynamic> headers,
      bool showDefaultLoading,
      @JsonKey(name: 'data', toJson: _dataToJson) dynamic data,
      ResponseType? responseType,
      bool? nullParams,
      @igFreezedJson RequestEncoder? requestEncoder,
      @igFreezedJson DioStart? dioStart,
      bool? returnIsString,
      @igFreezedJson bool isFullUrl,
      @igFreezedJson InterceptorCall? interceptorCall,
      @igFreezedJson UrlParseFormat? urlParseFormat,
      @igFreezedJson ResponseResultCallback? responseResultCallback,
      Map<String, dynamic>? extra,
      @igFreezedJson CancelToken? cancelToken,
      @igFreezedJson ProgressCallback? onSendCallback,
      @igFreezedJson ProgressCallback? onReceiveProgress});
}

/// @nodoc
class _$RequestParamsCopyWithImpl<$Res, $Val extends RequestParams>
    implements $RequestParamsCopyWith<$Res> {
  _$RequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showErrorMsg = null,
    Object? loadingText = null,
    Object? contentType = freezed,
    Object? headers = null,
    Object? showDefaultLoading = null,
    Object? data = freezed,
    Object? responseType = freezed,
    Object? nullParams = freezed,
    Object? requestEncoder = freezed,
    Object? dioStart = freezed,
    Object? returnIsString = freezed,
    Object? isFullUrl = null,
    Object? interceptorCall = freezed,
    Object? urlParseFormat = freezed,
    Object? responseResultCallback = freezed,
    Object? extra = freezed,
    Object? cancelToken = freezed,
    Object? onSendCallback = freezed,
    Object? onReceiveProgress = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMsg: null == showErrorMsg
          ? _value.showErrorMsg
          : showErrorMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingText: null == loadingText
          ? _value.loadingText
          : loadingText // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      showDefaultLoading: null == showDefaultLoading
          ? _value.showDefaultLoading
          : showDefaultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      responseType: freezed == responseType
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as ResponseType?,
      nullParams: freezed == nullParams
          ? _value.nullParams
          : nullParams // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestEncoder: freezed == requestEncoder
          ? _value.requestEncoder
          : requestEncoder // ignore: cast_nullable_to_non_nullable
              as RequestEncoder?,
      dioStart: freezed == dioStart
          ? _value.dioStart
          : dioStart // ignore: cast_nullable_to_non_nullable
              as DioStart?,
      returnIsString: freezed == returnIsString
          ? _value.returnIsString
          : returnIsString // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFullUrl: null == isFullUrl
          ? _value.isFullUrl
          : isFullUrl // ignore: cast_nullable_to_non_nullable
              as bool,
      interceptorCall: freezed == interceptorCall
          ? _value.interceptorCall
          : interceptorCall // ignore: cast_nullable_to_non_nullable
              as InterceptorCall?,
      urlParseFormat: freezed == urlParseFormat
          ? _value.urlParseFormat
          : urlParseFormat // ignore: cast_nullable_to_non_nullable
              as UrlParseFormat?,
      responseResultCallback: freezed == responseResultCallback
          ? _value.responseResultCallback
          : responseResultCallback // ignore: cast_nullable_to_non_nullable
              as ResponseResultCallback?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
      onSendCallback: freezed == onSendCallback
          ? _value.onSendCallback
          : onSendCallback // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
      onReceiveProgress: freezed == onReceiveProgress
          ? _value.onReceiveProgress
          : onReceiveProgress // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestParamsImplCopyWith<$Res> implements $RequestParamsCopyWith<$Res> {
  factory _$$RequestParamsImplCopyWith(_$RequestParamsImpl value, $Res Function(_$RequestParamsImpl) then) =
      __$$RequestParamsImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {bool showErrorMsg,
      String loadingText,
      String? contentType,
      Map<String, dynamic> headers,
      bool showDefaultLoading,
      @JsonKey(name: 'data', toJson: _dataToJson) dynamic data,
      ResponseType? responseType,
      bool? nullParams,
      @igFreezedJson RequestEncoder? requestEncoder,
      @igFreezedJson DioStart? dioStart,
      bool? returnIsString,
      @igFreezedJson bool isFullUrl,
      @igFreezedJson InterceptorCall? interceptorCall,
      @igFreezedJson UrlParseFormat? urlParseFormat,
      @igFreezedJson ResponseResultCallback? responseResultCallback,
      Map<String, dynamic>? extra,
      @igFreezedJson CancelToken? cancelToken,
      @igFreezedJson ProgressCallback? onSendCallback,
      @igFreezedJson ProgressCallback? onReceiveProgress});
}

/// @nodoc
class __$$RequestParamsImplCopyWithImpl<$Res> extends _$RequestParamsCopyWithImpl<$Res, _$RequestParamsImpl>
    implements _$$RequestParamsImplCopyWith<$Res> {
  __$$RequestParamsImplCopyWithImpl(_$RequestParamsImpl _value, $Res Function(_$RequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showErrorMsg = null,
    Object? loadingText = null,
    Object? contentType = freezed,
    Object? headers = null,
    Object? showDefaultLoading = null,
    Object? data = freezed,
    Object? responseType = freezed,
    Object? nullParams = freezed,
    Object? requestEncoder = freezed,
    Object? dioStart = freezed,
    Object? returnIsString = freezed,
    Object? isFullUrl = null,
    Object? interceptorCall = freezed,
    Object? urlParseFormat = freezed,
    Object? responseResultCallback = freezed,
    Object? extra = freezed,
    Object? cancelToken = freezed,
    Object? onSendCallback = freezed,
    Object? onReceiveProgress = freezed,
  }) {
    return _then(_$RequestParamsImpl(
      showErrorMsg: null == showErrorMsg
          ? _value.showErrorMsg
          : showErrorMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingText: null == loadingText
          ? _value.loadingText
          : loadingText // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      showDefaultLoading: null == showDefaultLoading
          ? _value.showDefaultLoading
          : showDefaultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      responseType: freezed == responseType
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as ResponseType?,
      nullParams: freezed == nullParams
          ? _value.nullParams
          : nullParams // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestEncoder: freezed == requestEncoder
          ? _value.requestEncoder
          : requestEncoder // ignore: cast_nullable_to_non_nullable
              as RequestEncoder?,
      dioStart: freezed == dioStart
          ? _value.dioStart
          : dioStart // ignore: cast_nullable_to_non_nullable
              as DioStart?,
      returnIsString: freezed == returnIsString
          ? _value.returnIsString
          : returnIsString // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFullUrl: null == isFullUrl
          ? _value.isFullUrl
          : isFullUrl // ignore: cast_nullable_to_non_nullable
              as bool,
      interceptorCall: freezed == interceptorCall
          ? _value.interceptorCall
          : interceptorCall // ignore: cast_nullable_to_non_nullable
              as InterceptorCall?,
      urlParseFormat: freezed == urlParseFormat
          ? _value.urlParseFormat
          : urlParseFormat // ignore: cast_nullable_to_non_nullable
              as UrlParseFormat?,
      responseResultCallback: freezed == responseResultCallback
          ? _value.responseResultCallback
          : responseResultCallback // ignore: cast_nullable_to_non_nullable
              as ResponseResultCallback?,
      extra: freezed == extra
          ? _value._extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
      onSendCallback: freezed == onSendCallback
          ? _value.onSendCallback
          : onSendCallback // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
      onReceiveProgress: freezed == onReceiveProgress
          ? _value.onReceiveProgress
          : onReceiveProgress // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestParamsImpl extends _RequestParams {
  const _$RequestParamsImpl(
      {this.showErrorMsg = true,
      this.loadingText = "loading...",
      this.contentType,
      final Map<String, dynamic> headers = const {},
      this.showDefaultLoading = true,
      @JsonKey(name: 'data', toJson: _dataToJson) this.data,
      this.responseType,
      this.nullParams,
      @igFreezedJson this.requestEncoder,
      @igFreezedJson this.dioStart,
      this.returnIsString,
      @igFreezedJson this.isFullUrl = false,
      @igFreezedJson this.interceptorCall,
      @igFreezedJson this.urlParseFormat,
      @igFreezedJson this.responseResultCallback,
      final Map<String, dynamic>? extra,
      @igFreezedJson this.cancelToken,
      @igFreezedJson this.onSendCallback,
      @igFreezedJson this.onReceiveProgress})
      : _headers = headers,
        _extra = extra,
        super._();

  factory _$RequestParamsImpl.fromJson(Map<String, dynamic> json) => _$$RequestParamsImplFromJson(json);

  @override
  @JsonKey()
  final bool showErrorMsg;
  @override
  @JsonKey()
  final String loadingText;
  @override
  final String? contentType;
  final Map<String, dynamic> _headers;
  @override
  @JsonKey()
  Map<String, dynamic> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  @JsonKey()
  final bool showDefaultLoading;
  @override
  @JsonKey(name: 'data', toJson: _dataToJson)
  final dynamic data;
  @override
  final ResponseType? responseType;
  @override
  final bool? nullParams;
  @override
  @igFreezedJson
  final RequestEncoder? requestEncoder;
  @override
  @igFreezedJson
  final DioStart? dioStart;
  @override
  final bool? returnIsString;
  @override
  @igFreezedJson
  final bool isFullUrl;
  @override
  @igFreezedJson
  final InterceptorCall? interceptorCall;
  @override
  @igFreezedJson
  final UrlParseFormat? urlParseFormat;
  @override
  @igFreezedJson
  final ResponseResultCallback? responseResultCallback;
  final Map<String, dynamic>? _extra;
  @override
  Map<String, dynamic>? get extra {
    final value = _extra;
    if (value == null) return null;
    if (_extra is EqualUnmodifiableMapView) return _extra;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @igFreezedJson
  final CancelToken? cancelToken;
  @override
  @igFreezedJson
  final ProgressCallback? onSendCallback;
  @override
  @igFreezedJson
  final ProgressCallback? onReceiveProgress;

  @override
  String toString() {
    return 'RequestParams(showErrorMsg: $showErrorMsg, loadingText: $loadingText, contentType: $contentType, headers: $headers, showDefaultLoading: $showDefaultLoading, data: $data, responseType: $responseType, nullParams: $nullParams, requestEncoder: $requestEncoder, dioStart: $dioStart, returnIsString: $returnIsString, isFullUrl: $isFullUrl, interceptorCall: $interceptorCall, urlParseFormat: $urlParseFormat, responseResultCallback: $responseResultCallback, extra: $extra, cancelToken: $cancelToken, onSendCallback: $onSendCallback, onReceiveProgress: $onReceiveProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestParamsImpl &&
            (identical(other.showErrorMsg, showErrorMsg) || other.showErrorMsg == showErrorMsg) &&
            (identical(other.loadingText, loadingText) || other.loadingText == loadingText) &&
            (identical(other.contentType, contentType) || other.contentType == contentType) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.showDefaultLoading, showDefaultLoading) ||
                other.showDefaultLoading == showDefaultLoading) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.responseType, responseType) ||
                other.responseType == responseType) &&
            (identical(other.nullParams, nullParams) ||
                other.nullParams == nullParams) &&
            (identical(other.requestEncoder, requestEncoder) ||
                other.requestEncoder == requestEncoder) &&
            (identical(other.dioStart, dioStart) ||
                other.dioStart == dioStart) &&
            (identical(other.returnIsString, returnIsString) ||
                other.returnIsString == returnIsString) &&
            (identical(other.isFullUrl, isFullUrl) || other.isFullUrl == isFullUrl) &&
            (identical(other.interceptorCall, interceptorCall) || other.interceptorCall == interceptorCall) &&
            (identical(other.urlParseFormat, urlParseFormat) || other.urlParseFormat == urlParseFormat) &&
            (identical(other.responseResultCallback, responseResultCallback) ||
                other.responseResultCallback == responseResultCallback) &&
            const DeepCollectionEquality().equals(other._extra, _extra) &&
            (identical(other.cancelToken, cancelToken) || other.cancelToken == cancelToken) &&
            (identical(other.onSendCallback, onSendCallback) || other.onSendCallback == onSendCallback) &&
            (identical(other.onReceiveProgress, onReceiveProgress) || other.onReceiveProgress == onReceiveProgress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        showErrorMsg,
        loadingText,
        contentType,
        const DeepCollectionEquality().hash(_headers),
        showDefaultLoading,
        const DeepCollectionEquality().hash(data),
        responseType,
        nullParams,
        requestEncoder,
        dioStart,
        returnIsString,
        isFullUrl,
        interceptorCall,
        urlParseFormat,
        responseResultCallback,
        const DeepCollectionEquality().hash(_extra),
        cancelToken,
        onSendCallback,
        onReceiveProgress
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestParamsImplCopyWith<_$RequestParamsImpl> get copyWith =>
      __$$RequestParamsImplCopyWithImpl<_$RequestParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestParamsImplToJson(
      this,
    );
  }
}

abstract class _RequestParams extends RequestParams {
  const factory _RequestParams(
      {final bool showErrorMsg,
      final String loadingText,
      final String? contentType,
      final Map<String, dynamic> headers,
      final bool showDefaultLoading,
      @JsonKey(name: 'data', toJson: _dataToJson) final dynamic data,
      final ResponseType? responseType,
      final bool? nullParams,
      @igFreezedJson final RequestEncoder? requestEncoder,
      @igFreezedJson final DioStart? dioStart,
      final bool? returnIsString,
      @igFreezedJson final bool isFullUrl,
      @igFreezedJson final InterceptorCall? interceptorCall,
      @igFreezedJson final UrlParseFormat? urlParseFormat,
      @igFreezedJson final ResponseResultCallback? responseResultCallback,
      final Map<String, dynamic>? extra,
      @igFreezedJson final CancelToken? cancelToken,
      @igFreezedJson final ProgressCallback? onSendCallback,
      @igFreezedJson final ProgressCallback? onReceiveProgress}) = _$RequestParamsImpl;

  const _RequestParams._() : super._();

  factory _RequestParams.fromJson(Map<String, dynamic> json) = _$RequestParamsImpl.fromJson;

  @override
  bool get showErrorMsg;

  @override
  String get loadingText;

  @override
  String? get contentType;

  @override
  Map<String, dynamic> get headers;

  @override
  bool get showDefaultLoading;
  @override
  @JsonKey(name: 'data', toJson: _dataToJson)
  dynamic get data;
  @override
  ResponseType? get responseType;
  @override
  bool? get nullParams;

  @override
  @igFreezedJson
  RequestEncoder? get requestEncoder;

  @override
  @igFreezedJson
  DioStart? get dioStart;
  @override
  bool? get returnIsString;

  @override
  @igFreezedJson
  bool get isFullUrl;

  @override
  @igFreezedJson
  InterceptorCall? get interceptorCall;

  @override
  @igFreezedJson
  UrlParseFormat? get urlParseFormat;

  @override
  @igFreezedJson
  ResponseResultCallback? get responseResultCallback;

  @override
  Map<String, dynamic>? get extra;

  @override
  @igFreezedJson
  CancelToken? get cancelToken;

  @override
  @igFreezedJson
  ProgressCallback? get onSendCallback;

  @override
  @igFreezedJson
  ProgressCallback? get onReceiveProgress;

  @override
  @JsonKey(ignore: true)
  _$$RequestParamsImplCopyWith<_$RequestParamsImpl> get copyWith => throw _privateConstructorUsedError;
}
