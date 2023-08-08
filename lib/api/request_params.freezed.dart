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

/// @nodoc
mixin _$RequestParams {
  bool get showErrorMsg => throw _privateConstructorUsedError;
  String get loadingText => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  Map<String, dynamic> get headers => throw _privateConstructorUsedError;
  bool get showDefaultLoading => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;
  ResponseType? get responseType => throw _privateConstructorUsedError;
  bool? get nullParams => throw _privateConstructorUsedError;
  RequestEncoder? get requestEncoder => throw _privateConstructorUsedError;
  DioStart? get dioStart => throw _privateConstructorUsedError;
  bool? get returnIsString => throw _privateConstructorUsedError;
  bool get isFullUrl => throw _privateConstructorUsedError;
  InterceptorCall? get interceptorCall => throw _privateConstructorUsedError;
  UrlParseFormat? get urlParseFormat => throw _privateConstructorUsedError;
  ResponseResultCallback? get responseResultCallback =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReLoginSuccess? get reLoginSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestParamsCopyWith<RequestParams> get copyWith =>
      throw _privateConstructorUsedError;
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
      dynamic data,
      ResponseType? responseType,
      bool? nullParams,
      RequestEncoder? requestEncoder,
      DioStart? dioStart,
      bool? returnIsString,
      bool isFullUrl,
      InterceptorCall? interceptorCall,
      UrlParseFormat? urlParseFormat,
      ResponseResultCallback? responseResultCallback,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ReLoginSuccess? reLoginSuccess});
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
    Object? reLoginSuccess = freezed,
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
      reLoginSuccess: freezed == reLoginSuccess
          ? _value.reLoginSuccess
          : reLoginSuccess // ignore: cast_nullable_to_non_nullable
              as ReLoginSuccess?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestParamsCopyWith<$Res>
    implements $RequestParamsCopyWith<$Res> {
  factory _$$_RequestParamsCopyWith(
          _$_RequestParams value, $Res Function(_$_RequestParams) then) =
      __$$_RequestParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showErrorMsg,
      String loadingText,
      String? contentType,
      Map<String, dynamic> headers,
      bool showDefaultLoading,
      dynamic data,
      ResponseType? responseType,
      bool? nullParams,
      RequestEncoder? requestEncoder,
      DioStart? dioStart,
      bool? returnIsString,
      bool isFullUrl,
      InterceptorCall? interceptorCall,
      UrlParseFormat? urlParseFormat,
      ResponseResultCallback? responseResultCallback,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ReLoginSuccess? reLoginSuccess});
}

/// @nodoc
class __$$_RequestParamsCopyWithImpl<$Res>
    extends _$RequestParamsCopyWithImpl<$Res, _$_RequestParams>
    implements _$$_RequestParamsCopyWith<$Res> {
  __$$_RequestParamsCopyWithImpl(
      _$_RequestParams _value, $Res Function(_$_RequestParams) _then)
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
    Object? reLoginSuccess = freezed,
  }) {
    return _then(_$_RequestParams(
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
      reLoginSuccess: freezed == reLoginSuccess
          ? _value.reLoginSuccess
          : reLoginSuccess // ignore: cast_nullable_to_non_nullable
              as ReLoginSuccess?,
    ));
  }
}

/// @nodoc

class _$_RequestParams extends _RequestParams {
  const _$_RequestParams(
      {this.showErrorMsg = true,
      this.loadingText = "loading...",
      this.contentType,
      final Map<String, dynamic> headers = const {},
      this.showDefaultLoading = true,
      this.data,
      this.responseType,
      this.nullParams,
      this.requestEncoder,
      this.dioStart,
      this.returnIsString,
      this.isFullUrl = false,
      this.interceptorCall,
      this.urlParseFormat,
      this.responseResultCallback,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.reLoginSuccess})
      : _headers = headers,
        super._();

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
  final dynamic data;
  @override
  final ResponseType? responseType;
  @override
  final bool? nullParams;
  @override
  final RequestEncoder? requestEncoder;
  @override
  final DioStart? dioStart;
  @override
  final bool? returnIsString;
  @override
  @JsonKey()
  final bool isFullUrl;
  @override
  final InterceptorCall? interceptorCall;
  @override
  final UrlParseFormat? urlParseFormat;
  @override
  final ResponseResultCallback? responseResultCallback;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ReLoginSuccess? reLoginSuccess;

  @override
  String toString() {
    return 'RequestParams(showErrorMsg: $showErrorMsg, loadingText: $loadingText, contentType: $contentType, headers: $headers, showDefaultLoading: $showDefaultLoading, data: $data, responseType: $responseType, nullParams: $nullParams, requestEncoder: $requestEncoder, dioStart: $dioStart, returnIsString: $returnIsString, isFullUrl: $isFullUrl, interceptorCall: $interceptorCall, urlParseFormat: $urlParseFormat, responseResultCallback: $responseResultCallback, reLoginSuccess: $reLoginSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestParams &&
            (identical(other.showErrorMsg, showErrorMsg) ||
                other.showErrorMsg == showErrorMsg) &&
            (identical(other.loadingText, loadingText) ||
                other.loadingText == loadingText) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
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
            (identical(other.isFullUrl, isFullUrl) ||
                other.isFullUrl == isFullUrl) &&
            (identical(other.interceptorCall, interceptorCall) ||
                other.interceptorCall == interceptorCall) &&
            (identical(other.urlParseFormat, urlParseFormat) ||
                other.urlParseFormat == urlParseFormat) &&
            (identical(other.responseResultCallback, responseResultCallback) ||
                other.responseResultCallback == responseResultCallback) &&
            (identical(other.reLoginSuccess, reLoginSuccess) ||
                other.reLoginSuccess == reLoginSuccess));
  }

  @override
  int get hashCode => Object.hash(
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
      reLoginSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestParamsCopyWith<_$_RequestParams> get copyWith =>
      __$$_RequestParamsCopyWithImpl<_$_RequestParams>(this, _$identity);
}

abstract class _RequestParams extends RequestParams {
  const factory _RequestParams(
      {final bool showErrorMsg,
      final String loadingText,
      final String? contentType,
      final Map<String, dynamic> headers,
      final bool showDefaultLoading,
      final dynamic data,
      final ResponseType? responseType,
      final bool? nullParams,
      final RequestEncoder? requestEncoder,
      final DioStart? dioStart,
      final bool? returnIsString,
      final bool isFullUrl,
      final InterceptorCall? interceptorCall,
      final UrlParseFormat? urlParseFormat,
      final ResponseResultCallback? responseResultCallback,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ReLoginSuccess? reLoginSuccess}) = _$_RequestParams;
  const _RequestParams._() : super._();

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
  dynamic get data;
  @override
  ResponseType? get responseType;
  @override
  bool? get nullParams;
  @override
  RequestEncoder? get requestEncoder;
  @override
  DioStart? get dioStart;
  @override
  bool? get returnIsString;
  @override
  bool get isFullUrl;
  @override
  InterceptorCall? get interceptorCall;
  @override
  UrlParseFormat? get urlParseFormat;
  @override
  ResponseResultCallback? get responseResultCallback;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ReLoginSuccess? get reLoginSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_RequestParamsCopyWith<_$_RequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}
