// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  String? get fullUrl => throw _privateConstructorUsedError;
  @igFreezedJson
  InterceptorCall? get interceptorCall => throw _privateConstructorUsedError;
  @igFreezedJson
  UrlParseFormat? get urlParseFormat => throw _privateConstructorUsedError;
  @igFreezedJson
  ResponseResultCallback? get responseResultCallback =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get extra => throw _privateConstructorUsedError;
  @igFreezedJson
  CancelToken? get cancelToken => throw _privateConstructorUsedError;
  @igFreezedJson
  ProgressCallback? get onSendCallback => throw _privateConstructorUsedError;
  @igFreezedJson
  ProgressCallback? get onReceiveProgress => throw _privateConstructorUsedError;
  String? get downloadUrl => throw _privateConstructorUsedError;
  @igFreezedJson
  File? get savePath => throw _privateConstructorUsedError;

  /// Serializes this RequestParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      @JsonKey(name: 'data', toJson: _dataToJson) dynamic data,
      ResponseType? responseType,
      bool? nullParams,
      @igFreezedJson RequestEncoder? requestEncoder,
      @igFreezedJson DioStart? dioStart,
      bool? returnIsString,
      @igFreezedJson String? fullUrl,
      @igFreezedJson InterceptorCall? interceptorCall,
      @igFreezedJson UrlParseFormat? urlParseFormat,
      @igFreezedJson ResponseResultCallback? responseResultCallback,
      Map<String, dynamic>? extra,
      @igFreezedJson CancelToken? cancelToken,
      @igFreezedJson ProgressCallback? onSendCallback,
      @igFreezedJson ProgressCallback? onReceiveProgress,
      String? downloadUrl,
      @igFreezedJson File? savePath});
}

/// @nodoc
class _$RequestParamsCopyWithImpl<$Res, $Val extends RequestParams>
    implements $RequestParamsCopyWith<$Res> {
  _$RequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
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
    Object? fullUrl = freezed,
    Object? interceptorCall = freezed,
    Object? urlParseFormat = freezed,
    Object? responseResultCallback = freezed,
    Object? extra = freezed,
    Object? cancelToken = freezed,
    Object? onSendCallback = freezed,
    Object? onReceiveProgress = freezed,
    Object? downloadUrl = freezed,
    Object? savePath = freezed,
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
      fullUrl: freezed == fullUrl
          ? _value.fullUrl
          : fullUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      savePath: freezed == savePath
          ? _value.savePath
          : savePath // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestParamsImplCopyWith<$Res>
    implements $RequestParamsCopyWith<$Res> {
  factory _$$RequestParamsImplCopyWith(
          _$RequestParamsImpl value, $Res Function(_$RequestParamsImpl) then) =
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
      @igFreezedJson String? fullUrl,
      @igFreezedJson InterceptorCall? interceptorCall,
      @igFreezedJson UrlParseFormat? urlParseFormat,
      @igFreezedJson ResponseResultCallback? responseResultCallback,
      Map<String, dynamic>? extra,
      @igFreezedJson CancelToken? cancelToken,
      @igFreezedJson ProgressCallback? onSendCallback,
      @igFreezedJson ProgressCallback? onReceiveProgress,
      String? downloadUrl,
      @igFreezedJson File? savePath});
}

/// @nodoc
class __$$RequestParamsImplCopyWithImpl<$Res>
    extends _$RequestParamsCopyWithImpl<$Res, _$RequestParamsImpl>
    implements _$$RequestParamsImplCopyWith<$Res> {
  __$$RequestParamsImplCopyWithImpl(
      _$RequestParamsImpl _value, $Res Function(_$RequestParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
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
    Object? fullUrl = freezed,
    Object? interceptorCall = freezed,
    Object? urlParseFormat = freezed,
    Object? responseResultCallback = freezed,
    Object? extra = freezed,
    Object? cancelToken = freezed,
    Object? onSendCallback = freezed,
    Object? onReceiveProgress = freezed,
    Object? downloadUrl = freezed,
    Object? savePath = freezed,
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
      fullUrl: freezed == fullUrl
          ? _value.fullUrl
          : fullUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      savePath: freezed == savePath
          ? _value.savePath
          : savePath // ignore: cast_nullable_to_non_nullable
              as File?,
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
      @igFreezedJson this.fullUrl,
      @igFreezedJson this.interceptorCall,
      @igFreezedJson this.urlParseFormat,
      @igFreezedJson this.responseResultCallback,
      final Map<String, dynamic>? extra,
      @igFreezedJson this.cancelToken,
      @igFreezedJson this.onSendCallback,
      @igFreezedJson this.onReceiveProgress,
      this.downloadUrl,
      @igFreezedJson this.savePath})
      : _headers = headers,
        _extra = extra,
        super._();

  factory _$RequestParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestParamsImplFromJson(json);

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
  final String? fullUrl;
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
  final String? downloadUrl;
  @override
  @igFreezedJson
  final File? savePath;

  @override
  String toString() {
    return 'RequestParams(showErrorMsg: $showErrorMsg, loadingText: $loadingText, contentType: $contentType, headers: $headers, showDefaultLoading: $showDefaultLoading, data: $data, responseType: $responseType, nullParams: $nullParams, requestEncoder: $requestEncoder, dioStart: $dioStart, returnIsString: $returnIsString, fullUrl: $fullUrl, interceptorCall: $interceptorCall, urlParseFormat: $urlParseFormat, responseResultCallback: $responseResultCallback, extra: $extra, cancelToken: $cancelToken, onSendCallback: $onSendCallback, onReceiveProgress: $onReceiveProgress, downloadUrl: $downloadUrl, savePath: $savePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestParamsImpl &&
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
            (identical(other.fullUrl, fullUrl) || other.fullUrl == fullUrl) &&
            (identical(other.interceptorCall, interceptorCall) ||
                other.interceptorCall == interceptorCall) &&
            (identical(other.urlParseFormat, urlParseFormat) ||
                other.urlParseFormat == urlParseFormat) &&
            (identical(other.responseResultCallback, responseResultCallback) ||
                other.responseResultCallback == responseResultCallback) &&
            const DeepCollectionEquality().equals(other._extra, _extra) &&
            (identical(other.cancelToken, cancelToken) ||
                other.cancelToken == cancelToken) &&
            (identical(other.onSendCallback, onSendCallback) ||
                other.onSendCallback == onSendCallback) &&
            (identical(other.onReceiveProgress, onReceiveProgress) ||
                other.onReceiveProgress == onReceiveProgress) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.savePath, savePath) ||
                other.savePath == savePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        fullUrl,
        interceptorCall,
        urlParseFormat,
        responseResultCallback,
        const DeepCollectionEquality().hash(_extra),
        cancelToken,
        onSendCallback,
        onReceiveProgress,
        downloadUrl,
        savePath
      ]);

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      @igFreezedJson final String? fullUrl,
      @igFreezedJson final InterceptorCall? interceptorCall,
      @igFreezedJson final UrlParseFormat? urlParseFormat,
      @igFreezedJson final ResponseResultCallback? responseResultCallback,
      final Map<String, dynamic>? extra,
      @igFreezedJson final CancelToken? cancelToken,
      @igFreezedJson final ProgressCallback? onSendCallback,
      @igFreezedJson final ProgressCallback? onReceiveProgress,
      final String? downloadUrl,
      @igFreezedJson final File? savePath}) = _$RequestParamsImpl;
  const _RequestParams._() : super._();

  factory _RequestParams.fromJson(Map<String, dynamic> json) =
      _$RequestParamsImpl.fromJson;

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
  String? get fullUrl;
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
  String? get downloadUrl;
  @override
  @igFreezedJson
  File? get savePath;

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestParamsImplCopyWith<_$RequestParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppLocalSettingModel {
  @HiveField(0, defaultValue: 0)
  int get themeIndex => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: 0)
  int get themeModel => throw _privateConstructorUsedError;

  /// Create a copy of AppLocalSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppLocalSettingModelCopyWith<AppLocalSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocalSettingModelCopyWith<$Res> {
  factory $AppLocalSettingModelCopyWith(AppLocalSettingModel value,
          $Res Function(AppLocalSettingModel) then) =
      _$AppLocalSettingModelCopyWithImpl<$Res, AppLocalSettingModel>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int themeIndex,
      @HiveField(1, defaultValue: 0) int themeModel});
}

/// @nodoc
class _$AppLocalSettingModelCopyWithImpl<$Res,
        $Val extends AppLocalSettingModel>
    implements $AppLocalSettingModelCopyWith<$Res> {
  _$AppLocalSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppLocalSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeIndex = null,
    Object? themeModel = null,
  }) {
    return _then(_value.copyWith(
      themeIndex: null == themeIndex
          ? _value.themeIndex
          : themeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      themeModel: null == themeModel
          ? _value.themeModel
          : themeModel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppLocalSettingModelImplCopyWith<$Res>
    implements $AppLocalSettingModelCopyWith<$Res> {
  factory _$$AppLocalSettingModelImplCopyWith(_$AppLocalSettingModelImpl value,
          $Res Function(_$AppLocalSettingModelImpl) then) =
      __$$AppLocalSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int themeIndex,
      @HiveField(1, defaultValue: 0) int themeModel});
}

/// @nodoc
class __$$AppLocalSettingModelImplCopyWithImpl<$Res>
    extends _$AppLocalSettingModelCopyWithImpl<$Res, _$AppLocalSettingModelImpl>
    implements _$$AppLocalSettingModelImplCopyWith<$Res> {
  __$$AppLocalSettingModelImplCopyWithImpl(_$AppLocalSettingModelImpl _value,
      $Res Function(_$AppLocalSettingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppLocalSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeIndex = null,
    Object? themeModel = null,
  }) {
    return _then(_$AppLocalSettingModelImpl(
      themeIndex: null == themeIndex
          ? _value.themeIndex
          : themeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      themeModel: null == themeModel
          ? _value.themeModel
          : themeModel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppLocalSettingModelImpl extends _AppLocalSettingModel {
  const _$AppLocalSettingModelImpl(
      {@HiveField(0, defaultValue: 0) this.themeIndex = 0,
      @HiveField(1, defaultValue: 0) this.themeModel = 0})
      : super._();

  @override
  @JsonKey()
  @HiveField(0, defaultValue: 0)
  final int themeIndex;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: 0)
  final int themeModel;

  @override
  String toString() {
    return 'AppLocalSettingModel(themeIndex: $themeIndex, themeModel: $themeModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLocalSettingModelImpl &&
            (identical(other.themeIndex, themeIndex) ||
                other.themeIndex == themeIndex) &&
            (identical(other.themeModel, themeModel) ||
                other.themeModel == themeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeIndex, themeModel);

  /// Create a copy of AppLocalSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLocalSettingModelImplCopyWith<_$AppLocalSettingModelImpl>
      get copyWith =>
          __$$AppLocalSettingModelImplCopyWithImpl<_$AppLocalSettingModelImpl>(
              this, _$identity);
}

abstract class _AppLocalSettingModel extends AppLocalSettingModel {
  const factory _AppLocalSettingModel(
          {@HiveField(0, defaultValue: 0) final int themeIndex,
          @HiveField(1, defaultValue: 0) final int themeModel}) =
      _$AppLocalSettingModelImpl;
  const _AppLocalSettingModel._() : super._();

  @override
  @HiveField(0, defaultValue: 0)
  int get themeIndex;
  @override
  @HiveField(1, defaultValue: 0)
  int get themeModel;

  /// Create a copy of AppLocalSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLocalSettingModelImplCopyWith<_$AppLocalSettingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AskStringDialogParams {
  String get placeholder => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get okBtnText => throw _privateConstructorUsedError;
  String get cancelBtnText => throw _privateConstructorUsedError;

  /// Create a copy of AskStringDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AskStringDialogParamsCopyWith<AskStringDialogParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskStringDialogParamsCopyWith<$Res> {
  factory $AskStringDialogParamsCopyWith(AskStringDialogParams value,
          $Res Function(AskStringDialogParams) then) =
      _$AskStringDialogParamsCopyWithImpl<$Res, AskStringDialogParams>;
  @useResult
  $Res call(
      {String placeholder,
      String title,
      String okBtnText,
      String cancelBtnText});
}

/// @nodoc
class _$AskStringDialogParamsCopyWithImpl<$Res,
        $Val extends AskStringDialogParams>
    implements $AskStringDialogParamsCopyWith<$Res> {
  _$AskStringDialogParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AskStringDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeholder = null,
    Object? title = null,
    Object? okBtnText = null,
    Object? cancelBtnText = null,
  }) {
    return _then(_value.copyWith(
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      okBtnText: null == okBtnText
          ? _value.okBtnText
          : okBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelBtnText: null == cancelBtnText
          ? _value.cancelBtnText
          : cancelBtnText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AskStringDialogParamsImplCopyWith<$Res>
    implements $AskStringDialogParamsCopyWith<$Res> {
  factory _$$AskStringDialogParamsImplCopyWith(
          _$AskStringDialogParamsImpl value,
          $Res Function(_$AskStringDialogParamsImpl) then) =
      __$$AskStringDialogParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String placeholder,
      String title,
      String okBtnText,
      String cancelBtnText});
}

/// @nodoc
class __$$AskStringDialogParamsImplCopyWithImpl<$Res>
    extends _$AskStringDialogParamsCopyWithImpl<$Res,
        _$AskStringDialogParamsImpl>
    implements _$$AskStringDialogParamsImplCopyWith<$Res> {
  __$$AskStringDialogParamsImplCopyWithImpl(_$AskStringDialogParamsImpl _value,
      $Res Function(_$AskStringDialogParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AskStringDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeholder = null,
    Object? title = null,
    Object? okBtnText = null,
    Object? cancelBtnText = null,
  }) {
    return _then(_$AskStringDialogParamsImpl(
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      okBtnText: null == okBtnText
          ? _value.okBtnText
          : okBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelBtnText: null == cancelBtnText
          ? _value.cancelBtnText
          : cancelBtnText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AskStringDialogParamsImpl implements _AskStringDialogParams {
  const _$AskStringDialogParamsImpl(
      {this.placeholder = "",
      this.title = "",
      this.okBtnText = "Confirm",
      this.cancelBtnText = "Cancel"});

  @override
  @JsonKey()
  final String placeholder;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String okBtnText;
  @override
  @JsonKey()
  final String cancelBtnText;

  @override
  String toString() {
    return 'AskStringDialogParams(placeholder: $placeholder, title: $title, okBtnText: $okBtnText, cancelBtnText: $cancelBtnText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskStringDialogParamsImpl &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.okBtnText, okBtnText) ||
                other.okBtnText == okBtnText) &&
            (identical(other.cancelBtnText, cancelBtnText) ||
                other.cancelBtnText == cancelBtnText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, placeholder, title, okBtnText, cancelBtnText);

  /// Create a copy of AskStringDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AskStringDialogParamsImplCopyWith<_$AskStringDialogParamsImpl>
      get copyWith => __$$AskStringDialogParamsImplCopyWithImpl<
          _$AskStringDialogParamsImpl>(this, _$identity);
}

abstract class _AskStringDialogParams implements AskStringDialogParams {
  const factory _AskStringDialogParams(
      {final String placeholder,
      final String title,
      final String okBtnText,
      final String cancelBtnText}) = _$AskStringDialogParamsImpl;

  @override
  String get placeholder;
  @override
  String get title;
  @override
  String get okBtnText;
  @override
  String get cancelBtnText;

  /// Create a copy of AskStringDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AskStringDialogParamsImplCopyWith<_$AskStringDialogParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AskIntDialogParams {
  String get placeholder => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get okBtnText => throw _privateConstructorUsedError;
  String get cancelBtnText => throw _privateConstructorUsedError;
  @igFreezedJson
  bool Function(int)? get disableOkButton => throw _privateConstructorUsedError;
  @igFreezedJson
  String? Function(int)? get errorMessage => throw _privateConstructorUsedError;
  @igFreezedJson
  TextStyle? get okButtonTextStyle => throw _privateConstructorUsedError;
  @igFreezedJson
  TextStyle? get cancelButtonTextStyle => throw _privateConstructorUsedError;

  /// Create a copy of AskIntDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AskIntDialogParamsCopyWith<AskIntDialogParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskIntDialogParamsCopyWith<$Res> {
  factory $AskIntDialogParamsCopyWith(
          AskIntDialogParams value, $Res Function(AskIntDialogParams) then) =
      _$AskIntDialogParamsCopyWithImpl<$Res, AskIntDialogParams>;
  @useResult
  $Res call(
      {String placeholder,
      String title,
      String okBtnText,
      String cancelBtnText,
      @igFreezedJson bool Function(int)? disableOkButton,
      @igFreezedJson String? Function(int)? errorMessage,
      @igFreezedJson TextStyle? okButtonTextStyle,
      @igFreezedJson TextStyle? cancelButtonTextStyle});
}

/// @nodoc
class _$AskIntDialogParamsCopyWithImpl<$Res, $Val extends AskIntDialogParams>
    implements $AskIntDialogParamsCopyWith<$Res> {
  _$AskIntDialogParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AskIntDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeholder = null,
    Object? title = null,
    Object? okBtnText = null,
    Object? cancelBtnText = null,
    Object? disableOkButton = freezed,
    Object? errorMessage = freezed,
    Object? okButtonTextStyle = freezed,
    Object? cancelButtonTextStyle = freezed,
  }) {
    return _then(_value.copyWith(
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      okBtnText: null == okBtnText
          ? _value.okBtnText
          : okBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelBtnText: null == cancelBtnText
          ? _value.cancelBtnText
          : cancelBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      disableOkButton: freezed == disableOkButton
          ? _value.disableOkButton
          : disableOkButton // ignore: cast_nullable_to_non_nullable
              as bool Function(int)?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String? Function(int)?,
      okButtonTextStyle: freezed == okButtonTextStyle
          ? _value.okButtonTextStyle
          : okButtonTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      cancelButtonTextStyle: freezed == cancelButtonTextStyle
          ? _value.cancelButtonTextStyle
          : cancelButtonTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AskIntDialogParamsImplCopyWith<$Res>
    implements $AskIntDialogParamsCopyWith<$Res> {
  factory _$$AskIntDialogParamsImplCopyWith(_$AskIntDialogParamsImpl value,
          $Res Function(_$AskIntDialogParamsImpl) then) =
      __$$AskIntDialogParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String placeholder,
      String title,
      String okBtnText,
      String cancelBtnText,
      @igFreezedJson bool Function(int)? disableOkButton,
      @igFreezedJson String? Function(int)? errorMessage,
      @igFreezedJson TextStyle? okButtonTextStyle,
      @igFreezedJson TextStyle? cancelButtonTextStyle});
}

/// @nodoc
class __$$AskIntDialogParamsImplCopyWithImpl<$Res>
    extends _$AskIntDialogParamsCopyWithImpl<$Res, _$AskIntDialogParamsImpl>
    implements _$$AskIntDialogParamsImplCopyWith<$Res> {
  __$$AskIntDialogParamsImplCopyWithImpl(_$AskIntDialogParamsImpl _value,
      $Res Function(_$AskIntDialogParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AskIntDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeholder = null,
    Object? title = null,
    Object? okBtnText = null,
    Object? cancelBtnText = null,
    Object? disableOkButton = freezed,
    Object? errorMessage = freezed,
    Object? okButtonTextStyle = freezed,
    Object? cancelButtonTextStyle = freezed,
  }) {
    return _then(_$AskIntDialogParamsImpl(
      placeholder: null == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      okBtnText: null == okBtnText
          ? _value.okBtnText
          : okBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelBtnText: null == cancelBtnText
          ? _value.cancelBtnText
          : cancelBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      disableOkButton: freezed == disableOkButton
          ? _value.disableOkButton
          : disableOkButton // ignore: cast_nullable_to_non_nullable
              as bool Function(int)?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String? Function(int)?,
      okButtonTextStyle: freezed == okButtonTextStyle
          ? _value.okButtonTextStyle
          : okButtonTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      cancelButtonTextStyle: freezed == cancelButtonTextStyle
          ? _value.cancelButtonTextStyle
          : cancelButtonTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ));
  }
}

/// @nodoc

class _$AskIntDialogParamsImpl implements _AskIntDialogParams {
  const _$AskIntDialogParamsImpl(
      {this.placeholder = "",
      this.title = "",
      this.okBtnText = "Confirm",
      this.cancelBtnText = "Cancel",
      @igFreezedJson this.disableOkButton,
      @igFreezedJson this.errorMessage,
      @igFreezedJson this.okButtonTextStyle,
      @igFreezedJson this.cancelButtonTextStyle});

  @override
  @JsonKey()
  final String placeholder;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String okBtnText;
  @override
  @JsonKey()
  final String cancelBtnText;
  @override
  @igFreezedJson
  final bool Function(int)? disableOkButton;
  @override
  @igFreezedJson
  final String? Function(int)? errorMessage;
  @override
  @igFreezedJson
  final TextStyle? okButtonTextStyle;
  @override
  @igFreezedJson
  final TextStyle? cancelButtonTextStyle;

  @override
  String toString() {
    return 'AskIntDialogParams(placeholder: $placeholder, title: $title, okBtnText: $okBtnText, cancelBtnText: $cancelBtnText, disableOkButton: $disableOkButton, errorMessage: $errorMessage, okButtonTextStyle: $okButtonTextStyle, cancelButtonTextStyle: $cancelButtonTextStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskIntDialogParamsImpl &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.okBtnText, okBtnText) ||
                other.okBtnText == okBtnText) &&
            (identical(other.cancelBtnText, cancelBtnText) ||
                other.cancelBtnText == cancelBtnText) &&
            (identical(other.disableOkButton, disableOkButton) ||
                other.disableOkButton == disableOkButton) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.okButtonTextStyle, okButtonTextStyle) ||
                other.okButtonTextStyle == okButtonTextStyle) &&
            (identical(other.cancelButtonTextStyle, cancelButtonTextStyle) ||
                other.cancelButtonTextStyle == cancelButtonTextStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      placeholder,
      title,
      okBtnText,
      cancelBtnText,
      disableOkButton,
      errorMessage,
      okButtonTextStyle,
      cancelButtonTextStyle);

  /// Create a copy of AskIntDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AskIntDialogParamsImplCopyWith<_$AskIntDialogParamsImpl> get copyWith =>
      __$$AskIntDialogParamsImplCopyWithImpl<_$AskIntDialogParamsImpl>(
          this, _$identity);
}

abstract class _AskIntDialogParams implements AskIntDialogParams {
  const factory _AskIntDialogParams(
          {final String placeholder,
          final String title,
          final String okBtnText,
          final String cancelBtnText,
          @igFreezedJson final bool Function(int)? disableOkButton,
          @igFreezedJson final String? Function(int)? errorMessage,
          @igFreezedJson final TextStyle? okButtonTextStyle,
          @igFreezedJson final TextStyle? cancelButtonTextStyle}) =
      _$AskIntDialogParamsImpl;

  @override
  String get placeholder;
  @override
  String get title;
  @override
  String get okBtnText;
  @override
  String get cancelBtnText;
  @override
  @igFreezedJson
  bool Function(int)? get disableOkButton;
  @override
  @igFreezedJson
  String? Function(int)? get errorMessage;
  @override
  @igFreezedJson
  TextStyle? get okButtonTextStyle;
  @override
  @igFreezedJson
  TextStyle? get cancelButtonTextStyle;

  /// Create a copy of AskIntDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AskIntDialogParamsImplCopyWith<_$AskIntDialogParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AskOkDialogParams {
  String get contentText => throw _privateConstructorUsedError;
  String get okText => throw _privateConstructorUsedError;
  String get cancelText => throw _privateConstructorUsedError;
  @igFreezedJson
  Widget? get content => throw _privateConstructorUsedError;
  @igFreezedJson
  Widget? get title => throw _privateConstructorUsedError;

  /// Create a copy of AskOkDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AskOkDialogParamsCopyWith<AskOkDialogParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskOkDialogParamsCopyWith<$Res> {
  factory $AskOkDialogParamsCopyWith(
          AskOkDialogParams value, $Res Function(AskOkDialogParams) then) =
      _$AskOkDialogParamsCopyWithImpl<$Res, AskOkDialogParams>;
  @useResult
  $Res call(
      {String contentText,
      String okText,
      String cancelText,
      @igFreezedJson Widget? content,
      @igFreezedJson Widget? title});
}

/// @nodoc
class _$AskOkDialogParamsCopyWithImpl<$Res, $Val extends AskOkDialogParams>
    implements $AskOkDialogParamsCopyWith<$Res> {
  _$AskOkDialogParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AskOkDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentText = null,
    Object? okText = null,
    Object? cancelText = null,
    Object? content = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      contentText: null == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String,
      okText: null == okText
          ? _value.okText
          : okText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelText: null == cancelText
          ? _value.cancelText
          : cancelText // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AskOkDialogParamsImplCopyWith<$Res>
    implements $AskOkDialogParamsCopyWith<$Res> {
  factory _$$AskOkDialogParamsImplCopyWith(_$AskOkDialogParamsImpl value,
          $Res Function(_$AskOkDialogParamsImpl) then) =
      __$$AskOkDialogParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentText,
      String okText,
      String cancelText,
      @igFreezedJson Widget? content,
      @igFreezedJson Widget? title});
}

/// @nodoc
class __$$AskOkDialogParamsImplCopyWithImpl<$Res>
    extends _$AskOkDialogParamsCopyWithImpl<$Res, _$AskOkDialogParamsImpl>
    implements _$$AskOkDialogParamsImplCopyWith<$Res> {
  __$$AskOkDialogParamsImplCopyWithImpl(_$AskOkDialogParamsImpl _value,
      $Res Function(_$AskOkDialogParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AskOkDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentText = null,
    Object? okText = null,
    Object? cancelText = null,
    Object? content = freezed,
    Object? title = freezed,
  }) {
    return _then(_$AskOkDialogParamsImpl(
      contentText: null == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String,
      okText: null == okText
          ? _value.okText
          : okText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelText: null == cancelText
          ? _value.cancelText
          : cancelText // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$AskOkDialogParamsImpl implements _AskOkDialogParams {
  const _$AskOkDialogParamsImpl(
      {this.contentText = "",
      this.okText = "Confirm",
      this.cancelText = "Cancel",
      @igFreezedJson this.content,
      @igFreezedJson this.title});

  @override
  @JsonKey()
  final String contentText;
  @override
  @JsonKey()
  final String okText;
  @override
  @JsonKey()
  final String cancelText;
  @override
  @igFreezedJson
  final Widget? content;
  @override
  @igFreezedJson
  final Widget? title;

  @override
  String toString() {
    return 'AskOkDialogParams(contentText: $contentText, okText: $okText, cancelText: $cancelText, content: $content, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskOkDialogParamsImpl &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.okText, okText) || other.okText == okText) &&
            (identical(other.cancelText, cancelText) ||
                other.cancelText == cancelText) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, contentText, okText, cancelText, content, title);

  /// Create a copy of AskOkDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AskOkDialogParamsImplCopyWith<_$AskOkDialogParamsImpl> get copyWith =>
      __$$AskOkDialogParamsImplCopyWithImpl<_$AskOkDialogParamsImpl>(
          this, _$identity);
}

abstract class _AskOkDialogParams implements AskOkDialogParams {
  const factory _AskOkDialogParams(
      {final String contentText,
      final String okText,
      final String cancelText,
      @igFreezedJson final Widget? content,
      @igFreezedJson final Widget? title}) = _$AskOkDialogParamsImpl;

  @override
  String get contentText;
  @override
  String get okText;
  @override
  String get cancelText;
  @override
  @igFreezedJson
  Widget? get content;
  @override
  @igFreezedJson
  Widget? get title;

  /// Create a copy of AskOkDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AskOkDialogParamsImplCopyWith<_$AskOkDialogParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BaseApiException _$BaseApiExceptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'cancel':
      return BaseApiCancelException.fromJson(json);
    case 'connectionTimeout':
      return BaseApiConnectionTimeoutException.fromJson(json);
    case 'sendTimeout':
      return BaseApiSendTimeoutException.fromJson(json);
    case 'receiveTimeout':
      return BaseApiReceiveTimeoutException.fromJson(json);
    case 'badCertificate':
      return BaseApiBadCertificateException.fromJson(json);
    case 'connectionError':
      return BaseApiConnectionErrorException.fromJson(json);
    case 'badResponse':
      return BaseApiBadResponseException.fromJson(json);
    case 'businessException':
      return BaseApiBusinessException.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'BaseApiException',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BaseApiException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)
        cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)
        badResponse,
    required TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)
        businessException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult? Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value)
        connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value)
        receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value)
        badCertificate,
    required TResult Function(BaseApiConnectionErrorException value)
        connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult? Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult? Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BaseApiBadCertificateException value)? badCertificate,
    TResult? Function(BaseApiConnectionErrorException value)? connectionError,
    TResult? Function(BaseApiBadResponseException value)? badResponse,
    TResult? Function(BaseApiBusinessException value)? businessException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseApiCancelException value)? cancel,
    TResult Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BaseApiBadCertificateException value)? badCertificate,
    TResult Function(BaseApiConnectionErrorException value)? connectionError,
    TResult Function(BaseApiBadResponseException value)? badResponse,
    TResult Function(BaseApiBusinessException value)? businessException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BaseApiException to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseApiExceptionCopyWith<$Res> {
  factory $BaseApiExceptionCopyWith(
          BaseApiException value, $Res Function(BaseApiException) then) =
      _$BaseApiExceptionCopyWithImpl<$Res, BaseApiException>;
}

/// @nodoc
class _$BaseApiExceptionCopyWithImpl<$Res, $Val extends BaseApiException>
    implements $BaseApiExceptionCopyWith<$Res> {
  _$BaseApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BaseApiCancelExceptionImplCopyWith<$Res> {
  factory _$$BaseApiCancelExceptionImplCopyWith(
          _$BaseApiCancelExceptionImpl value,
          $Res Function(_$BaseApiCancelExceptionImpl) then) =
      __$$BaseApiCancelExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@igFreezedJson Object? error, @igFreezedJson RequestOptions? options});
}

/// @nodoc
class __$$BaseApiCancelExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res, _$BaseApiCancelExceptionImpl>
    implements _$$BaseApiCancelExceptionImplCopyWith<$Res> {
  __$$BaseApiCancelExceptionImplCopyWithImpl(
      _$BaseApiCancelExceptionImpl _value,
      $Res Function(_$BaseApiCancelExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? options = freezed,
  }) {
    return _then(_$BaseApiCancelExceptionImpl(
      error: freezed == error ? _value.error : error,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as RequestOptions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseApiCancelExceptionImpl extends BaseApiCancelException {
  const _$BaseApiCancelExceptionImpl(
      {@igFreezedJson this.error,
      @igFreezedJson this.options,
      final String? $type})
      : $type = $type ?? 'cancel',
        super._();

  factory _$BaseApiCancelExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseApiCancelExceptionImplFromJson(json);

  @override
  @igFreezedJson
  final Object? error;
  @override
  @igFreezedJson
  final RequestOptions? options;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.cancel(error: $error, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseApiCancelExceptionImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.options, options) || other.options == options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), options);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseApiCancelExceptionImplCopyWith<_$BaseApiCancelExceptionImpl>
      get copyWith => __$$BaseApiCancelExceptionImplCopyWithImpl<
          _$BaseApiCancelExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)
        cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)
        badResponse,
    required TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)
        businessException,
  }) {
    return cancel(error, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult? Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
  }) {
    return cancel?.call(error, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(error, options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value)
        connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value)
        receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value)
        badCertificate,
    required TResult Function(BaseApiConnectionErrorException value)
        connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult? Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult? Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BaseApiBadCertificateException value)? badCertificate,
    TResult? Function(BaseApiConnectionErrorException value)? connectionError,
    TResult? Function(BaseApiBadResponseException value)? badResponse,
    TResult? Function(BaseApiBusinessException value)? businessException,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseApiCancelException value)? cancel,
    TResult Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BaseApiBadCertificateException value)? badCertificate,
    TResult Function(BaseApiConnectionErrorException value)? connectionError,
    TResult Function(BaseApiBadResponseException value)? badResponse,
    TResult Function(BaseApiBusinessException value)? businessException,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseApiCancelExceptionImplToJson(
      this,
    );
  }
}

abstract class BaseApiCancelException extends BaseApiException {
  const factory BaseApiCancelException(
          {@igFreezedJson final Object? error,
          @igFreezedJson final RequestOptions? options}) =
      _$BaseApiCancelExceptionImpl;
  const BaseApiCancelException._() : super._();

  factory BaseApiCancelException.fromJson(Map<String, dynamic> json) =
      _$BaseApiCancelExceptionImpl.fromJson;

  @igFreezedJson
  Object? get error;
  @igFreezedJson
  RequestOptions? get options;

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseApiCancelExceptionImplCopyWith<_$BaseApiCancelExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseApiConnectionTimeoutExceptionImplCopyWith<$Res> {
  factory _$$BaseApiConnectionTimeoutExceptionImplCopyWith(
          _$BaseApiConnectionTimeoutExceptionImpl value,
          $Res Function(_$BaseApiConnectionTimeoutExceptionImpl) then) =
      __$$BaseApiConnectionTimeoutExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiConnectionTimeoutExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res,
        _$BaseApiConnectionTimeoutExceptionImpl>
    implements _$$BaseApiConnectionTimeoutExceptionImplCopyWith<$Res> {
  __$$BaseApiConnectionTimeoutExceptionImplCopyWithImpl(
      _$BaseApiConnectionTimeoutExceptionImpl _value,
      $Res Function(_$BaseApiConnectionTimeoutExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BaseApiConnectionTimeoutExceptionImpl
    extends BaseApiConnectionTimeoutException {
  const _$BaseApiConnectionTimeoutExceptionImpl({final String? $type})
      : $type = $type ?? 'connectionTimeout',
        super._();

  factory _$BaseApiConnectionTimeoutExceptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseApiConnectionTimeoutExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.connectionTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseApiConnectionTimeoutExceptionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)
        cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)
        badResponse,
    required TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)
        businessException,
  }) {
    return connectionTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult? Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
  }) {
    return connectionTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value)
        connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value)
        receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value)
        badCertificate,
    required TResult Function(BaseApiConnectionErrorException value)
        connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return connectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult? Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult? Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BaseApiBadCertificateException value)? badCertificate,
    TResult? Function(BaseApiConnectionErrorException value)? connectionError,
    TResult? Function(BaseApiBadResponseException value)? badResponse,
    TResult? Function(BaseApiBusinessException value)? businessException,
  }) {
    return connectionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseApiCancelException value)? cancel,
    TResult Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BaseApiBadCertificateException value)? badCertificate,
    TResult Function(BaseApiConnectionErrorException value)? connectionError,
    TResult Function(BaseApiBadResponseException value)? badResponse,
    TResult Function(BaseApiBusinessException value)? businessException,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseApiConnectionTimeoutExceptionImplToJson(
      this,
    );
  }
}

abstract class BaseApiConnectionTimeoutException extends BaseApiException {
  const factory BaseApiConnectionTimeoutException() =
      _$BaseApiConnectionTimeoutExceptionImpl;
  const BaseApiConnectionTimeoutException._() : super._();

  factory BaseApiConnectionTimeoutException.fromJson(
          Map<String, dynamic> json) =
      _$BaseApiConnectionTimeoutExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiSendTimeoutExceptionImplCopyWith<$Res> {
  factory _$$BaseApiSendTimeoutExceptionImplCopyWith(
          _$BaseApiSendTimeoutExceptionImpl value,
          $Res Function(_$BaseApiSendTimeoutExceptionImpl) then) =
      __$$BaseApiSendTimeoutExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiSendTimeoutExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res,
        _$BaseApiSendTimeoutExceptionImpl>
    implements _$$BaseApiSendTimeoutExceptionImplCopyWith<$Res> {
  __$$BaseApiSendTimeoutExceptionImplCopyWithImpl(
      _$BaseApiSendTimeoutExceptionImpl _value,
      $Res Function(_$BaseApiSendTimeoutExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BaseApiSendTimeoutExceptionImpl extends BaseApiSendTimeoutException {
  const _$BaseApiSendTimeoutExceptionImpl({final String? $type})
      : $type = $type ?? 'sendTimeout',
        super._();

  factory _$BaseApiSendTimeoutExceptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseApiSendTimeoutExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.sendTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseApiSendTimeoutExceptionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)
        cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)
        badResponse,
    required TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)
        businessException,
  }) {
    return sendTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult? Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
  }) {
    return sendTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value)
        connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value)
        receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value)
        badCertificate,
    required TResult Function(BaseApiConnectionErrorException value)
        connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult? Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult? Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BaseApiBadCertificateException value)? badCertificate,
    TResult? Function(BaseApiConnectionErrorException value)? connectionError,
    TResult? Function(BaseApiBadResponseException value)? badResponse,
    TResult? Function(BaseApiBusinessException value)? businessException,
  }) {
    return sendTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseApiCancelException value)? cancel,
    TResult Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BaseApiBadCertificateException value)? badCertificate,
    TResult Function(BaseApiConnectionErrorException value)? connectionError,
    TResult Function(BaseApiBadResponseException value)? badResponse,
    TResult Function(BaseApiBusinessException value)? businessException,
    required TResult orElse(),
  }) {
    if (sendTimeout != null) {
      return sendTimeout(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseApiSendTimeoutExceptionImplToJson(
      this,
    );
  }
}

abstract class BaseApiSendTimeoutException extends BaseApiException {
  const factory BaseApiSendTimeoutException() =
      _$BaseApiSendTimeoutExceptionImpl;
  const BaseApiSendTimeoutException._() : super._();

  factory BaseApiSendTimeoutException.fromJson(Map<String, dynamic> json) =
      _$BaseApiSendTimeoutExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiReceiveTimeoutExceptionImplCopyWith<$Res> {
  factory _$$BaseApiReceiveTimeoutExceptionImplCopyWith(
          _$BaseApiReceiveTimeoutExceptionImpl value,
          $Res Function(_$BaseApiReceiveTimeoutExceptionImpl) then) =
      __$$BaseApiReceiveTimeoutExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiReceiveTimeoutExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res,
        _$BaseApiReceiveTimeoutExceptionImpl>
    implements _$$BaseApiReceiveTimeoutExceptionImplCopyWith<$Res> {
  __$$BaseApiReceiveTimeoutExceptionImplCopyWithImpl(
      _$BaseApiReceiveTimeoutExceptionImpl _value,
      $Res Function(_$BaseApiReceiveTimeoutExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BaseApiReceiveTimeoutExceptionImpl
    extends BaseApiReceiveTimeoutException {
  const _$BaseApiReceiveTimeoutExceptionImpl({final String? $type})
      : $type = $type ?? 'receiveTimeout',
        super._();

  factory _$BaseApiReceiveTimeoutExceptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseApiReceiveTimeoutExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.receiveTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseApiReceiveTimeoutExceptionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)
        cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)
        badResponse,
    required TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)
        businessException,
  }) {
    return receiveTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult? Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
  }) {
    return receiveTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value)
        connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value)
        receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value)
        badCertificate,
    required TResult Function(BaseApiConnectionErrorException value)
        connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult? Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult? Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BaseApiBadCertificateException value)? badCertificate,
    TResult? Function(BaseApiConnectionErrorException value)? connectionError,
    TResult? Function(BaseApiBadResponseException value)? badResponse,
    TResult? Function(BaseApiBusinessException value)? businessException,
  }) {
    return receiveTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseApiCancelException value)? cancel,
    TResult Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BaseApiBadCertificateException value)? badCertificate,
    TResult Function(BaseApiConnectionErrorException value)? connectionError,
    TResult Function(BaseApiBadResponseException value)? badResponse,
    TResult Function(BaseApiBusinessException value)? businessException,
    required TResult orElse(),
  }) {
    if (receiveTimeout != null) {
      return receiveTimeout(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseApiReceiveTimeoutExceptionImplToJson(
      this,
    );
  }
}

abstract class BaseApiReceiveTimeoutException extends BaseApiException {
  const factory BaseApiReceiveTimeoutException() =
      _$BaseApiReceiveTimeoutExceptionImpl;
  const BaseApiReceiveTimeoutException._() : super._();

  factory BaseApiReceiveTimeoutException.fromJson(Map<String, dynamic> json) =
      _$BaseApiReceiveTimeoutExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiBadCertificateExceptionImplCopyWith<$Res> {
  factory _$$BaseApiBadCertificateExceptionImplCopyWith(
          _$BaseApiBadCertificateExceptionImpl value,
          $Res Function(_$BaseApiBadCertificateExceptionImpl) then) =
      __$$BaseApiBadCertificateExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiBadCertificateExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res,
        _$BaseApiBadCertificateExceptionImpl>
    implements _$$BaseApiBadCertificateExceptionImplCopyWith<$Res> {
  __$$BaseApiBadCertificateExceptionImplCopyWithImpl(
      _$BaseApiBadCertificateExceptionImpl _value,
      $Res Function(_$BaseApiBadCertificateExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BaseApiBadCertificateExceptionImpl
    extends BaseApiBadCertificateException {
  const _$BaseApiBadCertificateExceptionImpl({final String? $type})
      : $type = $type ?? 'badCertificate',
        super._();

  factory _$BaseApiBadCertificateExceptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseApiBadCertificateExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.badCertificate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseApiBadCertificateExceptionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)
        cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)
        badResponse,
    required TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)
        businessException,
  }) {
    return badCertificate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult? Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
  }) {
    return badCertificate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value)
        connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value)
        receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value)
        badCertificate,
    required TResult Function(BaseApiConnectionErrorException value)
        connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return badCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult? Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult? Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BaseApiBadCertificateException value)? badCertificate,
    TResult? Function(BaseApiConnectionErrorException value)? connectionError,
    TResult? Function(BaseApiBadResponseException value)? badResponse,
    TResult? Function(BaseApiBusinessException value)? businessException,
  }) {
    return badCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseApiCancelException value)? cancel,
    TResult Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BaseApiBadCertificateException value)? badCertificate,
    TResult Function(BaseApiConnectionErrorException value)? connectionError,
    TResult Function(BaseApiBadResponseException value)? badResponse,
    TResult Function(BaseApiBusinessException value)? businessException,
    required TResult orElse(),
  }) {
    if (badCertificate != null) {
      return badCertificate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseApiBadCertificateExceptionImplToJson(
      this,
    );
  }
}

abstract class BaseApiBadCertificateException extends BaseApiException {
  const factory BaseApiBadCertificateException() =
      _$BaseApiBadCertificateExceptionImpl;
  const BaseApiBadCertificateException._() : super._();

  factory BaseApiBadCertificateException.fromJson(Map<String, dynamic> json) =
      _$BaseApiBadCertificateExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiConnectionErrorExceptionImplCopyWith<$Res> {
  factory _$$BaseApiConnectionErrorExceptionImplCopyWith(
          _$BaseApiConnectionErrorExceptionImpl value,
          $Res Function(_$BaseApiConnectionErrorExceptionImpl) then) =
      __$$BaseApiConnectionErrorExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiConnectionErrorExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res,
        _$BaseApiConnectionErrorExceptionImpl>
    implements _$$BaseApiConnectionErrorExceptionImplCopyWith<$Res> {
  __$$BaseApiConnectionErrorExceptionImplCopyWithImpl(
      _$BaseApiConnectionErrorExceptionImpl _value,
      $Res Function(_$BaseApiConnectionErrorExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BaseApiConnectionErrorExceptionImpl
    extends BaseApiConnectionErrorException {
  const _$BaseApiConnectionErrorExceptionImpl({final String? $type})
      : $type = $type ?? 'connectionError',
        super._();

  factory _$BaseApiConnectionErrorExceptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseApiConnectionErrorExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.connectionError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseApiConnectionErrorExceptionImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)
        cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)
        badResponse,
    required TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)
        businessException,
  }) {
    return connectionError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult? Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
  }) {
    return connectionError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value)
        connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value)
        receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value)
        badCertificate,
    required TResult Function(BaseApiConnectionErrorException value)
        connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult? Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult? Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BaseApiBadCertificateException value)? badCertificate,
    TResult? Function(BaseApiConnectionErrorException value)? connectionError,
    TResult? Function(BaseApiBadResponseException value)? badResponse,
    TResult? Function(BaseApiBusinessException value)? businessException,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseApiCancelException value)? cancel,
    TResult Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BaseApiBadCertificateException value)? badCertificate,
    TResult Function(BaseApiConnectionErrorException value)? connectionError,
    TResult Function(BaseApiBadResponseException value)? badResponse,
    TResult Function(BaseApiBusinessException value)? businessException,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseApiConnectionErrorExceptionImplToJson(
      this,
    );
  }
}

abstract class BaseApiConnectionErrorException extends BaseApiException {
  const factory BaseApiConnectionErrorException() =
      _$BaseApiConnectionErrorExceptionImpl;
  const BaseApiConnectionErrorException._() : super._();

  factory BaseApiConnectionErrorException.fromJson(Map<String, dynamic> json) =
      _$BaseApiConnectionErrorExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiBadResponseExceptionImplCopyWith<$Res> {
  factory _$$BaseApiBadResponseExceptionImplCopyWith(
          _$BaseApiBadResponseExceptionImpl value,
          $Res Function(_$BaseApiBadResponseExceptionImpl) then) =
      __$$BaseApiBadResponseExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@igFreezedJson Response<dynamic>? response, int? statusCode});
}

/// @nodoc
class __$$BaseApiBadResponseExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res,
        _$BaseApiBadResponseExceptionImpl>
    implements _$$BaseApiBadResponseExceptionImplCopyWith<$Res> {
  __$$BaseApiBadResponseExceptionImplCopyWithImpl(
      _$BaseApiBadResponseExceptionImpl _value,
      $Res Function(_$BaseApiBadResponseExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$BaseApiBadResponseExceptionImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseApiBadResponseExceptionImpl extends BaseApiBadResponseException {
  const _$BaseApiBadResponseExceptionImpl(
      {@igFreezedJson this.response, this.statusCode, final String? $type})
      : $type = $type ?? 'badResponse',
        super._();

  factory _$BaseApiBadResponseExceptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseApiBadResponseExceptionImplFromJson(json);

  @override
  @igFreezedJson
  final Response<dynamic>? response;
  @override
  final int? statusCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.badResponse(response: $response, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseApiBadResponseExceptionImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, response, statusCode);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseApiBadResponseExceptionImplCopyWith<_$BaseApiBadResponseExceptionImpl>
      get copyWith => __$$BaseApiBadResponseExceptionImplCopyWithImpl<
          _$BaseApiBadResponseExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)
        cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)
        badResponse,
    required TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)
        businessException,
  }) {
    return badResponse(response, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult? Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
  }) {
    return badResponse?.call(response, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(response, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value)
        connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value)
        receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value)
        badCertificate,
    required TResult Function(BaseApiConnectionErrorException value)
        connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult? Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult? Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BaseApiBadCertificateException value)? badCertificate,
    TResult? Function(BaseApiConnectionErrorException value)? connectionError,
    TResult? Function(BaseApiBadResponseException value)? badResponse,
    TResult? Function(BaseApiBusinessException value)? businessException,
  }) {
    return badResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseApiCancelException value)? cancel,
    TResult Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BaseApiBadCertificateException value)? badCertificate,
    TResult Function(BaseApiConnectionErrorException value)? connectionError,
    TResult Function(BaseApiBadResponseException value)? badResponse,
    TResult Function(BaseApiBusinessException value)? businessException,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseApiBadResponseExceptionImplToJson(
      this,
    );
  }
}

abstract class BaseApiBadResponseException extends BaseApiException {
  const factory BaseApiBadResponseException(
      {@igFreezedJson final Response<dynamic>? response,
      final int? statusCode}) = _$BaseApiBadResponseExceptionImpl;
  const BaseApiBadResponseException._() : super._();

  factory BaseApiBadResponseException.fromJson(Map<String, dynamic> json) =
      _$BaseApiBadResponseExceptionImpl.fromJson;

  @igFreezedJson
  Response<dynamic>? get response;
  int? get statusCode;

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseApiBadResponseExceptionImplCopyWith<_$BaseApiBadResponseExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseApiBusinessExceptionImplCopyWith<$Res> {
  factory _$$BaseApiBusinessExceptionImplCopyWith(
          _$BaseApiBusinessExceptionImpl value,
          $Res Function(_$BaseApiBusinessExceptionImpl) then) =
      __$$BaseApiBusinessExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String message,
      @igFreezedJson Object? error,
      @igFreezedJson StackTrace? stackTrace});
}

/// @nodoc
class __$$BaseApiBusinessExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res, _$BaseApiBusinessExceptionImpl>
    implements _$$BaseApiBusinessExceptionImplCopyWith<$Res> {
  __$$BaseApiBusinessExceptionImplCopyWithImpl(
      _$BaseApiBusinessExceptionImpl _value,
      $Res Function(_$BaseApiBusinessExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$BaseApiBusinessExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseApiBusinessExceptionImpl extends BaseApiBusinessException {
  const _$BaseApiBusinessExceptionImpl(
      {required this.message,
      @igFreezedJson this.error,
      @igFreezedJson this.stackTrace,
      final String? $type})
      : $type = $type ?? 'businessException',
        super._();

  factory _$BaseApiBusinessExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseApiBusinessExceptionImplFromJson(json);

  @override
  final String message;
  @override
  @igFreezedJson
  final Object? error;
  @override
  @igFreezedJson
  final StackTrace? stackTrace;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.businessException(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseApiBusinessExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseApiBusinessExceptionImplCopyWith<_$BaseApiBusinessExceptionImpl>
      get copyWith => __$$BaseApiBusinessExceptionImplCopyWithImpl<
          _$BaseApiBusinessExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)
        cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)
        badResponse,
    required TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)
        businessException,
  }) {
    return businessException(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult? Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
  }) {
    return businessException?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@igFreezedJson Object? error,
            @igFreezedJson RequestOptions? options)?
        cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @igFreezedJson Response<dynamic>? response, int? statusCode)?
        badResponse,
    TResult Function(String message, @igFreezedJson Object? error,
            @igFreezedJson StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) {
    if (businessException != null) {
      return businessException(message, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value)
        connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value)
        receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value)
        badCertificate,
    required TResult Function(BaseApiConnectionErrorException value)
        connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return businessException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult? Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult? Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult? Function(BaseApiBadCertificateException value)? badCertificate,
    TResult? Function(BaseApiConnectionErrorException value)? connectionError,
    TResult? Function(BaseApiBadResponseException value)? badResponse,
    TResult? Function(BaseApiBusinessException value)? businessException,
  }) {
    return businessException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseApiCancelException value)? cancel,
    TResult Function(BaseApiConnectionTimeoutException value)?
        connectionTimeout,
    TResult Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BaseApiBadCertificateException value)? badCertificate,
    TResult Function(BaseApiConnectionErrorException value)? connectionError,
    TResult Function(BaseApiBadResponseException value)? badResponse,
    TResult Function(BaseApiBusinessException value)? businessException,
    required TResult orElse(),
  }) {
    if (businessException != null) {
      return businessException(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseApiBusinessExceptionImplToJson(
      this,
    );
  }
}

abstract class BaseApiBusinessException extends BaseApiException {
  const factory BaseApiBusinessException(
          {required final String message,
          @igFreezedJson final Object? error,
          @igFreezedJson final StackTrace? stackTrace}) =
      _$BaseApiBusinessExceptionImpl;
  const BaseApiBusinessException._() : super._();

  factory BaseApiBusinessException.fromJson(Map<String, dynamic> json) =
      _$BaseApiBusinessExceptionImpl.fromJson;

  String get message;
  @igFreezedJson
  Object? get error;
  @igFreezedJson
  StackTrace? get stackTrace;

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseApiBusinessExceptionImplCopyWith<_$BaseApiBusinessExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ByteModel {
  double get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) bytes,
    required TResult Function(double value) kb,
    required TResult Function(double value) mb,
    required TResult Function(double value) gb,
    required TResult Function(double value) tb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? bytes,
    TResult? Function(double value)? kb,
    TResult? Function(double value)? mb,
    TResult? Function(double value)? gb,
    TResult? Function(double value)? tb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? bytes,
    TResult Function(double value)? kb,
    TResult Function(double value)? mb,
    TResult Function(double value)? gb,
    TResult Function(double value)? tb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BytesModel value) bytes,
    required TResult Function(KbModel value) kb,
    required TResult Function(MbModel value) mb,
    required TResult Function(GbModel value) gb,
    required TResult Function(TbModel value) tb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BytesModel value)? bytes,
    TResult? Function(KbModel value)? kb,
    TResult? Function(MbModel value)? mb,
    TResult? Function(GbModel value)? gb,
    TResult? Function(TbModel value)? tb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BytesModel value)? bytes,
    TResult Function(KbModel value)? kb,
    TResult Function(MbModel value)? mb,
    TResult Function(GbModel value)? gb,
    TResult Function(TbModel value)? tb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ByteModelCopyWith<ByteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ByteModelCopyWith<$Res> {
  factory $ByteModelCopyWith(ByteModel value, $Res Function(ByteModel) then) =
      _$ByteModelCopyWithImpl<$Res, ByteModel>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$ByteModelCopyWithImpl<$Res, $Val extends ByteModel>
    implements $ByteModelCopyWith<$Res> {
  _$ByteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BytesModelImplCopyWith<$Res>
    implements $ByteModelCopyWith<$Res> {
  factory _$$BytesModelImplCopyWith(
          _$BytesModelImpl value, $Res Function(_$BytesModelImpl) then) =
      __$$BytesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$BytesModelImplCopyWithImpl<$Res>
    extends _$ByteModelCopyWithImpl<$Res, _$BytesModelImpl>
    implements _$$BytesModelImplCopyWith<$Res> {
  __$$BytesModelImplCopyWithImpl(
      _$BytesModelImpl _value, $Res Function(_$BytesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$BytesModelImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BytesModelImpl extends BytesModel {
  const _$BytesModelImpl(this.value) : super._();

  @override
  final double value;

  @override
  String toString() {
    return 'ByteModel.bytes(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BytesModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BytesModelImplCopyWith<_$BytesModelImpl> get copyWith =>
      __$$BytesModelImplCopyWithImpl<_$BytesModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) bytes,
    required TResult Function(double value) kb,
    required TResult Function(double value) mb,
    required TResult Function(double value) gb,
    required TResult Function(double value) tb,
  }) {
    return bytes(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? bytes,
    TResult? Function(double value)? kb,
    TResult? Function(double value)? mb,
    TResult? Function(double value)? gb,
    TResult? Function(double value)? tb,
  }) {
    return bytes?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? bytes,
    TResult Function(double value)? kb,
    TResult Function(double value)? mb,
    TResult Function(double value)? gb,
    TResult Function(double value)? tb,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BytesModel value) bytes,
    required TResult Function(KbModel value) kb,
    required TResult Function(MbModel value) mb,
    required TResult Function(GbModel value) gb,
    required TResult Function(TbModel value) tb,
  }) {
    return bytes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BytesModel value)? bytes,
    TResult? Function(KbModel value)? kb,
    TResult? Function(MbModel value)? mb,
    TResult? Function(GbModel value)? gb,
    TResult? Function(TbModel value)? tb,
  }) {
    return bytes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BytesModel value)? bytes,
    TResult Function(KbModel value)? kb,
    TResult Function(MbModel value)? mb,
    TResult Function(GbModel value)? gb,
    TResult Function(TbModel value)? tb,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(this);
    }
    return orElse();
  }
}

abstract class BytesModel extends ByteModel {
  const factory BytesModel(final double value) = _$BytesModelImpl;
  const BytesModel._() : super._();

  @override
  double get value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BytesModelImplCopyWith<_$BytesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KbModelImplCopyWith<$Res>
    implements $ByteModelCopyWith<$Res> {
  factory _$$KbModelImplCopyWith(
          _$KbModelImpl value, $Res Function(_$KbModelImpl) then) =
      __$$KbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$KbModelImplCopyWithImpl<$Res>
    extends _$ByteModelCopyWithImpl<$Res, _$KbModelImpl>
    implements _$$KbModelImplCopyWith<$Res> {
  __$$KbModelImplCopyWithImpl(
      _$KbModelImpl _value, $Res Function(_$KbModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$KbModelImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$KbModelImpl extends KbModel {
  const _$KbModelImpl(this.value) : super._();

  @override
  final double value;

  @override
  String toString() {
    return 'ByteModel.kb(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KbModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KbModelImplCopyWith<_$KbModelImpl> get copyWith =>
      __$$KbModelImplCopyWithImpl<_$KbModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) bytes,
    required TResult Function(double value) kb,
    required TResult Function(double value) mb,
    required TResult Function(double value) gb,
    required TResult Function(double value) tb,
  }) {
    return kb(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? bytes,
    TResult? Function(double value)? kb,
    TResult? Function(double value)? mb,
    TResult? Function(double value)? gb,
    TResult? Function(double value)? tb,
  }) {
    return kb?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? bytes,
    TResult Function(double value)? kb,
    TResult Function(double value)? mb,
    TResult Function(double value)? gb,
    TResult Function(double value)? tb,
    required TResult orElse(),
  }) {
    if (kb != null) {
      return kb(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BytesModel value) bytes,
    required TResult Function(KbModel value) kb,
    required TResult Function(MbModel value) mb,
    required TResult Function(GbModel value) gb,
    required TResult Function(TbModel value) tb,
  }) {
    return kb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BytesModel value)? bytes,
    TResult? Function(KbModel value)? kb,
    TResult? Function(MbModel value)? mb,
    TResult? Function(GbModel value)? gb,
    TResult? Function(TbModel value)? tb,
  }) {
    return kb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BytesModel value)? bytes,
    TResult Function(KbModel value)? kb,
    TResult Function(MbModel value)? mb,
    TResult Function(GbModel value)? gb,
    TResult Function(TbModel value)? tb,
    required TResult orElse(),
  }) {
    if (kb != null) {
      return kb(this);
    }
    return orElse();
  }
}

abstract class KbModel extends ByteModel {
  const factory KbModel(final double value) = _$KbModelImpl;
  const KbModel._() : super._();

  @override
  double get value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KbModelImplCopyWith<_$KbModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MbModelImplCopyWith<$Res>
    implements $ByteModelCopyWith<$Res> {
  factory _$$MbModelImplCopyWith(
          _$MbModelImpl value, $Res Function(_$MbModelImpl) then) =
      __$$MbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$MbModelImplCopyWithImpl<$Res>
    extends _$ByteModelCopyWithImpl<$Res, _$MbModelImpl>
    implements _$$MbModelImplCopyWith<$Res> {
  __$$MbModelImplCopyWithImpl(
      _$MbModelImpl _value, $Res Function(_$MbModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$MbModelImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MbModelImpl extends MbModel {
  const _$MbModelImpl(this.value) : super._();

  @override
  final double value;

  @override
  String toString() {
    return 'ByteModel.mb(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MbModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MbModelImplCopyWith<_$MbModelImpl> get copyWith =>
      __$$MbModelImplCopyWithImpl<_$MbModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) bytes,
    required TResult Function(double value) kb,
    required TResult Function(double value) mb,
    required TResult Function(double value) gb,
    required TResult Function(double value) tb,
  }) {
    return mb(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? bytes,
    TResult? Function(double value)? kb,
    TResult? Function(double value)? mb,
    TResult? Function(double value)? gb,
    TResult? Function(double value)? tb,
  }) {
    return mb?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? bytes,
    TResult Function(double value)? kb,
    TResult Function(double value)? mb,
    TResult Function(double value)? gb,
    TResult Function(double value)? tb,
    required TResult orElse(),
  }) {
    if (mb != null) {
      return mb(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BytesModel value) bytes,
    required TResult Function(KbModel value) kb,
    required TResult Function(MbModel value) mb,
    required TResult Function(GbModel value) gb,
    required TResult Function(TbModel value) tb,
  }) {
    return mb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BytesModel value)? bytes,
    TResult? Function(KbModel value)? kb,
    TResult? Function(MbModel value)? mb,
    TResult? Function(GbModel value)? gb,
    TResult? Function(TbModel value)? tb,
  }) {
    return mb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BytesModel value)? bytes,
    TResult Function(KbModel value)? kb,
    TResult Function(MbModel value)? mb,
    TResult Function(GbModel value)? gb,
    TResult Function(TbModel value)? tb,
    required TResult orElse(),
  }) {
    if (mb != null) {
      return mb(this);
    }
    return orElse();
  }
}

abstract class MbModel extends ByteModel {
  const factory MbModel(final double value) = _$MbModelImpl;
  const MbModel._() : super._();

  @override
  double get value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MbModelImplCopyWith<_$MbModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GbModelImplCopyWith<$Res>
    implements $ByteModelCopyWith<$Res> {
  factory _$$GbModelImplCopyWith(
          _$GbModelImpl value, $Res Function(_$GbModelImpl) then) =
      __$$GbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$GbModelImplCopyWithImpl<$Res>
    extends _$ByteModelCopyWithImpl<$Res, _$GbModelImpl>
    implements _$$GbModelImplCopyWith<$Res> {
  __$$GbModelImplCopyWithImpl(
      _$GbModelImpl _value, $Res Function(_$GbModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$GbModelImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GbModelImpl extends GbModel {
  const _$GbModelImpl(this.value) : super._();

  @override
  final double value;

  @override
  String toString() {
    return 'ByteModel.gb(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GbModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GbModelImplCopyWith<_$GbModelImpl> get copyWith =>
      __$$GbModelImplCopyWithImpl<_$GbModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) bytes,
    required TResult Function(double value) kb,
    required TResult Function(double value) mb,
    required TResult Function(double value) gb,
    required TResult Function(double value) tb,
  }) {
    return gb(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? bytes,
    TResult? Function(double value)? kb,
    TResult? Function(double value)? mb,
    TResult? Function(double value)? gb,
    TResult? Function(double value)? tb,
  }) {
    return gb?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? bytes,
    TResult Function(double value)? kb,
    TResult Function(double value)? mb,
    TResult Function(double value)? gb,
    TResult Function(double value)? tb,
    required TResult orElse(),
  }) {
    if (gb != null) {
      return gb(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BytesModel value) bytes,
    required TResult Function(KbModel value) kb,
    required TResult Function(MbModel value) mb,
    required TResult Function(GbModel value) gb,
    required TResult Function(TbModel value) tb,
  }) {
    return gb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BytesModel value)? bytes,
    TResult? Function(KbModel value)? kb,
    TResult? Function(MbModel value)? mb,
    TResult? Function(GbModel value)? gb,
    TResult? Function(TbModel value)? tb,
  }) {
    return gb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BytesModel value)? bytes,
    TResult Function(KbModel value)? kb,
    TResult Function(MbModel value)? mb,
    TResult Function(GbModel value)? gb,
    TResult Function(TbModel value)? tb,
    required TResult orElse(),
  }) {
    if (gb != null) {
      return gb(this);
    }
    return orElse();
  }
}

abstract class GbModel extends ByteModel {
  const factory GbModel(final double value) = _$GbModelImpl;
  const GbModel._() : super._();

  @override
  double get value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GbModelImplCopyWith<_$GbModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TbModelImplCopyWith<$Res>
    implements $ByteModelCopyWith<$Res> {
  factory _$$TbModelImplCopyWith(
          _$TbModelImpl value, $Res Function(_$TbModelImpl) then) =
      __$$TbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$TbModelImplCopyWithImpl<$Res>
    extends _$ByteModelCopyWithImpl<$Res, _$TbModelImpl>
    implements _$$TbModelImplCopyWith<$Res> {
  __$$TbModelImplCopyWithImpl(
      _$TbModelImpl _value, $Res Function(_$TbModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TbModelImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TbModelImpl extends TbModel {
  const _$TbModelImpl(this.value) : super._();

  @override
  final double value;

  @override
  String toString() {
    return 'ByteModel.tb(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TbModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TbModelImplCopyWith<_$TbModelImpl> get copyWith =>
      __$$TbModelImplCopyWithImpl<_$TbModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) bytes,
    required TResult Function(double value) kb,
    required TResult Function(double value) mb,
    required TResult Function(double value) gb,
    required TResult Function(double value) tb,
  }) {
    return tb(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double value)? bytes,
    TResult? Function(double value)? kb,
    TResult? Function(double value)? mb,
    TResult? Function(double value)? gb,
    TResult? Function(double value)? tb,
  }) {
    return tb?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? bytes,
    TResult Function(double value)? kb,
    TResult Function(double value)? mb,
    TResult Function(double value)? gb,
    TResult Function(double value)? tb,
    required TResult orElse(),
  }) {
    if (tb != null) {
      return tb(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BytesModel value) bytes,
    required TResult Function(KbModel value) kb,
    required TResult Function(MbModel value) mb,
    required TResult Function(GbModel value) gb,
    required TResult Function(TbModel value) tb,
  }) {
    return tb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BytesModel value)? bytes,
    TResult? Function(KbModel value)? kb,
    TResult? Function(MbModel value)? mb,
    TResult? Function(GbModel value)? gb,
    TResult? Function(TbModel value)? tb,
  }) {
    return tb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BytesModel value)? bytes,
    TResult Function(KbModel value)? kb,
    TResult Function(MbModel value)? mb,
    TResult Function(GbModel value)? gb,
    TResult Function(TbModel value)? tb,
    required TResult orElse(),
  }) {
    if (tb != null) {
      return tb(this);
    }
    return orElse();
  }
}

abstract class TbModel extends ByteModel {
  const factory TbModel(final double value) = _$TbModelImpl;
  const TbModel._() : super._();

  @override
  double get value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TbModelImplCopyWith<_$TbModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DartTypeModel _$DartTypeModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'string':
      return StringData.fromJson(json);
    case 'num':
      return NumData.fromJson(json);
    case 'bool':
      return BoolData.fromJson(json);
    case 'list':
      return ListData.fromJson(json);
    case 'json':
      return JsonData.fromJson(json);
    case 'dynamic':
      return DynamicData.fromJson(json);
    case 'nil':
      return NullData.fromJson(json);
    case 'jsonString':
      return JsonStringData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DartTypeModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DartTypeModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(num value) num,
    required TResult Function(bool value) bool,
    required TResult Function(List<dynamic> value) list,
    required TResult Function(Map<String, dynamic> value) json,
    required TResult Function(dynamic value) dynamic,
    required TResult Function() nil,
    required TResult Function(String jsonString) jsonString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(num value)? num,
    TResult? Function(bool value)? bool,
    TResult? Function(List<dynamic> value)? list,
    TResult? Function(Map<String, dynamic> value)? json,
    TResult? Function(dynamic value)? dynamic,
    TResult? Function()? nil,
    TResult? Function(String jsonString)? jsonString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(num value)? num,
    TResult Function(bool value)? bool,
    TResult Function(List<dynamic> value)? list,
    TResult Function(Map<String, dynamic> value)? json,
    TResult Function(dynamic value)? dynamic,
    TResult Function()? nil,
    TResult Function(String jsonString)? jsonString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringData value) string,
    required TResult Function(NumData value) num,
    required TResult Function(BoolData value) bool,
    required TResult Function(ListData value) list,
    required TResult Function(JsonData value) json,
    required TResult Function(DynamicData value) dynamic,
    required TResult Function(NullData value) nil,
    required TResult Function(JsonStringData value) jsonString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringData value)? string,
    TResult? Function(NumData value)? num,
    TResult? Function(BoolData value)? bool,
    TResult? Function(ListData value)? list,
    TResult? Function(JsonData value)? json,
    TResult? Function(DynamicData value)? dynamic,
    TResult? Function(NullData value)? nil,
    TResult? Function(JsonStringData value)? jsonString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringData value)? string,
    TResult Function(NumData value)? num,
    TResult Function(BoolData value)? bool,
    TResult Function(ListData value)? list,
    TResult Function(JsonData value)? json,
    TResult Function(DynamicData value)? dynamic,
    TResult Function(NullData value)? nil,
    TResult Function(JsonStringData value)? jsonString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DartTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartTypeModelCopyWith<$Res> {
  factory $DartTypeModelCopyWith(
          DartTypeModel value, $Res Function(DartTypeModel) then) =
      _$DartTypeModelCopyWithImpl<$Res, DartTypeModel>;
}

/// @nodoc
class _$DartTypeModelCopyWithImpl<$Res, $Val extends DartTypeModel>
    implements $DartTypeModelCopyWith<$Res> {
  _$DartTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StringDataImplCopyWith<$Res> {
  factory _$$StringDataImplCopyWith(
          _$StringDataImpl value, $Res Function(_$StringDataImpl) then) =
      __$$StringDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$StringDataImplCopyWithImpl<$Res>
    extends _$DartTypeModelCopyWithImpl<$Res, _$StringDataImpl>
    implements _$$StringDataImplCopyWith<$Res> {
  __$$StringDataImplCopyWithImpl(
      _$StringDataImpl _value, $Res Function(_$StringDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$StringDataImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringDataImpl extends StringData {
  const _$StringDataImpl(this.value, {final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$StringDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringDataImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.string(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringDataImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringDataImplCopyWith<_$StringDataImpl> get copyWith =>
      __$$StringDataImplCopyWithImpl<_$StringDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(num value) num,
    required TResult Function(bool value) bool,
    required TResult Function(List<dynamic> value) list,
    required TResult Function(Map<String, dynamic> value) json,
    required TResult Function(dynamic value) dynamic,
    required TResult Function() nil,
    required TResult Function(String jsonString) jsonString,
  }) {
    return string(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(num value)? num,
    TResult? Function(bool value)? bool,
    TResult? Function(List<dynamic> value)? list,
    TResult? Function(Map<String, dynamic> value)? json,
    TResult? Function(dynamic value)? dynamic,
    TResult? Function()? nil,
    TResult? Function(String jsonString)? jsonString,
  }) {
    return string?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(num value)? num,
    TResult Function(bool value)? bool,
    TResult Function(List<dynamic> value)? list,
    TResult Function(Map<String, dynamic> value)? json,
    TResult Function(dynamic value)? dynamic,
    TResult Function()? nil,
    TResult Function(String jsonString)? jsonString,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringData value) string,
    required TResult Function(NumData value) num,
    required TResult Function(BoolData value) bool,
    required TResult Function(ListData value) list,
    required TResult Function(JsonData value) json,
    required TResult Function(DynamicData value) dynamic,
    required TResult Function(NullData value) nil,
    required TResult Function(JsonStringData value) jsonString,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringData value)? string,
    TResult? Function(NumData value)? num,
    TResult? Function(BoolData value)? bool,
    TResult? Function(ListData value)? list,
    TResult? Function(JsonData value)? json,
    TResult? Function(DynamicData value)? dynamic,
    TResult? Function(NullData value)? nil,
    TResult? Function(JsonStringData value)? jsonString,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringData value)? string,
    TResult Function(NumData value)? num,
    TResult Function(BoolData value)? bool,
    TResult Function(ListData value)? list,
    TResult Function(JsonData value)? json,
    TResult Function(DynamicData value)? dynamic,
    TResult Function(NullData value)? nil,
    TResult Function(JsonStringData value)? jsonString,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StringDataImplToJson(
      this,
    );
  }
}

abstract class StringData extends DartTypeModel {
  const factory StringData(final String value) = _$StringDataImpl;
  const StringData._() : super._();

  factory StringData.fromJson(Map<String, dynamic> json) =
      _$StringDataImpl.fromJson;

  String get value;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringDataImplCopyWith<_$StringDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumDataImplCopyWith<$Res> {
  factory _$$NumDataImplCopyWith(
          _$NumDataImpl value, $Res Function(_$NumDataImpl) then) =
      __$$NumDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({num value});
}

/// @nodoc
class __$$NumDataImplCopyWithImpl<$Res>
    extends _$DartTypeModelCopyWithImpl<$Res, _$NumDataImpl>
    implements _$$NumDataImplCopyWith<$Res> {
  __$$NumDataImplCopyWithImpl(
      _$NumDataImpl _value, $Res Function(_$NumDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$NumDataImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumDataImpl extends NumData {
  const _$NumDataImpl(this.value, {final String? $type})
      : $type = $type ?? 'num',
        super._();

  factory _$NumDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumDataImplFromJson(json);

  @override
  final num value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.num(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumDataImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NumDataImplCopyWith<_$NumDataImpl> get copyWith =>
      __$$NumDataImplCopyWithImpl<_$NumDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(num value) num,
    required TResult Function(bool value) bool,
    required TResult Function(List<dynamic> value) list,
    required TResult Function(Map<String, dynamic> value) json,
    required TResult Function(dynamic value) dynamic,
    required TResult Function() nil,
    required TResult Function(String jsonString) jsonString,
  }) {
    return num(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(num value)? num,
    TResult? Function(bool value)? bool,
    TResult? Function(List<dynamic> value)? list,
    TResult? Function(Map<String, dynamic> value)? json,
    TResult? Function(dynamic value)? dynamic,
    TResult? Function()? nil,
    TResult? Function(String jsonString)? jsonString,
  }) {
    return num?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(num value)? num,
    TResult Function(bool value)? bool,
    TResult Function(List<dynamic> value)? list,
    TResult Function(Map<String, dynamic> value)? json,
    TResult Function(dynamic value)? dynamic,
    TResult Function()? nil,
    TResult Function(String jsonString)? jsonString,
    required TResult orElse(),
  }) {
    if (num != null) {
      return num(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringData value) string,
    required TResult Function(NumData value) num,
    required TResult Function(BoolData value) bool,
    required TResult Function(ListData value) list,
    required TResult Function(JsonData value) json,
    required TResult Function(DynamicData value) dynamic,
    required TResult Function(NullData value) nil,
    required TResult Function(JsonStringData value) jsonString,
  }) {
    return num(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringData value)? string,
    TResult? Function(NumData value)? num,
    TResult? Function(BoolData value)? bool,
    TResult? Function(ListData value)? list,
    TResult? Function(JsonData value)? json,
    TResult? Function(DynamicData value)? dynamic,
    TResult? Function(NullData value)? nil,
    TResult? Function(JsonStringData value)? jsonString,
  }) {
    return num?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringData value)? string,
    TResult Function(NumData value)? num,
    TResult Function(BoolData value)? bool,
    TResult Function(ListData value)? list,
    TResult Function(JsonData value)? json,
    TResult Function(DynamicData value)? dynamic,
    TResult Function(NullData value)? nil,
    TResult Function(JsonStringData value)? jsonString,
    required TResult orElse(),
  }) {
    if (num != null) {
      return num(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NumDataImplToJson(
      this,
    );
  }
}

abstract class NumData extends DartTypeModel {
  const factory NumData(final num value) = _$NumDataImpl;
  const NumData._() : super._();

  factory NumData.fromJson(Map<String, dynamic> json) = _$NumDataImpl.fromJson;

  num get value;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NumDataImplCopyWith<_$NumDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoolDataImplCopyWith<$Res> {
  factory _$$BoolDataImplCopyWith(
          _$BoolDataImpl value, $Res Function(_$BoolDataImpl) then) =
      __$$BoolDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$BoolDataImplCopyWithImpl<$Res>
    extends _$DartTypeModelCopyWithImpl<$Res, _$BoolDataImpl>
    implements _$$BoolDataImplCopyWith<$Res> {
  __$$BoolDataImplCopyWithImpl(
      _$BoolDataImpl _value, $Res Function(_$BoolDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$BoolDataImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoolDataImpl extends BoolData {
  const _$BoolDataImpl(this.value, {final String? $type})
      : $type = $type ?? 'bool',
        super._();

  factory _$BoolDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoolDataImplFromJson(json);

  @override
  final bool value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.bool(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoolDataImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoolDataImplCopyWith<_$BoolDataImpl> get copyWith =>
      __$$BoolDataImplCopyWithImpl<_$BoolDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(num value) num,
    required TResult Function(bool value) bool,
    required TResult Function(List<dynamic> value) list,
    required TResult Function(Map<String, dynamic> value) json,
    required TResult Function(dynamic value) dynamic,
    required TResult Function() nil,
    required TResult Function(String jsonString) jsonString,
  }) {
    return bool(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(num value)? num,
    TResult? Function(bool value)? bool,
    TResult? Function(List<dynamic> value)? list,
    TResult? Function(Map<String, dynamic> value)? json,
    TResult? Function(dynamic value)? dynamic,
    TResult? Function()? nil,
    TResult? Function(String jsonString)? jsonString,
  }) {
    return bool?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(num value)? num,
    TResult Function(bool value)? bool,
    TResult Function(List<dynamic> value)? list,
    TResult Function(Map<String, dynamic> value)? json,
    TResult Function(dynamic value)? dynamic,
    TResult Function()? nil,
    TResult Function(String jsonString)? jsonString,
    required TResult orElse(),
  }) {
    if (bool != null) {
      return bool(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringData value) string,
    required TResult Function(NumData value) num,
    required TResult Function(BoolData value) bool,
    required TResult Function(ListData value) list,
    required TResult Function(JsonData value) json,
    required TResult Function(DynamicData value) dynamic,
    required TResult Function(NullData value) nil,
    required TResult Function(JsonStringData value) jsonString,
  }) {
    return bool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringData value)? string,
    TResult? Function(NumData value)? num,
    TResult? Function(BoolData value)? bool,
    TResult? Function(ListData value)? list,
    TResult? Function(JsonData value)? json,
    TResult? Function(DynamicData value)? dynamic,
    TResult? Function(NullData value)? nil,
    TResult? Function(JsonStringData value)? jsonString,
  }) {
    return bool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringData value)? string,
    TResult Function(NumData value)? num,
    TResult Function(BoolData value)? bool,
    TResult Function(ListData value)? list,
    TResult Function(JsonData value)? json,
    TResult Function(DynamicData value)? dynamic,
    TResult Function(NullData value)? nil,
    TResult Function(JsonStringData value)? jsonString,
    required TResult orElse(),
  }) {
    if (bool != null) {
      return bool(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BoolDataImplToJson(
      this,
    );
  }
}

abstract class BoolData extends DartTypeModel {
  const factory BoolData(final bool value) = _$BoolDataImpl;
  const BoolData._() : super._();

  factory BoolData.fromJson(Map<String, dynamic> json) =
      _$BoolDataImpl.fromJson;

  bool get value;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoolDataImplCopyWith<_$BoolDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListDataImplCopyWith<$Res> {
  factory _$$ListDataImplCopyWith(
          _$ListDataImpl value, $Res Function(_$ListDataImpl) then) =
      __$$ListDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> value});
}

/// @nodoc
class __$$ListDataImplCopyWithImpl<$Res>
    extends _$DartTypeModelCopyWithImpl<$Res, _$ListDataImpl>
    implements _$$ListDataImplCopyWith<$Res> {
  __$$ListDataImplCopyWithImpl(
      _$ListDataImpl _value, $Res Function(_$ListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ListDataImpl(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListDataImpl extends ListData {
  const _$ListDataImpl(final List<dynamic> value, {final String? $type})
      : _value = value,
        $type = $type ?? 'list',
        super._();

  factory _$ListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListDataImplFromJson(json);

  final List<dynamic> _value;
  @override
  List<dynamic> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.list(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDataImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListDataImplCopyWith<_$ListDataImpl> get copyWith =>
      __$$ListDataImplCopyWithImpl<_$ListDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(num value) num,
    required TResult Function(bool value) bool,
    required TResult Function(List<dynamic> value) list,
    required TResult Function(Map<String, dynamic> value) json,
    required TResult Function(dynamic value) dynamic,
    required TResult Function() nil,
    required TResult Function(String jsonString) jsonString,
  }) {
    return list(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(num value)? num,
    TResult? Function(bool value)? bool,
    TResult? Function(List<dynamic> value)? list,
    TResult? Function(Map<String, dynamic> value)? json,
    TResult? Function(dynamic value)? dynamic,
    TResult? Function()? nil,
    TResult? Function(String jsonString)? jsonString,
  }) {
    return list?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(num value)? num,
    TResult Function(bool value)? bool,
    TResult Function(List<dynamic> value)? list,
    TResult Function(Map<String, dynamic> value)? json,
    TResult Function(dynamic value)? dynamic,
    TResult Function()? nil,
    TResult Function(String jsonString)? jsonString,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringData value) string,
    required TResult Function(NumData value) num,
    required TResult Function(BoolData value) bool,
    required TResult Function(ListData value) list,
    required TResult Function(JsonData value) json,
    required TResult Function(DynamicData value) dynamic,
    required TResult Function(NullData value) nil,
    required TResult Function(JsonStringData value) jsonString,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringData value)? string,
    TResult? Function(NumData value)? num,
    TResult? Function(BoolData value)? bool,
    TResult? Function(ListData value)? list,
    TResult? Function(JsonData value)? json,
    TResult? Function(DynamicData value)? dynamic,
    TResult? Function(NullData value)? nil,
    TResult? Function(JsonStringData value)? jsonString,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringData value)? string,
    TResult Function(NumData value)? num,
    TResult Function(BoolData value)? bool,
    TResult Function(ListData value)? list,
    TResult Function(JsonData value)? json,
    TResult Function(DynamicData value)? dynamic,
    TResult Function(NullData value)? nil,
    TResult Function(JsonStringData value)? jsonString,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ListDataImplToJson(
      this,
    );
  }
}

abstract class ListData extends DartTypeModel {
  const factory ListData(final List<dynamic> value) = _$ListDataImpl;
  const ListData._() : super._();

  factory ListData.fromJson(Map<String, dynamic> json) =
      _$ListDataImpl.fromJson;

  List<dynamic> get value;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListDataImplCopyWith<_$ListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JsonDataImplCopyWith<$Res> {
  factory _$$JsonDataImplCopyWith(
          _$JsonDataImpl value, $Res Function(_$JsonDataImpl) then) =
      __$$JsonDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> value});
}

/// @nodoc
class __$$JsonDataImplCopyWithImpl<$Res>
    extends _$DartTypeModelCopyWithImpl<$Res, _$JsonDataImpl>
    implements _$$JsonDataImplCopyWith<$Res> {
  __$$JsonDataImplCopyWithImpl(
      _$JsonDataImpl _value, $Res Function(_$JsonDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$JsonDataImpl(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsonDataImpl extends JsonData {
  const _$JsonDataImpl(final Map<String, dynamic> value, {final String? $type})
      : _value = value,
        $type = $type ?? 'json',
        super._();

  factory _$JsonDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonDataImplFromJson(json);

  final Map<String, dynamic> _value;
  @override
  Map<String, dynamic> get value {
    if (_value is EqualUnmodifiableMapView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.json(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonDataImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonDataImplCopyWith<_$JsonDataImpl> get copyWith =>
      __$$JsonDataImplCopyWithImpl<_$JsonDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(num value) num,
    required TResult Function(bool value) bool,
    required TResult Function(List<dynamic> value) list,
    required TResult Function(Map<String, dynamic> value) json,
    required TResult Function(dynamic value) dynamic,
    required TResult Function() nil,
    required TResult Function(String jsonString) jsonString,
  }) {
    return json(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(num value)? num,
    TResult? Function(bool value)? bool,
    TResult? Function(List<dynamic> value)? list,
    TResult? Function(Map<String, dynamic> value)? json,
    TResult? Function(dynamic value)? dynamic,
    TResult? Function()? nil,
    TResult? Function(String jsonString)? jsonString,
  }) {
    return json?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(num value)? num,
    TResult Function(bool value)? bool,
    TResult Function(List<dynamic> value)? list,
    TResult Function(Map<String, dynamic> value)? json,
    TResult Function(dynamic value)? dynamic,
    TResult Function()? nil,
    TResult Function(String jsonString)? jsonString,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringData value) string,
    required TResult Function(NumData value) num,
    required TResult Function(BoolData value) bool,
    required TResult Function(ListData value) list,
    required TResult Function(JsonData value) json,
    required TResult Function(DynamicData value) dynamic,
    required TResult Function(NullData value) nil,
    required TResult Function(JsonStringData value) jsonString,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringData value)? string,
    TResult? Function(NumData value)? num,
    TResult? Function(BoolData value)? bool,
    TResult? Function(ListData value)? list,
    TResult? Function(JsonData value)? json,
    TResult? Function(DynamicData value)? dynamic,
    TResult? Function(NullData value)? nil,
    TResult? Function(JsonStringData value)? jsonString,
  }) {
    return json?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringData value)? string,
    TResult Function(NumData value)? num,
    TResult Function(BoolData value)? bool,
    TResult Function(ListData value)? list,
    TResult Function(JsonData value)? json,
    TResult Function(DynamicData value)? dynamic,
    TResult Function(NullData value)? nil,
    TResult Function(JsonStringData value)? jsonString,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonDataImplToJson(
      this,
    );
  }
}

abstract class JsonData extends DartTypeModel {
  const factory JsonData(final Map<String, dynamic> value) = _$JsonDataImpl;
  const JsonData._() : super._();

  factory JsonData.fromJson(Map<String, dynamic> json) =
      _$JsonDataImpl.fromJson;

  Map<String, dynamic> get value;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonDataImplCopyWith<_$JsonDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DynamicDataImplCopyWith<$Res> {
  factory _$$DynamicDataImplCopyWith(
          _$DynamicDataImpl value, $Res Function(_$DynamicDataImpl) then) =
      __$$DynamicDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$DynamicDataImplCopyWithImpl<$Res>
    extends _$DartTypeModelCopyWithImpl<$Res, _$DynamicDataImpl>
    implements _$$DynamicDataImplCopyWith<$Res> {
  __$$DynamicDataImplCopyWithImpl(
      _$DynamicDataImpl _value, $Res Function(_$DynamicDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$DynamicDataImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicDataImpl extends DynamicData {
  const _$DynamicDataImpl(this.value, {final String? $type})
      : $type = $type ?? 'dynamic',
        super._();

  factory _$DynamicDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicDataImplFromJson(json);

  @override
  final dynamic value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.dynamic(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicDataImpl &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicDataImplCopyWith<_$DynamicDataImpl> get copyWith =>
      __$$DynamicDataImplCopyWithImpl<_$DynamicDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(num value) num,
    required TResult Function(bool value) bool,
    required TResult Function(List<dynamic> value) list,
    required TResult Function(Map<String, dynamic> value) json,
    required TResult Function(dynamic value) dynamic,
    required TResult Function() nil,
    required TResult Function(String jsonString) jsonString,
  }) {
    return dynamic(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(num value)? num,
    TResult? Function(bool value)? bool,
    TResult? Function(List<dynamic> value)? list,
    TResult? Function(Map<String, dynamic> value)? json,
    TResult? Function(dynamic value)? dynamic,
    TResult? Function()? nil,
    TResult? Function(String jsonString)? jsonString,
  }) {
    return dynamic?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(num value)? num,
    TResult Function(bool value)? bool,
    TResult Function(List<dynamic> value)? list,
    TResult Function(Map<String, dynamic> value)? json,
    TResult Function(dynamic value)? dynamic,
    TResult Function()? nil,
    TResult Function(String jsonString)? jsonString,
    required TResult orElse(),
  }) {
    if (dynamic != null) {
      return dynamic(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringData value) string,
    required TResult Function(NumData value) num,
    required TResult Function(BoolData value) bool,
    required TResult Function(ListData value) list,
    required TResult Function(JsonData value) json,
    required TResult Function(DynamicData value) dynamic,
    required TResult Function(NullData value) nil,
    required TResult Function(JsonStringData value) jsonString,
  }) {
    return dynamic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringData value)? string,
    TResult? Function(NumData value)? num,
    TResult? Function(BoolData value)? bool,
    TResult? Function(ListData value)? list,
    TResult? Function(JsonData value)? json,
    TResult? Function(DynamicData value)? dynamic,
    TResult? Function(NullData value)? nil,
    TResult? Function(JsonStringData value)? jsonString,
  }) {
    return dynamic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringData value)? string,
    TResult Function(NumData value)? num,
    TResult Function(BoolData value)? bool,
    TResult Function(ListData value)? list,
    TResult Function(JsonData value)? json,
    TResult Function(DynamicData value)? dynamic,
    TResult Function(NullData value)? nil,
    TResult Function(JsonStringData value)? jsonString,
    required TResult orElse(),
  }) {
    if (dynamic != null) {
      return dynamic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicDataImplToJson(
      this,
    );
  }
}

abstract class DynamicData extends DartTypeModel {
  const factory DynamicData(final dynamic value) = _$DynamicDataImpl;
  const DynamicData._() : super._();

  factory DynamicData.fromJson(Map<String, dynamic> json) =
      _$DynamicDataImpl.fromJson;

  dynamic get value;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicDataImplCopyWith<_$DynamicDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NullDataImplCopyWith<$Res> {
  factory _$$NullDataImplCopyWith(
          _$NullDataImpl value, $Res Function(_$NullDataImpl) then) =
      __$$NullDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NullDataImplCopyWithImpl<$Res>
    extends _$DartTypeModelCopyWithImpl<$Res, _$NullDataImpl>
    implements _$$NullDataImplCopyWith<$Res> {
  __$$NullDataImplCopyWithImpl(
      _$NullDataImpl _value, $Res Function(_$NullDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NullDataImpl extends NullData {
  const _$NullDataImpl({final String? $type})
      : $type = $type ?? 'nil',
        super._();

  factory _$NullDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NullDataImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.nil()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NullDataImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(num value) num,
    required TResult Function(bool value) bool,
    required TResult Function(List<dynamic> value) list,
    required TResult Function(Map<String, dynamic> value) json,
    required TResult Function(dynamic value) dynamic,
    required TResult Function() nil,
    required TResult Function(String jsonString) jsonString,
  }) {
    return nil();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(num value)? num,
    TResult? Function(bool value)? bool,
    TResult? Function(List<dynamic> value)? list,
    TResult? Function(Map<String, dynamic> value)? json,
    TResult? Function(dynamic value)? dynamic,
    TResult? Function()? nil,
    TResult? Function(String jsonString)? jsonString,
  }) {
    return nil?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(num value)? num,
    TResult Function(bool value)? bool,
    TResult Function(List<dynamic> value)? list,
    TResult Function(Map<String, dynamic> value)? json,
    TResult Function(dynamic value)? dynamic,
    TResult Function()? nil,
    TResult Function(String jsonString)? jsonString,
    required TResult orElse(),
  }) {
    if (nil != null) {
      return nil();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringData value) string,
    required TResult Function(NumData value) num,
    required TResult Function(BoolData value) bool,
    required TResult Function(ListData value) list,
    required TResult Function(JsonData value) json,
    required TResult Function(DynamicData value) dynamic,
    required TResult Function(NullData value) nil,
    required TResult Function(JsonStringData value) jsonString,
  }) {
    return nil(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringData value)? string,
    TResult? Function(NumData value)? num,
    TResult? Function(BoolData value)? bool,
    TResult? Function(ListData value)? list,
    TResult? Function(JsonData value)? json,
    TResult? Function(DynamicData value)? dynamic,
    TResult? Function(NullData value)? nil,
    TResult? Function(JsonStringData value)? jsonString,
  }) {
    return nil?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringData value)? string,
    TResult Function(NumData value)? num,
    TResult Function(BoolData value)? bool,
    TResult Function(ListData value)? list,
    TResult Function(JsonData value)? json,
    TResult Function(DynamicData value)? dynamic,
    TResult Function(NullData value)? nil,
    TResult Function(JsonStringData value)? jsonString,
    required TResult orElse(),
  }) {
    if (nil != null) {
      return nil(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NullDataImplToJson(
      this,
    );
  }
}

abstract class NullData extends DartTypeModel {
  const factory NullData() = _$NullDataImpl;
  const NullData._() : super._();

  factory NullData.fromJson(Map<String, dynamic> json) =
      _$NullDataImpl.fromJson;
}

/// @nodoc
abstract class _$$JsonStringDataImplCopyWith<$Res> {
  factory _$$JsonStringDataImplCopyWith(_$JsonStringDataImpl value,
          $Res Function(_$JsonStringDataImpl) then) =
      __$$JsonStringDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String jsonString});
}

/// @nodoc
class __$$JsonStringDataImplCopyWithImpl<$Res>
    extends _$DartTypeModelCopyWithImpl<$Res, _$JsonStringDataImpl>
    implements _$$JsonStringDataImplCopyWith<$Res> {
  __$$JsonStringDataImplCopyWithImpl(
      _$JsonStringDataImpl _value, $Res Function(_$JsonStringDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jsonString = null,
  }) {
    return _then(_$JsonStringDataImpl(
      null == jsonString
          ? _value.jsonString
          : jsonString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JsonStringDataImpl extends JsonStringData {
  const _$JsonStringDataImpl(this.jsonString, {final String? $type})
      : $type = $type ?? 'jsonString',
        super._();

  factory _$JsonStringDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonStringDataImplFromJson(json);

  @override
  final String jsonString;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.jsonString(jsonString: $jsonString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonStringDataImpl &&
            (identical(other.jsonString, jsonString) ||
                other.jsonString == jsonString));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonString);

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonStringDataImplCopyWith<_$JsonStringDataImpl> get copyWith =>
      __$$JsonStringDataImplCopyWithImpl<_$JsonStringDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(num value) num,
    required TResult Function(bool value) bool,
    required TResult Function(List<dynamic> value) list,
    required TResult Function(Map<String, dynamic> value) json,
    required TResult Function(dynamic value) dynamic,
    required TResult Function() nil,
    required TResult Function(String jsonString) jsonString,
  }) {
    return jsonString(this.jsonString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(num value)? num,
    TResult? Function(bool value)? bool,
    TResult? Function(List<dynamic> value)? list,
    TResult? Function(Map<String, dynamic> value)? json,
    TResult? Function(dynamic value)? dynamic,
    TResult? Function()? nil,
    TResult? Function(String jsonString)? jsonString,
  }) {
    return jsonString?.call(this.jsonString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(num value)? num,
    TResult Function(bool value)? bool,
    TResult Function(List<dynamic> value)? list,
    TResult Function(Map<String, dynamic> value)? json,
    TResult Function(dynamic value)? dynamic,
    TResult Function()? nil,
    TResult Function(String jsonString)? jsonString,
    required TResult orElse(),
  }) {
    if (jsonString != null) {
      return jsonString(this.jsonString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringData value) string,
    required TResult Function(NumData value) num,
    required TResult Function(BoolData value) bool,
    required TResult Function(ListData value) list,
    required TResult Function(JsonData value) json,
    required TResult Function(DynamicData value) dynamic,
    required TResult Function(NullData value) nil,
    required TResult Function(JsonStringData value) jsonString,
  }) {
    return jsonString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringData value)? string,
    TResult? Function(NumData value)? num,
    TResult? Function(BoolData value)? bool,
    TResult? Function(ListData value)? list,
    TResult? Function(JsonData value)? json,
    TResult? Function(DynamicData value)? dynamic,
    TResult? Function(NullData value)? nil,
    TResult? Function(JsonStringData value)? jsonString,
  }) {
    return jsonString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringData value)? string,
    TResult Function(NumData value)? num,
    TResult Function(BoolData value)? bool,
    TResult Function(ListData value)? list,
    TResult Function(JsonData value)? json,
    TResult Function(DynamicData value)? dynamic,
    TResult Function(NullData value)? nil,
    TResult Function(JsonStringData value)? jsonString,
    required TResult orElse(),
  }) {
    if (jsonString != null) {
      return jsonString(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonStringDataImplToJson(
      this,
    );
  }
}

abstract class JsonStringData extends DartTypeModel {
  const factory JsonStringData(final String jsonString) = _$JsonStringDataImpl;
  const JsonStringData._() : super._();

  factory JsonStringData.fromJson(Map<String, dynamic> json) =
      _$JsonStringDataImpl.fromJson;

  String get jsonString;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonStringDataImplCopyWith<_$JsonStringDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageParams _$ImageParamsFromJson(Map<String, dynamic> json) {
  return _ImageParams.fromJson(json);
}

/// @nodoc
mixin _$ImageParams {
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get size => throw _privateConstructorUsedError;
  @igFreezedJson
  BoxFit? get fit => throw _privateConstructorUsedError;
  @igFreezedJson
  BorderRadius? get borderRadius => throw _privateConstructorUsedError;
  @igFreezedJson
  BoxShape? get shape => throw _privateConstructorUsedError;
  bool get enableMemoryCache => throw _privateConstructorUsedError;
  String? get heroTag => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  @igFreezedJson
  Widget? get errorWidget => throw _privateConstructorUsedError;
  @igFreezedJson
  VoidCallback? get onTap => throw _privateConstructorUsedError;
  @igFreezedJson
  Color? get color => throw _privateConstructorUsedError;
  bool get clearMemoryCacheIfFailed => throw _privateConstructorUsedError;
  bool get clearMemoryCacheWhenDispose => throw _privateConstructorUsedError;
  bool get gaplessPlayback => throw _privateConstructorUsedError;
  @igFreezedJson
  BlendMode? get colorBlendMode => throw _privateConstructorUsedError; //---net
  double? get scale => throw _privateConstructorUsedError;
  Map<String, String> get headers => throw _privateConstructorUsedError;
  bool get cache => throw _privateConstructorUsedError;
  int get retries => throw _privateConstructorUsedError;
  @igFreezedJson
  Duration? get timeLimit => throw _privateConstructorUsedError;
  @igFreezedJson
  Duration get timeRetry => throw _privateConstructorUsedError;
  @igFreezedJson
  CancellationToken? get cancelToken => throw _privateConstructorUsedError;
  String? get cacheKey => throw _privateConstructorUsedError;
  bool get printError => throw _privateConstructorUsedError;
  bool get cacheRawData => throw _privateConstructorUsedError;
  String? get imageCacheName => throw _privateConstructorUsedError;
  @igFreezedJson
  Duration? get cacheMaxAge => throw _privateConstructorUsedError;
  int? get cacheWidth => throw _privateConstructorUsedError;
  int? get cacheHeight => throw _privateConstructorUsedError;
  double? get compressionRatio => throw _privateConstructorUsedError;
  int? get maxBytes => throw _privateConstructorUsedError;
  String? get package => throw _privateConstructorUsedError;
  @igFreezedJson
  AssetBundle? get bundle => throw _privateConstructorUsedError;
  @Doc(message: '自定义完成小部件')
  @igFreezedJson
  CustomCompletedWidget? get customCompletedWidget =>
      throw _privateConstructorUsedError;
  @igFreezedJson
  Widget? get customLoadingWidget => throw _privateConstructorUsedError;
  @igFreezedJson
  InitEditorConfigHandler? get initEditorConfigHandler =>
      throw _privateConstructorUsedError;
  @igFreezedJson
  Key? get extendedImageEditorKey => throw _privateConstructorUsedError;
  @igFreezedJson
  ExtendedImageMode? get mode => throw _privateConstructorUsedError;

  /// Serializes this ImageParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageParamsCopyWith<ImageParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageParamsCopyWith<$Res> {
  factory $ImageParamsCopyWith(
          ImageParams value, $Res Function(ImageParams) then) =
      _$ImageParamsCopyWithImpl<$Res, ImageParams>;
  @useResult
  $Res call(
      {double? width,
      double? height,
      double? size,
      @igFreezedJson BoxFit? fit,
      @igFreezedJson BorderRadius? borderRadius,
      @igFreezedJson BoxShape? shape,
      bool enableMemoryCache,
      String? heroTag,
      bool isSelected,
      @igFreezedJson Widget? errorWidget,
      @igFreezedJson VoidCallback? onTap,
      @igFreezedJson Color? color,
      bool clearMemoryCacheIfFailed,
      bool clearMemoryCacheWhenDispose,
      bool gaplessPlayback,
      @igFreezedJson BlendMode? colorBlendMode,
      double? scale,
      Map<String, String> headers,
      bool cache,
      int retries,
      @igFreezedJson Duration? timeLimit,
      @igFreezedJson Duration timeRetry,
      @igFreezedJson CancellationToken? cancelToken,
      String? cacheKey,
      bool printError,
      bool cacheRawData,
      String? imageCacheName,
      @igFreezedJson Duration? cacheMaxAge,
      int? cacheWidth,
      int? cacheHeight,
      double? compressionRatio,
      int? maxBytes,
      String? package,
      @igFreezedJson AssetBundle? bundle,
      @Doc(message: '自定义完成小部件')
      @igFreezedJson
      CustomCompletedWidget? customCompletedWidget,
      @igFreezedJson Widget? customLoadingWidget,
      @igFreezedJson InitEditorConfigHandler? initEditorConfigHandler,
      @igFreezedJson Key? extendedImageEditorKey,
      @igFreezedJson ExtendedImageMode? mode});
}

/// @nodoc
class _$ImageParamsCopyWithImpl<$Res, $Val extends ImageParams>
    implements $ImageParamsCopyWith<$Res> {
  _$ImageParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? size = freezed,
    Object? fit = freezed,
    Object? borderRadius = freezed,
    Object? shape = freezed,
    Object? enableMemoryCache = null,
    Object? heroTag = freezed,
    Object? isSelected = null,
    Object? errorWidget = freezed,
    Object? onTap = freezed,
    Object? color = freezed,
    Object? clearMemoryCacheIfFailed = null,
    Object? clearMemoryCacheWhenDispose = null,
    Object? gaplessPlayback = null,
    Object? colorBlendMode = freezed,
    Object? scale = freezed,
    Object? headers = null,
    Object? cache = null,
    Object? retries = null,
    Object? timeLimit = freezed,
    Object? timeRetry = null,
    Object? cancelToken = freezed,
    Object? cacheKey = freezed,
    Object? printError = null,
    Object? cacheRawData = null,
    Object? imageCacheName = freezed,
    Object? cacheMaxAge = freezed,
    Object? cacheWidth = freezed,
    Object? cacheHeight = freezed,
    Object? compressionRatio = freezed,
    Object? maxBytes = freezed,
    Object? package = freezed,
    Object? bundle = freezed,
    Object? customCompletedWidget = freezed,
    Object? customLoadingWidget = freezed,
    Object? initEditorConfigHandler = freezed,
    Object? extendedImageEditorKey = freezed,
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadius?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape?,
      enableMemoryCache: null == enableMemoryCache
          ? _value.enableMemoryCache
          : enableMemoryCache // ignore: cast_nullable_to_non_nullable
              as bool,
      heroTag: freezed == heroTag
          ? _value.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWidget: freezed == errorWidget
          ? _value.errorWidget
          : errorWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      clearMemoryCacheIfFailed: null == clearMemoryCacheIfFailed
          ? _value.clearMemoryCacheIfFailed
          : clearMemoryCacheIfFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      clearMemoryCacheWhenDispose: null == clearMemoryCacheWhenDispose
          ? _value.clearMemoryCacheWhenDispose
          : clearMemoryCacheWhenDispose // ignore: cast_nullable_to_non_nullable
              as bool,
      gaplessPlayback: null == gaplessPlayback
          ? _value.gaplessPlayback
          : gaplessPlayback // ignore: cast_nullable_to_non_nullable
              as bool,
      colorBlendMode: freezed == colorBlendMode
          ? _value.colorBlendMode
          : colorBlendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode?,
      scale: freezed == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double?,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as bool,
      retries: null == retries
          ? _value.retries
          : retries // ignore: cast_nullable_to_non_nullable
              as int,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as Duration?,
      timeRetry: null == timeRetry
          ? _value.timeRetry
          : timeRetry // ignore: cast_nullable_to_non_nullable
              as Duration,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancellationToken?,
      cacheKey: freezed == cacheKey
          ? _value.cacheKey
          : cacheKey // ignore: cast_nullable_to_non_nullable
              as String?,
      printError: null == printError
          ? _value.printError
          : printError // ignore: cast_nullable_to_non_nullable
              as bool,
      cacheRawData: null == cacheRawData
          ? _value.cacheRawData
          : cacheRawData // ignore: cast_nullable_to_non_nullable
              as bool,
      imageCacheName: freezed == imageCacheName
          ? _value.imageCacheName
          : imageCacheName // ignore: cast_nullable_to_non_nullable
              as String?,
      cacheMaxAge: freezed == cacheMaxAge
          ? _value.cacheMaxAge
          : cacheMaxAge // ignore: cast_nullable_to_non_nullable
              as Duration?,
      cacheWidth: freezed == cacheWidth
          ? _value.cacheWidth
          : cacheWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      cacheHeight: freezed == cacheHeight
          ? _value.cacheHeight
          : cacheHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      compressionRatio: freezed == compressionRatio
          ? _value.compressionRatio
          : compressionRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      maxBytes: freezed == maxBytes
          ? _value.maxBytes
          : maxBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String?,
      bundle: freezed == bundle
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as AssetBundle?,
      customCompletedWidget: freezed == customCompletedWidget
          ? _value.customCompletedWidget
          : customCompletedWidget // ignore: cast_nullable_to_non_nullable
              as CustomCompletedWidget?,
      customLoadingWidget: freezed == customLoadingWidget
          ? _value.customLoadingWidget
          : customLoadingWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      initEditorConfigHandler: freezed == initEditorConfigHandler
          ? _value.initEditorConfigHandler
          : initEditorConfigHandler // ignore: cast_nullable_to_non_nullable
              as InitEditorConfigHandler?,
      extendedImageEditorKey: freezed == extendedImageEditorKey
          ? _value.extendedImageEditorKey
          : extendedImageEditorKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ExtendedImageMode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageParamsImplCopyWith<$Res>
    implements $ImageParamsCopyWith<$Res> {
  factory _$$ImageParamsImplCopyWith(
          _$ImageParamsImpl value, $Res Function(_$ImageParamsImpl) then) =
      __$$ImageParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? width,
      double? height,
      double? size,
      @igFreezedJson BoxFit? fit,
      @igFreezedJson BorderRadius? borderRadius,
      @igFreezedJson BoxShape? shape,
      bool enableMemoryCache,
      String? heroTag,
      bool isSelected,
      @igFreezedJson Widget? errorWidget,
      @igFreezedJson VoidCallback? onTap,
      @igFreezedJson Color? color,
      bool clearMemoryCacheIfFailed,
      bool clearMemoryCacheWhenDispose,
      bool gaplessPlayback,
      @igFreezedJson BlendMode? colorBlendMode,
      double? scale,
      Map<String, String> headers,
      bool cache,
      int retries,
      @igFreezedJson Duration? timeLimit,
      @igFreezedJson Duration timeRetry,
      @igFreezedJson CancellationToken? cancelToken,
      String? cacheKey,
      bool printError,
      bool cacheRawData,
      String? imageCacheName,
      @igFreezedJson Duration? cacheMaxAge,
      int? cacheWidth,
      int? cacheHeight,
      double? compressionRatio,
      int? maxBytes,
      String? package,
      @igFreezedJson AssetBundle? bundle,
      @Doc(message: '自定义完成小部件')
      @igFreezedJson
      CustomCompletedWidget? customCompletedWidget,
      @igFreezedJson Widget? customLoadingWidget,
      @igFreezedJson InitEditorConfigHandler? initEditorConfigHandler,
      @igFreezedJson Key? extendedImageEditorKey,
      @igFreezedJson ExtendedImageMode? mode});
}

/// @nodoc
class __$$ImageParamsImplCopyWithImpl<$Res>
    extends _$ImageParamsCopyWithImpl<$Res, _$ImageParamsImpl>
    implements _$$ImageParamsImplCopyWith<$Res> {
  __$$ImageParamsImplCopyWithImpl(
      _$ImageParamsImpl _value, $Res Function(_$ImageParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? size = freezed,
    Object? fit = freezed,
    Object? borderRadius = freezed,
    Object? shape = freezed,
    Object? enableMemoryCache = null,
    Object? heroTag = freezed,
    Object? isSelected = null,
    Object? errorWidget = freezed,
    Object? onTap = freezed,
    Object? color = freezed,
    Object? clearMemoryCacheIfFailed = null,
    Object? clearMemoryCacheWhenDispose = null,
    Object? gaplessPlayback = null,
    Object? colorBlendMode = freezed,
    Object? scale = freezed,
    Object? headers = null,
    Object? cache = null,
    Object? retries = null,
    Object? timeLimit = freezed,
    Object? timeRetry = null,
    Object? cancelToken = freezed,
    Object? cacheKey = freezed,
    Object? printError = null,
    Object? cacheRawData = null,
    Object? imageCacheName = freezed,
    Object? cacheMaxAge = freezed,
    Object? cacheWidth = freezed,
    Object? cacheHeight = freezed,
    Object? compressionRatio = freezed,
    Object? maxBytes = freezed,
    Object? package = freezed,
    Object? bundle = freezed,
    Object? customCompletedWidget = freezed,
    Object? customLoadingWidget = freezed,
    Object? initEditorConfigHandler = freezed,
    Object? extendedImageEditorKey = freezed,
    Object? mode = freezed,
  }) {
    return _then(_$ImageParamsImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      fit: freezed == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadius?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape?,
      enableMemoryCache: null == enableMemoryCache
          ? _value.enableMemoryCache
          : enableMemoryCache // ignore: cast_nullable_to_non_nullable
              as bool,
      heroTag: freezed == heroTag
          ? _value.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWidget: freezed == errorWidget
          ? _value.errorWidget
          : errorWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      clearMemoryCacheIfFailed: null == clearMemoryCacheIfFailed
          ? _value.clearMemoryCacheIfFailed
          : clearMemoryCacheIfFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      clearMemoryCacheWhenDispose: null == clearMemoryCacheWhenDispose
          ? _value.clearMemoryCacheWhenDispose
          : clearMemoryCacheWhenDispose // ignore: cast_nullable_to_non_nullable
              as bool,
      gaplessPlayback: null == gaplessPlayback
          ? _value.gaplessPlayback
          : gaplessPlayback // ignore: cast_nullable_to_non_nullable
              as bool,
      colorBlendMode: freezed == colorBlendMode
          ? _value.colorBlendMode
          : colorBlendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode?,
      scale: freezed == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double?,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as bool,
      retries: null == retries
          ? _value.retries
          : retries // ignore: cast_nullable_to_non_nullable
              as int,
      timeLimit: freezed == timeLimit
          ? _value.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as Duration?,
      timeRetry: null == timeRetry
          ? _value.timeRetry
          : timeRetry // ignore: cast_nullable_to_non_nullable
              as Duration,
      cancelToken: freezed == cancelToken
          ? _value.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancellationToken?,
      cacheKey: freezed == cacheKey
          ? _value.cacheKey
          : cacheKey // ignore: cast_nullable_to_non_nullable
              as String?,
      printError: null == printError
          ? _value.printError
          : printError // ignore: cast_nullable_to_non_nullable
              as bool,
      cacheRawData: null == cacheRawData
          ? _value.cacheRawData
          : cacheRawData // ignore: cast_nullable_to_non_nullable
              as bool,
      imageCacheName: freezed == imageCacheName
          ? _value.imageCacheName
          : imageCacheName // ignore: cast_nullable_to_non_nullable
              as String?,
      cacheMaxAge: freezed == cacheMaxAge
          ? _value.cacheMaxAge
          : cacheMaxAge // ignore: cast_nullable_to_non_nullable
              as Duration?,
      cacheWidth: freezed == cacheWidth
          ? _value.cacheWidth
          : cacheWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      cacheHeight: freezed == cacheHeight
          ? _value.cacheHeight
          : cacheHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      compressionRatio: freezed == compressionRatio
          ? _value.compressionRatio
          : compressionRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      maxBytes: freezed == maxBytes
          ? _value.maxBytes
          : maxBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String?,
      bundle: freezed == bundle
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as AssetBundle?,
      customCompletedWidget: freezed == customCompletedWidget
          ? _value.customCompletedWidget
          : customCompletedWidget // ignore: cast_nullable_to_non_nullable
              as CustomCompletedWidget?,
      customLoadingWidget: freezed == customLoadingWidget
          ? _value.customLoadingWidget
          : customLoadingWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      initEditorConfigHandler: freezed == initEditorConfigHandler
          ? _value.initEditorConfigHandler
          : initEditorConfigHandler // ignore: cast_nullable_to_non_nullable
              as InitEditorConfigHandler?,
      extendedImageEditorKey: freezed == extendedImageEditorKey
          ? _value.extendedImageEditorKey
          : extendedImageEditorKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ExtendedImageMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageParamsImpl extends _ImageParams {
  const _$ImageParamsImpl(
      {this.width,
      this.height,
      this.size,
      @igFreezedJson this.fit,
      @igFreezedJson this.borderRadius,
      @igFreezedJson this.shape,
      this.enableMemoryCache = true,
      this.heroTag,
      this.isSelected = false,
      @igFreezedJson this.errorWidget,
      @igFreezedJson this.onTap,
      @igFreezedJson this.color,
      this.clearMemoryCacheIfFailed = true,
      this.clearMemoryCacheWhenDispose = false,
      this.gaplessPlayback = true,
      @igFreezedJson this.colorBlendMode,
      this.scale,
      final Map<String, String> headers = const {},
      this.cache = true,
      this.retries = 3,
      @igFreezedJson this.timeLimit,
      @igFreezedJson this.timeRetry = const Duration(seconds: 3),
      @igFreezedJson this.cancelToken,
      this.cacheKey,
      this.printError = false,
      this.cacheRawData = true,
      this.imageCacheName,
      @igFreezedJson this.cacheMaxAge,
      this.cacheWidth,
      this.cacheHeight,
      this.compressionRatio,
      this.maxBytes,
      this.package,
      @igFreezedJson this.bundle,
      @Doc(message: '自定义完成小部件') @igFreezedJson this.customCompletedWidget,
      @igFreezedJson this.customLoadingWidget,
      @igFreezedJson this.initEditorConfigHandler,
      @igFreezedJson this.extendedImageEditorKey,
      @igFreezedJson this.mode})
      : _headers = headers,
        super._();

  factory _$ImageParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageParamsImplFromJson(json);

  @override
  final double? width;
  @override
  final double? height;
  @override
  final double? size;
  @override
  @igFreezedJson
  final BoxFit? fit;
  @override
  @igFreezedJson
  final BorderRadius? borderRadius;
  @override
  @igFreezedJson
  final BoxShape? shape;
  @override
  @JsonKey()
  final bool enableMemoryCache;
  @override
  final String? heroTag;
  @override
  @JsonKey()
  final bool isSelected;
  @override
  @igFreezedJson
  final Widget? errorWidget;
  @override
  @igFreezedJson
  final VoidCallback? onTap;
  @override
  @igFreezedJson
  final Color? color;
  @override
  @JsonKey()
  final bool clearMemoryCacheIfFailed;
  @override
  @JsonKey()
  final bool clearMemoryCacheWhenDispose;
  @override
  @JsonKey()
  final bool gaplessPlayback;
  @override
  @igFreezedJson
  final BlendMode? colorBlendMode;
//---net
  @override
  final double? scale;
  final Map<String, String> _headers;
  @override
  @JsonKey()
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  @JsonKey()
  final bool cache;
  @override
  @JsonKey()
  final int retries;
  @override
  @igFreezedJson
  final Duration? timeLimit;
  @override
  @igFreezedJson
  final Duration timeRetry;
  @override
  @igFreezedJson
  final CancellationToken? cancelToken;
  @override
  final String? cacheKey;
  @override
  @JsonKey()
  final bool printError;
  @override
  @JsonKey()
  final bool cacheRawData;
  @override
  final String? imageCacheName;
  @override
  @igFreezedJson
  final Duration? cacheMaxAge;
  @override
  final int? cacheWidth;
  @override
  final int? cacheHeight;
  @override
  final double? compressionRatio;
  @override
  final int? maxBytes;
  @override
  final String? package;
  @override
  @igFreezedJson
  final AssetBundle? bundle;
  @override
  @Doc(message: '自定义完成小部件')
  @igFreezedJson
  final CustomCompletedWidget? customCompletedWidget;
  @override
  @igFreezedJson
  final Widget? customLoadingWidget;
  @override
  @igFreezedJson
  final InitEditorConfigHandler? initEditorConfigHandler;
  @override
  @igFreezedJson
  final Key? extendedImageEditorKey;
  @override
  @igFreezedJson
  final ExtendedImageMode? mode;

  @override
  String toString() {
    return 'ImageParams(width: $width, height: $height, size: $size, fit: $fit, borderRadius: $borderRadius, shape: $shape, enableMemoryCache: $enableMemoryCache, heroTag: $heroTag, isSelected: $isSelected, errorWidget: $errorWidget, onTap: $onTap, color: $color, clearMemoryCacheIfFailed: $clearMemoryCacheIfFailed, clearMemoryCacheWhenDispose: $clearMemoryCacheWhenDispose, gaplessPlayback: $gaplessPlayback, colorBlendMode: $colorBlendMode, scale: $scale, headers: $headers, cache: $cache, retries: $retries, timeLimit: $timeLimit, timeRetry: $timeRetry, cancelToken: $cancelToken, cacheKey: $cacheKey, printError: $printError, cacheRawData: $cacheRawData, imageCacheName: $imageCacheName, cacheMaxAge: $cacheMaxAge, cacheWidth: $cacheWidth, cacheHeight: $cacheHeight, compressionRatio: $compressionRatio, maxBytes: $maxBytes, package: $package, bundle: $bundle, customCompletedWidget: $customCompletedWidget, customLoadingWidget: $customLoadingWidget, initEditorConfigHandler: $initEditorConfigHandler, extendedImageEditorKey: $extendedImageEditorKey, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageParamsImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.fit, fit) || other.fit == fit) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.enableMemoryCache, enableMemoryCache) ||
                other.enableMemoryCache == enableMemoryCache) &&
            (identical(other.heroTag, heroTag) || other.heroTag == heroTag) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.errorWidget, errorWidget) ||
                other.errorWidget == errorWidget) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.clearMemoryCacheIfFailed, clearMemoryCacheIfFailed) ||
                other.clearMemoryCacheIfFailed == clearMemoryCacheIfFailed) &&
            (identical(other.clearMemoryCacheWhenDispose,
                    clearMemoryCacheWhenDispose) ||
                other.clearMemoryCacheWhenDispose ==
                    clearMemoryCacheWhenDispose) &&
            (identical(other.gaplessPlayback, gaplessPlayback) ||
                other.gaplessPlayback == gaplessPlayback) &&
            (identical(other.colorBlendMode, colorBlendMode) ||
                other.colorBlendMode == colorBlendMode) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.cache, cache) || other.cache == cache) &&
            (identical(other.retries, retries) || other.retries == retries) &&
            (identical(other.timeLimit, timeLimit) ||
                other.timeLimit == timeLimit) &&
            (identical(other.timeRetry, timeRetry) ||
                other.timeRetry == timeRetry) &&
            (identical(other.cancelToken, cancelToken) ||
                other.cancelToken == cancelToken) &&
            (identical(other.cacheKey, cacheKey) ||
                other.cacheKey == cacheKey) &&
            (identical(other.printError, printError) ||
                other.printError == printError) &&
            (identical(other.cacheRawData, cacheRawData) ||
                other.cacheRawData == cacheRawData) &&
            (identical(other.imageCacheName, imageCacheName) ||
                other.imageCacheName == imageCacheName) &&
            (identical(other.cacheMaxAge, cacheMaxAge) ||
                other.cacheMaxAge == cacheMaxAge) &&
            (identical(other.cacheWidth, cacheWidth) ||
                other.cacheWidth == cacheWidth) &&
            (identical(other.cacheHeight, cacheHeight) ||
                other.cacheHeight == cacheHeight) &&
            (identical(other.compressionRatio, compressionRatio) ||
                other.compressionRatio == compressionRatio) &&
            (identical(other.maxBytes, maxBytes) ||
                other.maxBytes == maxBytes) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.bundle, bundle) || other.bundle == bundle) &&
            (identical(other.customCompletedWidget, customCompletedWidget) ||
                other.customCompletedWidget == customCompletedWidget) &&
            (identical(other.customLoadingWidget, customLoadingWidget) ||
                other.customLoadingWidget == customLoadingWidget) &&
            (identical(other.initEditorConfigHandler, initEditorConfigHandler) ||
                other.initEditorConfigHandler == initEditorConfigHandler) &&
            (identical(other.extendedImageEditorKey, extendedImageEditorKey) ||
                other.extendedImageEditorKey == extendedImageEditorKey) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        width,
        height,
        size,
        fit,
        borderRadius,
        shape,
        enableMemoryCache,
        heroTag,
        isSelected,
        errorWidget,
        onTap,
        color,
        clearMemoryCacheIfFailed,
        clearMemoryCacheWhenDispose,
        gaplessPlayback,
        colorBlendMode,
        scale,
        const DeepCollectionEquality().hash(_headers),
        cache,
        retries,
        timeLimit,
        timeRetry,
        cancelToken,
        cacheKey,
        printError,
        cacheRawData,
        imageCacheName,
        cacheMaxAge,
        cacheWidth,
        cacheHeight,
        compressionRatio,
        maxBytes,
        package,
        bundle,
        customCompletedWidget,
        customLoadingWidget,
        initEditorConfigHandler,
        extendedImageEditorKey,
        mode
      ]);

  /// Create a copy of ImageParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageParamsImplCopyWith<_$ImageParamsImpl> get copyWith =>
      __$$ImageParamsImplCopyWithImpl<_$ImageParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageParamsImplToJson(
      this,
    );
  }
}

abstract class _ImageParams extends ImageParams {
  const factory _ImageParams(
      {final double? width,
      final double? height,
      final double? size,
      @igFreezedJson final BoxFit? fit,
      @igFreezedJson final BorderRadius? borderRadius,
      @igFreezedJson final BoxShape? shape,
      final bool enableMemoryCache,
      final String? heroTag,
      final bool isSelected,
      @igFreezedJson final Widget? errorWidget,
      @igFreezedJson final VoidCallback? onTap,
      @igFreezedJson final Color? color,
      final bool clearMemoryCacheIfFailed,
      final bool clearMemoryCacheWhenDispose,
      final bool gaplessPlayback,
      @igFreezedJson final BlendMode? colorBlendMode,
      final double? scale,
      final Map<String, String> headers,
      final bool cache,
      final int retries,
      @igFreezedJson final Duration? timeLimit,
      @igFreezedJson final Duration timeRetry,
      @igFreezedJson final CancellationToken? cancelToken,
      final String? cacheKey,
      final bool printError,
      final bool cacheRawData,
      final String? imageCacheName,
      @igFreezedJson final Duration? cacheMaxAge,
      final int? cacheWidth,
      final int? cacheHeight,
      final double? compressionRatio,
      final int? maxBytes,
      final String? package,
      @igFreezedJson final AssetBundle? bundle,
      @Doc(message: '自定义完成小部件')
      @igFreezedJson
      final CustomCompletedWidget? customCompletedWidget,
      @igFreezedJson final Widget? customLoadingWidget,
      @igFreezedJson final InitEditorConfigHandler? initEditorConfigHandler,
      @igFreezedJson final Key? extendedImageEditorKey,
      @igFreezedJson final ExtendedImageMode? mode}) = _$ImageParamsImpl;
  const _ImageParams._() : super._();

  factory _ImageParams.fromJson(Map<String, dynamic> json) =
      _$ImageParamsImpl.fromJson;

  @override
  double? get width;
  @override
  double? get height;
  @override
  double? get size;
  @override
  @igFreezedJson
  BoxFit? get fit;
  @override
  @igFreezedJson
  BorderRadius? get borderRadius;
  @override
  @igFreezedJson
  BoxShape? get shape;
  @override
  bool get enableMemoryCache;
  @override
  String? get heroTag;
  @override
  bool get isSelected;
  @override
  @igFreezedJson
  Widget? get errorWidget;
  @override
  @igFreezedJson
  VoidCallback? get onTap;
  @override
  @igFreezedJson
  Color? get color;
  @override
  bool get clearMemoryCacheIfFailed;
  @override
  bool get clearMemoryCacheWhenDispose;
  @override
  bool get gaplessPlayback;
  @override
  @igFreezedJson
  BlendMode? get colorBlendMode; //---net
  @override
  double? get scale;
  @override
  Map<String, String> get headers;
  @override
  bool get cache;
  @override
  int get retries;
  @override
  @igFreezedJson
  Duration? get timeLimit;
  @override
  @igFreezedJson
  Duration get timeRetry;
  @override
  @igFreezedJson
  CancellationToken? get cancelToken;
  @override
  String? get cacheKey;
  @override
  bool get printError;
  @override
  bool get cacheRawData;
  @override
  String? get imageCacheName;
  @override
  @igFreezedJson
  Duration? get cacheMaxAge;
  @override
  int? get cacheWidth;
  @override
  int? get cacheHeight;
  @override
  double? get compressionRatio;
  @override
  int? get maxBytes;
  @override
  String? get package;
  @override
  @igFreezedJson
  AssetBundle? get bundle;
  @override
  @Doc(message: '自定义完成小部件')
  @igFreezedJson
  CustomCompletedWidget? get customCompletedWidget;
  @override
  @igFreezedJson
  Widget? get customLoadingWidget;
  @override
  @igFreezedJson
  InitEditorConfigHandler? get initEditorConfigHandler;
  @override
  @igFreezedJson
  Key? get extendedImageEditorKey;
  @override
  @igFreezedJson
  ExtendedImageMode? get mode;

  /// Create a copy of ImageParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageParamsImplCopyWith<_$ImageParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyImage _$MyImageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'network':
      return MyNetworkImage.fromJson(json);
    case 'base64':
      return MyBase64Image.fromJson(json);
    case 'filePath':
      return MyFilePathImage.fromJson(json);
    case 'asset':
      return MyAssetImage.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MyImage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MyImage {
  ImageParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, ImageParams params) network,
    required TResult Function(String base64Code, ImageParams params) base64,
    required TResult Function(String filePath, ImageParams params) filePath,
    required TResult Function(String assetPath, ImageParams params) asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, ImageParams params)? network,
    TResult? Function(String base64Code, ImageParams params)? base64,
    TResult? Function(String filePath, ImageParams params)? filePath,
    TResult? Function(String assetPath, ImageParams params)? asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, ImageParams params)? network,
    TResult Function(String base64Code, ImageParams params)? base64,
    TResult Function(String filePath, ImageParams params)? filePath,
    TResult Function(String assetPath, ImageParams params)? asset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyNetworkImage value) network,
    required TResult Function(MyBase64Image value) base64,
    required TResult Function(MyFilePathImage value) filePath,
    required TResult Function(MyAssetImage value) asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyNetworkImage value)? network,
    TResult? Function(MyBase64Image value)? base64,
    TResult? Function(MyFilePathImage value)? filePath,
    TResult? Function(MyAssetImage value)? asset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyNetworkImage value)? network,
    TResult Function(MyBase64Image value)? base64,
    TResult Function(MyFilePathImage value)? filePath,
    TResult Function(MyAssetImage value)? asset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MyImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyImageCopyWith<MyImage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyImageCopyWith<$Res> {
  factory $MyImageCopyWith(MyImage value, $Res Function(MyImage) then) =
      _$MyImageCopyWithImpl<$Res, MyImage>;
  @useResult
  $Res call({ImageParams params});

  $ImageParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$MyImageCopyWithImpl<$Res, $Val extends MyImage>
    implements $MyImageCopyWith<$Res> {
  _$MyImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ImageParams,
    ) as $Val);
  }

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageParamsCopyWith<$Res> get params {
    return $ImageParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyNetworkImageImplCopyWith<$Res>
    implements $MyImageCopyWith<$Res> {
  factory _$$MyNetworkImageImplCopyWith(_$MyNetworkImageImpl value,
          $Res Function(_$MyNetworkImageImpl) then) =
      __$$MyNetworkImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, ImageParams params});

  @override
  $ImageParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$MyNetworkImageImplCopyWithImpl<$Res>
    extends _$MyImageCopyWithImpl<$Res, _$MyNetworkImageImpl>
    implements _$$MyNetworkImageImplCopyWith<$Res> {
  __$$MyNetworkImageImplCopyWithImpl(
      _$MyNetworkImageImpl _value, $Res Function(_$MyNetworkImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? params = null,
  }) {
    return _then(_$MyNetworkImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ImageParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyNetworkImageImpl extends MyNetworkImage {
  _$MyNetworkImageImpl(
      {required this.url,
      this.params = const ImageParams(),
      final String? $type})
      : $type = $type ?? 'network',
        super._();

  factory _$MyNetworkImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyNetworkImageImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey()
  final ImageParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MyImage.network(url: $url, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyNetworkImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, params);

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyNetworkImageImplCopyWith<_$MyNetworkImageImpl> get copyWith =>
      __$$MyNetworkImageImplCopyWithImpl<_$MyNetworkImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, ImageParams params) network,
    required TResult Function(String base64Code, ImageParams params) base64,
    required TResult Function(String filePath, ImageParams params) filePath,
    required TResult Function(String assetPath, ImageParams params) asset,
  }) {
    return network(url, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, ImageParams params)? network,
    TResult? Function(String base64Code, ImageParams params)? base64,
    TResult? Function(String filePath, ImageParams params)? filePath,
    TResult? Function(String assetPath, ImageParams params)? asset,
  }) {
    return network?.call(url, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, ImageParams params)? network,
    TResult Function(String base64Code, ImageParams params)? base64,
    TResult Function(String filePath, ImageParams params)? filePath,
    TResult Function(String assetPath, ImageParams params)? asset,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(url, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyNetworkImage value) network,
    required TResult Function(MyBase64Image value) base64,
    required TResult Function(MyFilePathImage value) filePath,
    required TResult Function(MyAssetImage value) asset,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyNetworkImage value)? network,
    TResult? Function(MyBase64Image value)? base64,
    TResult? Function(MyFilePathImage value)? filePath,
    TResult? Function(MyAssetImage value)? asset,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyNetworkImage value)? network,
    TResult Function(MyBase64Image value)? base64,
    TResult Function(MyFilePathImage value)? filePath,
    TResult Function(MyAssetImage value)? asset,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MyNetworkImageImplToJson(
      this,
    );
  }
}

abstract class MyNetworkImage extends MyImage {
  factory MyNetworkImage(
      {required final String url,
      final ImageParams params}) = _$MyNetworkImageImpl;
  MyNetworkImage._() : super._();

  factory MyNetworkImage.fromJson(Map<String, dynamic> json) =
      _$MyNetworkImageImpl.fromJson;

  String get url;
  @override
  ImageParams get params;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyNetworkImageImplCopyWith<_$MyNetworkImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyBase64ImageImplCopyWith<$Res>
    implements $MyImageCopyWith<$Res> {
  factory _$$MyBase64ImageImplCopyWith(
          _$MyBase64ImageImpl value, $Res Function(_$MyBase64ImageImpl) then) =
      __$$MyBase64ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String base64Code, ImageParams params});

  @override
  $ImageParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$MyBase64ImageImplCopyWithImpl<$Res>
    extends _$MyImageCopyWithImpl<$Res, _$MyBase64ImageImpl>
    implements _$$MyBase64ImageImplCopyWith<$Res> {
  __$$MyBase64ImageImplCopyWithImpl(
      _$MyBase64ImageImpl _value, $Res Function(_$MyBase64ImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64Code = null,
    Object? params = null,
  }) {
    return _then(_$MyBase64ImageImpl(
      base64Code: null == base64Code
          ? _value.base64Code
          : base64Code // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ImageParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyBase64ImageImpl extends MyBase64Image {
  _$MyBase64ImageImpl(
      {required this.base64Code,
      this.params = const ImageParams(),
      final String? $type})
      : $type = $type ?? 'base64',
        super._();

  factory _$MyBase64ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyBase64ImageImplFromJson(json);

  @override
  final String base64Code;
  @override
  @JsonKey()
  final ImageParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MyImage.base64(base64Code: $base64Code, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyBase64ImageImpl &&
            (identical(other.base64Code, base64Code) ||
                other.base64Code == base64Code) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base64Code, params);

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyBase64ImageImplCopyWith<_$MyBase64ImageImpl> get copyWith =>
      __$$MyBase64ImageImplCopyWithImpl<_$MyBase64ImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, ImageParams params) network,
    required TResult Function(String base64Code, ImageParams params) base64,
    required TResult Function(String filePath, ImageParams params) filePath,
    required TResult Function(String assetPath, ImageParams params) asset,
  }) {
    return base64(base64Code, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, ImageParams params)? network,
    TResult? Function(String base64Code, ImageParams params)? base64,
    TResult? Function(String filePath, ImageParams params)? filePath,
    TResult? Function(String assetPath, ImageParams params)? asset,
  }) {
    return base64?.call(base64Code, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, ImageParams params)? network,
    TResult Function(String base64Code, ImageParams params)? base64,
    TResult Function(String filePath, ImageParams params)? filePath,
    TResult Function(String assetPath, ImageParams params)? asset,
    required TResult orElse(),
  }) {
    if (base64 != null) {
      return base64(base64Code, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyNetworkImage value) network,
    required TResult Function(MyBase64Image value) base64,
    required TResult Function(MyFilePathImage value) filePath,
    required TResult Function(MyAssetImage value) asset,
  }) {
    return base64(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyNetworkImage value)? network,
    TResult? Function(MyBase64Image value)? base64,
    TResult? Function(MyFilePathImage value)? filePath,
    TResult? Function(MyAssetImage value)? asset,
  }) {
    return base64?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyNetworkImage value)? network,
    TResult Function(MyBase64Image value)? base64,
    TResult Function(MyFilePathImage value)? filePath,
    TResult Function(MyAssetImage value)? asset,
    required TResult orElse(),
  }) {
    if (base64 != null) {
      return base64(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MyBase64ImageImplToJson(
      this,
    );
  }
}

abstract class MyBase64Image extends MyImage {
  factory MyBase64Image(
      {required final String base64Code,
      final ImageParams params}) = _$MyBase64ImageImpl;
  MyBase64Image._() : super._();

  factory MyBase64Image.fromJson(Map<String, dynamic> json) =
      _$MyBase64ImageImpl.fromJson;

  String get base64Code;
  @override
  ImageParams get params;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyBase64ImageImplCopyWith<_$MyBase64ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyFilePathImageImplCopyWith<$Res>
    implements $MyImageCopyWith<$Res> {
  factory _$$MyFilePathImageImplCopyWith(_$MyFilePathImageImpl value,
          $Res Function(_$MyFilePathImageImpl) then) =
      __$$MyFilePathImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filePath, ImageParams params});

  @override
  $ImageParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$MyFilePathImageImplCopyWithImpl<$Res>
    extends _$MyImageCopyWithImpl<$Res, _$MyFilePathImageImpl>
    implements _$$MyFilePathImageImplCopyWith<$Res> {
  __$$MyFilePathImageImplCopyWithImpl(
      _$MyFilePathImageImpl _value, $Res Function(_$MyFilePathImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? params = null,
  }) {
    return _then(_$MyFilePathImageImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ImageParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyFilePathImageImpl extends MyFilePathImage {
  _$MyFilePathImageImpl(
      {required this.filePath,
      this.params = const ImageParams(),
      final String? $type})
      : $type = $type ?? 'filePath',
        super._();

  factory _$MyFilePathImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyFilePathImageImplFromJson(json);

  @override
  final String filePath;
  @override
  @JsonKey()
  final ImageParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MyImage.filePath(filePath: $filePath, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyFilePathImageImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filePath, params);

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyFilePathImageImplCopyWith<_$MyFilePathImageImpl> get copyWith =>
      __$$MyFilePathImageImplCopyWithImpl<_$MyFilePathImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, ImageParams params) network,
    required TResult Function(String base64Code, ImageParams params) base64,
    required TResult Function(String filePath, ImageParams params) filePath,
    required TResult Function(String assetPath, ImageParams params) asset,
  }) {
    return filePath(this.filePath, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, ImageParams params)? network,
    TResult? Function(String base64Code, ImageParams params)? base64,
    TResult? Function(String filePath, ImageParams params)? filePath,
    TResult? Function(String assetPath, ImageParams params)? asset,
  }) {
    return filePath?.call(this.filePath, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, ImageParams params)? network,
    TResult Function(String base64Code, ImageParams params)? base64,
    TResult Function(String filePath, ImageParams params)? filePath,
    TResult Function(String assetPath, ImageParams params)? asset,
    required TResult orElse(),
  }) {
    if (filePath != null) {
      return filePath(this.filePath, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyNetworkImage value) network,
    required TResult Function(MyBase64Image value) base64,
    required TResult Function(MyFilePathImage value) filePath,
    required TResult Function(MyAssetImage value) asset,
  }) {
    return filePath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyNetworkImage value)? network,
    TResult? Function(MyBase64Image value)? base64,
    TResult? Function(MyFilePathImage value)? filePath,
    TResult? Function(MyAssetImage value)? asset,
  }) {
    return filePath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyNetworkImage value)? network,
    TResult Function(MyBase64Image value)? base64,
    TResult Function(MyFilePathImage value)? filePath,
    TResult Function(MyAssetImage value)? asset,
    required TResult orElse(),
  }) {
    if (filePath != null) {
      return filePath(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MyFilePathImageImplToJson(
      this,
    );
  }
}

abstract class MyFilePathImage extends MyImage {
  factory MyFilePathImage(
      {required final String filePath,
      final ImageParams params}) = _$MyFilePathImageImpl;
  MyFilePathImage._() : super._();

  factory MyFilePathImage.fromJson(Map<String, dynamic> json) =
      _$MyFilePathImageImpl.fromJson;

  String get filePath;
  @override
  ImageParams get params;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyFilePathImageImplCopyWith<_$MyFilePathImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyAssetImageImplCopyWith<$Res>
    implements $MyImageCopyWith<$Res> {
  factory _$$MyAssetImageImplCopyWith(
          _$MyAssetImageImpl value, $Res Function(_$MyAssetImageImpl) then) =
      __$$MyAssetImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String assetPath, ImageParams params});

  @override
  $ImageParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$MyAssetImageImplCopyWithImpl<$Res>
    extends _$MyImageCopyWithImpl<$Res, _$MyAssetImageImpl>
    implements _$$MyAssetImageImplCopyWith<$Res> {
  __$$MyAssetImageImplCopyWithImpl(
      _$MyAssetImageImpl _value, $Res Function(_$MyAssetImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetPath = null,
    Object? params = null,
  }) {
    return _then(_$MyAssetImageImpl(
      assetPath: null == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ImageParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyAssetImageImpl extends MyAssetImage {
  _$MyAssetImageImpl(
      {required this.assetPath,
      this.params = const ImageParams(),
      final String? $type})
      : $type = $type ?? 'asset',
        super._();

  factory _$MyAssetImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyAssetImageImplFromJson(json);

  @override
  final String assetPath;
  @override
  @JsonKey()
  final ImageParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MyImage.asset(assetPath: $assetPath, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAssetImageImpl &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, assetPath, params);

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAssetImageImplCopyWith<_$MyAssetImageImpl> get copyWith =>
      __$$MyAssetImageImplCopyWithImpl<_$MyAssetImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, ImageParams params) network,
    required TResult Function(String base64Code, ImageParams params) base64,
    required TResult Function(String filePath, ImageParams params) filePath,
    required TResult Function(String assetPath, ImageParams params) asset,
  }) {
    return asset(assetPath, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, ImageParams params)? network,
    TResult? Function(String base64Code, ImageParams params)? base64,
    TResult? Function(String filePath, ImageParams params)? filePath,
    TResult? Function(String assetPath, ImageParams params)? asset,
  }) {
    return asset?.call(assetPath, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, ImageParams params)? network,
    TResult Function(String base64Code, ImageParams params)? base64,
    TResult Function(String filePath, ImageParams params)? filePath,
    TResult Function(String assetPath, ImageParams params)? asset,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(assetPath, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyNetworkImage value) network,
    required TResult Function(MyBase64Image value) base64,
    required TResult Function(MyFilePathImage value) filePath,
    required TResult Function(MyAssetImage value) asset,
  }) {
    return asset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyNetworkImage value)? network,
    TResult? Function(MyBase64Image value)? base64,
    TResult? Function(MyFilePathImage value)? filePath,
    TResult? Function(MyAssetImage value)? asset,
  }) {
    return asset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyNetworkImage value)? network,
    TResult Function(MyBase64Image value)? base64,
    TResult Function(MyFilePathImage value)? filePath,
    TResult Function(MyAssetImage value)? asset,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MyAssetImageImplToJson(
      this,
    );
  }
}

abstract class MyAssetImage extends MyImage {
  factory MyAssetImage(
      {required final String assetPath,
      final ImageParams params}) = _$MyAssetImageImpl;
  MyAssetImage._() : super._();

  factory MyAssetImage.fromJson(Map<String, dynamic> json) =
      _$MyAssetImageImpl.fromJson;

  String get assetPath;
  @override
  ImageParams get params;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyAssetImageImplCopyWith<_$MyAssetImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyPlatform {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() android,
    required TResult Function() ios,
    required TResult Function() macos,
    required TResult Function() web,
    required TResult Function() linux,
    required TResult Function() windows,
    required TResult Function() fuchsia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? android,
    TResult? Function()? ios,
    TResult? Function()? macos,
    TResult? Function()? web,
    TResult? Function()? linux,
    TResult? Function()? windows,
    TResult? Function()? fuchsia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? android,
    TResult Function()? ios,
    TResult Function()? macos,
    TResult Function()? web,
    TResult Function()? linux,
    TResult Function()? windows,
    TResult Function()? fuchsia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidPlatform value) android,
    required TResult Function(IosPlatform value) ios,
    required TResult Function(MacosPlatform value) macos,
    required TResult Function(WebPlatform value) web,
    required TResult Function(LinuxPlatform value) linux,
    required TResult Function(WindowsPlatform value) windows,
    required TResult Function(FuchsiaPlatform value) fuchsia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidPlatform value)? android,
    TResult? Function(IosPlatform value)? ios,
    TResult? Function(MacosPlatform value)? macos,
    TResult? Function(WebPlatform value)? web,
    TResult? Function(LinuxPlatform value)? linux,
    TResult? Function(WindowsPlatform value)? windows,
    TResult? Function(FuchsiaPlatform value)? fuchsia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidPlatform value)? android,
    TResult Function(IosPlatform value)? ios,
    TResult Function(MacosPlatform value)? macos,
    TResult Function(WebPlatform value)? web,
    TResult Function(LinuxPlatform value)? linux,
    TResult Function(WindowsPlatform value)? windows,
    TResult Function(FuchsiaPlatform value)? fuchsia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPlatformCopyWith<$Res> {
  factory $MyPlatformCopyWith(
          MyPlatform value, $Res Function(MyPlatform) then) =
      _$MyPlatformCopyWithImpl<$Res, MyPlatform>;
}

/// @nodoc
class _$MyPlatformCopyWithImpl<$Res, $Val extends MyPlatform>
    implements $MyPlatformCopyWith<$Res> {
  _$MyPlatformCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyPlatform
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AndroidPlatformImplCopyWith<$Res> {
  factory _$$AndroidPlatformImplCopyWith(_$AndroidPlatformImpl value,
          $Res Function(_$AndroidPlatformImpl) then) =
      __$$AndroidPlatformImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AndroidPlatformImplCopyWithImpl<$Res>
    extends _$MyPlatformCopyWithImpl<$Res, _$AndroidPlatformImpl>
    implements _$$AndroidPlatformImplCopyWith<$Res> {
  __$$AndroidPlatformImplCopyWithImpl(
      _$AndroidPlatformImpl _value, $Res Function(_$AndroidPlatformImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPlatform
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AndroidPlatformImpl implements AndroidPlatform {
  const _$AndroidPlatformImpl();

  @override
  String toString() {
    return 'MyPlatform.android()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AndroidPlatformImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() android,
    required TResult Function() ios,
    required TResult Function() macos,
    required TResult Function() web,
    required TResult Function() linux,
    required TResult Function() windows,
    required TResult Function() fuchsia,
  }) {
    return android();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? android,
    TResult? Function()? ios,
    TResult? Function()? macos,
    TResult? Function()? web,
    TResult? Function()? linux,
    TResult? Function()? windows,
    TResult? Function()? fuchsia,
  }) {
    return android?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? android,
    TResult Function()? ios,
    TResult Function()? macos,
    TResult Function()? web,
    TResult Function()? linux,
    TResult Function()? windows,
    TResult Function()? fuchsia,
    required TResult orElse(),
  }) {
    if (android != null) {
      return android();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidPlatform value) android,
    required TResult Function(IosPlatform value) ios,
    required TResult Function(MacosPlatform value) macos,
    required TResult Function(WebPlatform value) web,
    required TResult Function(LinuxPlatform value) linux,
    required TResult Function(WindowsPlatform value) windows,
    required TResult Function(FuchsiaPlatform value) fuchsia,
  }) {
    return android(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidPlatform value)? android,
    TResult? Function(IosPlatform value)? ios,
    TResult? Function(MacosPlatform value)? macos,
    TResult? Function(WebPlatform value)? web,
    TResult? Function(LinuxPlatform value)? linux,
    TResult? Function(WindowsPlatform value)? windows,
    TResult? Function(FuchsiaPlatform value)? fuchsia,
  }) {
    return android?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidPlatform value)? android,
    TResult Function(IosPlatform value)? ios,
    TResult Function(MacosPlatform value)? macos,
    TResult Function(WebPlatform value)? web,
    TResult Function(LinuxPlatform value)? linux,
    TResult Function(WindowsPlatform value)? windows,
    TResult Function(FuchsiaPlatform value)? fuchsia,
    required TResult orElse(),
  }) {
    if (android != null) {
      return android(this);
    }
    return orElse();
  }
}

abstract class AndroidPlatform implements MyPlatform {
  const factory AndroidPlatform() = _$AndroidPlatformImpl;
}

/// @nodoc
abstract class _$$IosPlatformImplCopyWith<$Res> {
  factory _$$IosPlatformImplCopyWith(
          _$IosPlatformImpl value, $Res Function(_$IosPlatformImpl) then) =
      __$$IosPlatformImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IosPlatformImplCopyWithImpl<$Res>
    extends _$MyPlatformCopyWithImpl<$Res, _$IosPlatformImpl>
    implements _$$IosPlatformImplCopyWith<$Res> {
  __$$IosPlatformImplCopyWithImpl(
      _$IosPlatformImpl _value, $Res Function(_$IosPlatformImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPlatform
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IosPlatformImpl implements IosPlatform {
  const _$IosPlatformImpl();

  @override
  String toString() {
    return 'MyPlatform.ios()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IosPlatformImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() android,
    required TResult Function() ios,
    required TResult Function() macos,
    required TResult Function() web,
    required TResult Function() linux,
    required TResult Function() windows,
    required TResult Function() fuchsia,
  }) {
    return ios();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? android,
    TResult? Function()? ios,
    TResult? Function()? macos,
    TResult? Function()? web,
    TResult? Function()? linux,
    TResult? Function()? windows,
    TResult? Function()? fuchsia,
  }) {
    return ios?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? android,
    TResult Function()? ios,
    TResult Function()? macos,
    TResult Function()? web,
    TResult Function()? linux,
    TResult Function()? windows,
    TResult Function()? fuchsia,
    required TResult orElse(),
  }) {
    if (ios != null) {
      return ios();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidPlatform value) android,
    required TResult Function(IosPlatform value) ios,
    required TResult Function(MacosPlatform value) macos,
    required TResult Function(WebPlatform value) web,
    required TResult Function(LinuxPlatform value) linux,
    required TResult Function(WindowsPlatform value) windows,
    required TResult Function(FuchsiaPlatform value) fuchsia,
  }) {
    return ios(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidPlatform value)? android,
    TResult? Function(IosPlatform value)? ios,
    TResult? Function(MacosPlatform value)? macos,
    TResult? Function(WebPlatform value)? web,
    TResult? Function(LinuxPlatform value)? linux,
    TResult? Function(WindowsPlatform value)? windows,
    TResult? Function(FuchsiaPlatform value)? fuchsia,
  }) {
    return ios?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidPlatform value)? android,
    TResult Function(IosPlatform value)? ios,
    TResult Function(MacosPlatform value)? macos,
    TResult Function(WebPlatform value)? web,
    TResult Function(LinuxPlatform value)? linux,
    TResult Function(WindowsPlatform value)? windows,
    TResult Function(FuchsiaPlatform value)? fuchsia,
    required TResult orElse(),
  }) {
    if (ios != null) {
      return ios(this);
    }
    return orElse();
  }
}

abstract class IosPlatform implements MyPlatform {
  const factory IosPlatform() = _$IosPlatformImpl;
}

/// @nodoc
abstract class _$$MacosPlatformImplCopyWith<$Res> {
  factory _$$MacosPlatformImplCopyWith(
          _$MacosPlatformImpl value, $Res Function(_$MacosPlatformImpl) then) =
      __$$MacosPlatformImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MacosPlatformImplCopyWithImpl<$Res>
    extends _$MyPlatformCopyWithImpl<$Res, _$MacosPlatformImpl>
    implements _$$MacosPlatformImplCopyWith<$Res> {
  __$$MacosPlatformImplCopyWithImpl(
      _$MacosPlatformImpl _value, $Res Function(_$MacosPlatformImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPlatform
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MacosPlatformImpl implements MacosPlatform {
  const _$MacosPlatformImpl();

  @override
  String toString() {
    return 'MyPlatform.macos()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MacosPlatformImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() android,
    required TResult Function() ios,
    required TResult Function() macos,
    required TResult Function() web,
    required TResult Function() linux,
    required TResult Function() windows,
    required TResult Function() fuchsia,
  }) {
    return macos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? android,
    TResult? Function()? ios,
    TResult? Function()? macos,
    TResult? Function()? web,
    TResult? Function()? linux,
    TResult? Function()? windows,
    TResult? Function()? fuchsia,
  }) {
    return macos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? android,
    TResult Function()? ios,
    TResult Function()? macos,
    TResult Function()? web,
    TResult Function()? linux,
    TResult Function()? windows,
    TResult Function()? fuchsia,
    required TResult orElse(),
  }) {
    if (macos != null) {
      return macos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidPlatform value) android,
    required TResult Function(IosPlatform value) ios,
    required TResult Function(MacosPlatform value) macos,
    required TResult Function(WebPlatform value) web,
    required TResult Function(LinuxPlatform value) linux,
    required TResult Function(WindowsPlatform value) windows,
    required TResult Function(FuchsiaPlatform value) fuchsia,
  }) {
    return macos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidPlatform value)? android,
    TResult? Function(IosPlatform value)? ios,
    TResult? Function(MacosPlatform value)? macos,
    TResult? Function(WebPlatform value)? web,
    TResult? Function(LinuxPlatform value)? linux,
    TResult? Function(WindowsPlatform value)? windows,
    TResult? Function(FuchsiaPlatform value)? fuchsia,
  }) {
    return macos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidPlatform value)? android,
    TResult Function(IosPlatform value)? ios,
    TResult Function(MacosPlatform value)? macos,
    TResult Function(WebPlatform value)? web,
    TResult Function(LinuxPlatform value)? linux,
    TResult Function(WindowsPlatform value)? windows,
    TResult Function(FuchsiaPlatform value)? fuchsia,
    required TResult orElse(),
  }) {
    if (macos != null) {
      return macos(this);
    }
    return orElse();
  }
}

abstract class MacosPlatform implements MyPlatform {
  const factory MacosPlatform() = _$MacosPlatformImpl;
}

/// @nodoc
abstract class _$$WebPlatformImplCopyWith<$Res> {
  factory _$$WebPlatformImplCopyWith(
          _$WebPlatformImpl value, $Res Function(_$WebPlatformImpl) then) =
      __$$WebPlatformImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WebPlatformImplCopyWithImpl<$Res>
    extends _$MyPlatformCopyWithImpl<$Res, _$WebPlatformImpl>
    implements _$$WebPlatformImplCopyWith<$Res> {
  __$$WebPlatformImplCopyWithImpl(
      _$WebPlatformImpl _value, $Res Function(_$WebPlatformImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPlatform
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WebPlatformImpl implements WebPlatform {
  const _$WebPlatformImpl();

  @override
  String toString() {
    return 'MyPlatform.web()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WebPlatformImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() android,
    required TResult Function() ios,
    required TResult Function() macos,
    required TResult Function() web,
    required TResult Function() linux,
    required TResult Function() windows,
    required TResult Function() fuchsia,
  }) {
    return web();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? android,
    TResult? Function()? ios,
    TResult? Function()? macos,
    TResult? Function()? web,
    TResult? Function()? linux,
    TResult? Function()? windows,
    TResult? Function()? fuchsia,
  }) {
    return web?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? android,
    TResult Function()? ios,
    TResult Function()? macos,
    TResult Function()? web,
    TResult Function()? linux,
    TResult Function()? windows,
    TResult Function()? fuchsia,
    required TResult orElse(),
  }) {
    if (web != null) {
      return web();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidPlatform value) android,
    required TResult Function(IosPlatform value) ios,
    required TResult Function(MacosPlatform value) macos,
    required TResult Function(WebPlatform value) web,
    required TResult Function(LinuxPlatform value) linux,
    required TResult Function(WindowsPlatform value) windows,
    required TResult Function(FuchsiaPlatform value) fuchsia,
  }) {
    return web(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidPlatform value)? android,
    TResult? Function(IosPlatform value)? ios,
    TResult? Function(MacosPlatform value)? macos,
    TResult? Function(WebPlatform value)? web,
    TResult? Function(LinuxPlatform value)? linux,
    TResult? Function(WindowsPlatform value)? windows,
    TResult? Function(FuchsiaPlatform value)? fuchsia,
  }) {
    return web?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidPlatform value)? android,
    TResult Function(IosPlatform value)? ios,
    TResult Function(MacosPlatform value)? macos,
    TResult Function(WebPlatform value)? web,
    TResult Function(LinuxPlatform value)? linux,
    TResult Function(WindowsPlatform value)? windows,
    TResult Function(FuchsiaPlatform value)? fuchsia,
    required TResult orElse(),
  }) {
    if (web != null) {
      return web(this);
    }
    return orElse();
  }
}

abstract class WebPlatform implements MyPlatform {
  const factory WebPlatform() = _$WebPlatformImpl;
}

/// @nodoc
abstract class _$$LinuxPlatformImplCopyWith<$Res> {
  factory _$$LinuxPlatformImplCopyWith(
          _$LinuxPlatformImpl value, $Res Function(_$LinuxPlatformImpl) then) =
      __$$LinuxPlatformImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LinuxPlatformImplCopyWithImpl<$Res>
    extends _$MyPlatformCopyWithImpl<$Res, _$LinuxPlatformImpl>
    implements _$$LinuxPlatformImplCopyWith<$Res> {
  __$$LinuxPlatformImplCopyWithImpl(
      _$LinuxPlatformImpl _value, $Res Function(_$LinuxPlatformImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPlatform
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LinuxPlatformImpl implements LinuxPlatform {
  const _$LinuxPlatformImpl();

  @override
  String toString() {
    return 'MyPlatform.linux()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LinuxPlatformImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() android,
    required TResult Function() ios,
    required TResult Function() macos,
    required TResult Function() web,
    required TResult Function() linux,
    required TResult Function() windows,
    required TResult Function() fuchsia,
  }) {
    return linux();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? android,
    TResult? Function()? ios,
    TResult? Function()? macos,
    TResult? Function()? web,
    TResult? Function()? linux,
    TResult? Function()? windows,
    TResult? Function()? fuchsia,
  }) {
    return linux?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? android,
    TResult Function()? ios,
    TResult Function()? macos,
    TResult Function()? web,
    TResult Function()? linux,
    TResult Function()? windows,
    TResult Function()? fuchsia,
    required TResult orElse(),
  }) {
    if (linux != null) {
      return linux();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidPlatform value) android,
    required TResult Function(IosPlatform value) ios,
    required TResult Function(MacosPlatform value) macos,
    required TResult Function(WebPlatform value) web,
    required TResult Function(LinuxPlatform value) linux,
    required TResult Function(WindowsPlatform value) windows,
    required TResult Function(FuchsiaPlatform value) fuchsia,
  }) {
    return linux(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidPlatform value)? android,
    TResult? Function(IosPlatform value)? ios,
    TResult? Function(MacosPlatform value)? macos,
    TResult? Function(WebPlatform value)? web,
    TResult? Function(LinuxPlatform value)? linux,
    TResult? Function(WindowsPlatform value)? windows,
    TResult? Function(FuchsiaPlatform value)? fuchsia,
  }) {
    return linux?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidPlatform value)? android,
    TResult Function(IosPlatform value)? ios,
    TResult Function(MacosPlatform value)? macos,
    TResult Function(WebPlatform value)? web,
    TResult Function(LinuxPlatform value)? linux,
    TResult Function(WindowsPlatform value)? windows,
    TResult Function(FuchsiaPlatform value)? fuchsia,
    required TResult orElse(),
  }) {
    if (linux != null) {
      return linux(this);
    }
    return orElse();
  }
}

abstract class LinuxPlatform implements MyPlatform {
  const factory LinuxPlatform() = _$LinuxPlatformImpl;
}

/// @nodoc
abstract class _$$WindowsPlatformImplCopyWith<$Res> {
  factory _$$WindowsPlatformImplCopyWith(_$WindowsPlatformImpl value,
          $Res Function(_$WindowsPlatformImpl) then) =
      __$$WindowsPlatformImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WindowsPlatformImplCopyWithImpl<$Res>
    extends _$MyPlatformCopyWithImpl<$Res, _$WindowsPlatformImpl>
    implements _$$WindowsPlatformImplCopyWith<$Res> {
  __$$WindowsPlatformImplCopyWithImpl(
      _$WindowsPlatformImpl _value, $Res Function(_$WindowsPlatformImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPlatform
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WindowsPlatformImpl implements WindowsPlatform {
  const _$WindowsPlatformImpl();

  @override
  String toString() {
    return 'MyPlatform.windows()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WindowsPlatformImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() android,
    required TResult Function() ios,
    required TResult Function() macos,
    required TResult Function() web,
    required TResult Function() linux,
    required TResult Function() windows,
    required TResult Function() fuchsia,
  }) {
    return windows();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? android,
    TResult? Function()? ios,
    TResult? Function()? macos,
    TResult? Function()? web,
    TResult? Function()? linux,
    TResult? Function()? windows,
    TResult? Function()? fuchsia,
  }) {
    return windows?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? android,
    TResult Function()? ios,
    TResult Function()? macos,
    TResult Function()? web,
    TResult Function()? linux,
    TResult Function()? windows,
    TResult Function()? fuchsia,
    required TResult orElse(),
  }) {
    if (windows != null) {
      return windows();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidPlatform value) android,
    required TResult Function(IosPlatform value) ios,
    required TResult Function(MacosPlatform value) macos,
    required TResult Function(WebPlatform value) web,
    required TResult Function(LinuxPlatform value) linux,
    required TResult Function(WindowsPlatform value) windows,
    required TResult Function(FuchsiaPlatform value) fuchsia,
  }) {
    return windows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidPlatform value)? android,
    TResult? Function(IosPlatform value)? ios,
    TResult? Function(MacosPlatform value)? macos,
    TResult? Function(WebPlatform value)? web,
    TResult? Function(LinuxPlatform value)? linux,
    TResult? Function(WindowsPlatform value)? windows,
    TResult? Function(FuchsiaPlatform value)? fuchsia,
  }) {
    return windows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidPlatform value)? android,
    TResult Function(IosPlatform value)? ios,
    TResult Function(MacosPlatform value)? macos,
    TResult Function(WebPlatform value)? web,
    TResult Function(LinuxPlatform value)? linux,
    TResult Function(WindowsPlatform value)? windows,
    TResult Function(FuchsiaPlatform value)? fuchsia,
    required TResult orElse(),
  }) {
    if (windows != null) {
      return windows(this);
    }
    return orElse();
  }
}

abstract class WindowsPlatform implements MyPlatform {
  const factory WindowsPlatform() = _$WindowsPlatformImpl;
}

/// @nodoc
abstract class _$$FuchsiaPlatformImplCopyWith<$Res> {
  factory _$$FuchsiaPlatformImplCopyWith(_$FuchsiaPlatformImpl value,
          $Res Function(_$FuchsiaPlatformImpl) then) =
      __$$FuchsiaPlatformImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FuchsiaPlatformImplCopyWithImpl<$Res>
    extends _$MyPlatformCopyWithImpl<$Res, _$FuchsiaPlatformImpl>
    implements _$$FuchsiaPlatformImplCopyWith<$Res> {
  __$$FuchsiaPlatformImplCopyWithImpl(
      _$FuchsiaPlatformImpl _value, $Res Function(_$FuchsiaPlatformImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPlatform
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FuchsiaPlatformImpl implements FuchsiaPlatform {
  const _$FuchsiaPlatformImpl();

  @override
  String toString() {
    return 'MyPlatform.fuchsia()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FuchsiaPlatformImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() android,
    required TResult Function() ios,
    required TResult Function() macos,
    required TResult Function() web,
    required TResult Function() linux,
    required TResult Function() windows,
    required TResult Function() fuchsia,
  }) {
    return fuchsia();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? android,
    TResult? Function()? ios,
    TResult? Function()? macos,
    TResult? Function()? web,
    TResult? Function()? linux,
    TResult? Function()? windows,
    TResult? Function()? fuchsia,
  }) {
    return fuchsia?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? android,
    TResult Function()? ios,
    TResult Function()? macos,
    TResult Function()? web,
    TResult Function()? linux,
    TResult Function()? windows,
    TResult Function()? fuchsia,
    required TResult orElse(),
  }) {
    if (fuchsia != null) {
      return fuchsia();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndroidPlatform value) android,
    required TResult Function(IosPlatform value) ios,
    required TResult Function(MacosPlatform value) macos,
    required TResult Function(WebPlatform value) web,
    required TResult Function(LinuxPlatform value) linux,
    required TResult Function(WindowsPlatform value) windows,
    required TResult Function(FuchsiaPlatform value) fuchsia,
  }) {
    return fuchsia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndroidPlatform value)? android,
    TResult? Function(IosPlatform value)? ios,
    TResult? Function(MacosPlatform value)? macos,
    TResult? Function(WebPlatform value)? web,
    TResult? Function(LinuxPlatform value)? linux,
    TResult? Function(WindowsPlatform value)? windows,
    TResult? Function(FuchsiaPlatform value)? fuchsia,
  }) {
    return fuchsia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndroidPlatform value)? android,
    TResult Function(IosPlatform value)? ios,
    TResult Function(MacosPlatform value)? macos,
    TResult Function(WebPlatform value)? web,
    TResult Function(LinuxPlatform value)? linux,
    TResult Function(WindowsPlatform value)? windows,
    TResult Function(FuchsiaPlatform value)? fuchsia,
    required TResult orElse(),
  }) {
    if (fuchsia != null) {
      return fuchsia(this);
    }
    return orElse();
  }
}

abstract class FuchsiaPlatform implements MyPlatform {
  const factory FuchsiaPlatform() = _$FuchsiaPlatformImpl;
}

PictureSelectionI18nConfig _$PictureSelectionI18nConfigFromJson(
    Map<String, dynamic> json) {
  return _PictureSelectionI18nConfig.fromJson(json);
}

/// @nodoc
mixin _$PictureSelectionI18nConfig {
  @JsonKey(name: 'photoAlbumMenuText')
  String get photoAlbumMenuText => throw _privateConstructorUsedError;
  String get goShootText => throw _privateConstructorUsedError;

  /// Serializes this PictureSelectionI18nConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PictureSelectionI18nConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PictureSelectionI18nConfigCopyWith<PictureSelectionI18nConfig>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureSelectionI18nConfigCopyWith<$Res> {
  factory $PictureSelectionI18nConfigCopyWith(PictureSelectionI18nConfig value,
          $Res Function(PictureSelectionI18nConfig) then) =
      _$PictureSelectionI18nConfigCopyWithImpl<$Res,
          PictureSelectionI18nConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'photoAlbumMenuText') String photoAlbumMenuText,
      String goShootText});
}

/// @nodoc
class _$PictureSelectionI18nConfigCopyWithImpl<$Res,
        $Val extends PictureSelectionI18nConfig>
    implements $PictureSelectionI18nConfigCopyWith<$Res> {
  _$PictureSelectionI18nConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PictureSelectionI18nConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoAlbumMenuText = null,
    Object? goShootText = null,
  }) {
    return _then(_value.copyWith(
      photoAlbumMenuText: null == photoAlbumMenuText
          ? _value.photoAlbumMenuText
          : photoAlbumMenuText // ignore: cast_nullable_to_non_nullable
              as String,
      goShootText: null == goShootText
          ? _value.goShootText
          : goShootText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PictureSelectionI18nConfigImplCopyWith<$Res>
    implements $PictureSelectionI18nConfigCopyWith<$Res> {
  factory _$$PictureSelectionI18nConfigImplCopyWith(
          _$PictureSelectionI18nConfigImpl value,
          $Res Function(_$PictureSelectionI18nConfigImpl) then) =
      __$$PictureSelectionI18nConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'photoAlbumMenuText') String photoAlbumMenuText,
      String goShootText});
}

/// @nodoc
class __$$PictureSelectionI18nConfigImplCopyWithImpl<$Res>
    extends _$PictureSelectionI18nConfigCopyWithImpl<$Res,
        _$PictureSelectionI18nConfigImpl>
    implements _$$PictureSelectionI18nConfigImplCopyWith<$Res> {
  __$$PictureSelectionI18nConfigImplCopyWithImpl(
      _$PictureSelectionI18nConfigImpl _value,
      $Res Function(_$PictureSelectionI18nConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of PictureSelectionI18nConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoAlbumMenuText = null,
    Object? goShootText = null,
  }) {
    return _then(_$PictureSelectionI18nConfigImpl(
      photoAlbumMenuText: null == photoAlbumMenuText
          ? _value.photoAlbumMenuText
          : photoAlbumMenuText // ignore: cast_nullable_to_non_nullable
              as String,
      goShootText: null == goShootText
          ? _value.goShootText
          : goShootText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PictureSelectionI18nConfigImpl extends _PictureSelectionI18nConfig {
  const _$PictureSelectionI18nConfigImpl(
      {@JsonKey(name: 'photoAlbumMenuText') this.photoAlbumMenuText = '相册',
      this.goShootText = '去拍摄'})
      : super._();

  factory _$PictureSelectionI18nConfigImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PictureSelectionI18nConfigImplFromJson(json);

  @override
  @JsonKey(name: 'photoAlbumMenuText')
  final String photoAlbumMenuText;
  @override
  @JsonKey()
  final String goShootText;

  @override
  String toString() {
    return 'PictureSelectionI18nConfig(photoAlbumMenuText: $photoAlbumMenuText, goShootText: $goShootText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PictureSelectionI18nConfigImpl &&
            (identical(other.photoAlbumMenuText, photoAlbumMenuText) ||
                other.photoAlbumMenuText == photoAlbumMenuText) &&
            (identical(other.goShootText, goShootText) ||
                other.goShootText == goShootText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, photoAlbumMenuText, goShootText);

  /// Create a copy of PictureSelectionI18nConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PictureSelectionI18nConfigImplCopyWith<_$PictureSelectionI18nConfigImpl>
      get copyWith => __$$PictureSelectionI18nConfigImplCopyWithImpl<
          _$PictureSelectionI18nConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PictureSelectionI18nConfigImplToJson(
      this,
    );
  }
}

abstract class _PictureSelectionI18nConfig extends PictureSelectionI18nConfig {
  const factory _PictureSelectionI18nConfig(
      {@JsonKey(name: 'photoAlbumMenuText') final String photoAlbumMenuText,
      final String goShootText}) = _$PictureSelectionI18nConfigImpl;
  const _PictureSelectionI18nConfig._() : super._();

  factory _PictureSelectionI18nConfig.fromJson(Map<String, dynamic> json) =
      _$PictureSelectionI18nConfigImpl.fromJson;

  @override
  @JsonKey(name: 'photoAlbumMenuText')
  String get photoAlbumMenuText;
  @override
  String get goShootText;

  /// Create a copy of PictureSelectionI18nConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PictureSelectionI18nConfigImplCopyWith<_$PictureSelectionI18nConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PictureSelectionItemModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) file,
    required TResult Function(String url) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? file,
    TResult? Function(String url)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? file,
    TResult Function(String url)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(XXFile value) file,
    required TResult Function(XXImage value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(XXFile value)? file,
    TResult? Function(XXImage value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(XXFile value)? file,
    TResult Function(XXImage value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureSelectionItemModelCopyWith<$Res> {
  factory $PictureSelectionItemModelCopyWith(PictureSelectionItemModel value,
          $Res Function(PictureSelectionItemModel) then) =
      _$PictureSelectionItemModelCopyWithImpl<$Res, PictureSelectionItemModel>;
}

/// @nodoc
class _$PictureSelectionItemModelCopyWithImpl<$Res,
        $Val extends PictureSelectionItemModel>
    implements $PictureSelectionItemModelCopyWith<$Res> {
  _$PictureSelectionItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$XXFileImplCopyWith<$Res> {
  factory _$$XXFileImplCopyWith(
          _$XXFileImpl value, $Res Function(_$XXFileImpl) then) =
      __$$XXFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$XXFileImplCopyWithImpl<$Res>
    extends _$PictureSelectionItemModelCopyWithImpl<$Res, _$XXFileImpl>
    implements _$$XXFileImplCopyWith<$Res> {
  __$$XXFileImplCopyWithImpl(
      _$XXFileImpl _value, $Res Function(_$XXFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$XXFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$XXFileImpl extends XXFile {
  _$XXFileImpl({required this.file}) : super._();

  @override
  final File file;

  @override
  String toString() {
    return 'PictureSelectionItemModel.file(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XXFileImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XXFileImplCopyWith<_$XXFileImpl> get copyWith =>
      __$$XXFileImplCopyWithImpl<_$XXFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) file,
    required TResult Function(String url) network,
  }) {
    return file(this.file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? file,
    TResult? Function(String url)? network,
  }) {
    return file?.call(this.file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? file,
    TResult Function(String url)? network,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this.file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(XXFile value) file,
    required TResult Function(XXImage value) network,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(XXFile value)? file,
    TResult? Function(XXImage value)? network,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(XXFile value)? file,
    TResult Function(XXImage value)? network,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class XXFile extends PictureSelectionItemModel {
  factory XXFile({required final File file}) = _$XXFileImpl;
  XXFile._() : super._();

  File get file;

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XXFileImplCopyWith<_$XXFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$XXImageImplCopyWith<$Res> {
  factory _$$XXImageImplCopyWith(
          _$XXImageImpl value, $Res Function(_$XXImageImpl) then) =
      __$$XXImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$XXImageImplCopyWithImpl<$Res>
    extends _$PictureSelectionItemModelCopyWithImpl<$Res, _$XXImageImpl>
    implements _$$XXImageImplCopyWith<$Res> {
  __$$XXImageImplCopyWithImpl(
      _$XXImageImpl _value, $Res Function(_$XXImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$XXImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$XXImageImpl extends XXImage {
  _$XXImageImpl({required this.url}) : super._();

  @override
  final String url;

  @override
  String toString() {
    return 'PictureSelectionItemModel.network(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XXImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XXImageImplCopyWith<_$XXImageImpl> get copyWith =>
      __$$XXImageImplCopyWithImpl<_$XXImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) file,
    required TResult Function(String url) network,
  }) {
    return network(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? file,
    TResult? Function(String url)? network,
  }) {
    return network?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? file,
    TResult Function(String url)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(XXFile value) file,
    required TResult Function(XXImage value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(XXFile value)? file,
    TResult? Function(XXImage value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(XXFile value)? file,
    TResult Function(XXImage value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class XXImage extends PictureSelectionItemModel {
  factory XXImage({required final String url}) = _$XXImageImpl;
  XXImage._() : super._();

  String get url;

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XXImageImplCopyWith<_$XXImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
