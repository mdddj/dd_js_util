// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestParams {
  bool get showErrorMsg;
  String get loadingText;
  String? get contentType;
  Map<String, dynamic> get headers;
  bool get showDefaultLoading;
  @JsonKey(name: 'data', toJson: _dataToJson)
  dynamic get data;
  ResponseType? get responseType;
  bool? get nullParams;
  @igFreezedJson
  RequestEncoder? get requestEncoder;
  @igFreezedJson
  DioStart? get dioStart;
  bool? get returnIsString;
  @igFreezedJson
  String? get fullUrl;
  @igFreezedJson
  InterceptorCall? get interceptorCall;
  @igFreezedJson
  UrlParseFormat? get urlParseFormat;
  @igFreezedJson
  ResponseResultCallback? get responseResultCallback;
  Map<String, dynamic>? get extra;
  @igFreezedJson
  CancelToken? get cancelToken;
  @igFreezedJson
  ProgressCallback? get onSendCallback;
  @igFreezedJson
  ProgressCallback? get onReceiveProgress;
  String? get downloadUrl;
  @igFreezedJson
  File? get savePath;

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RequestParamsCopyWith<RequestParams> get copyWith =>
      _$RequestParamsCopyWithImpl<RequestParams>(
          this as RequestParams, _$identity);

  /// Serializes this RequestParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestParams &&
            (identical(other.showErrorMsg, showErrorMsg) ||
                other.showErrorMsg == showErrorMsg) &&
            (identical(other.loadingText, loadingText) ||
                other.loadingText == loadingText) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality().equals(other.headers, headers) &&
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
            const DeepCollectionEquality().equals(other.extra, extra) &&
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
        const DeepCollectionEquality().hash(headers),
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
        const DeepCollectionEquality().hash(extra),
        cancelToken,
        onSendCallback,
        onReceiveProgress,
        downloadUrl,
        savePath
      ]);

  @override
  String toString() {
    return 'RequestParams(showErrorMsg: $showErrorMsg, loadingText: $loadingText, contentType: $contentType, headers: $headers, showDefaultLoading: $showDefaultLoading, data: $data, responseType: $responseType, nullParams: $nullParams, requestEncoder: $requestEncoder, dioStart: $dioStart, returnIsString: $returnIsString, fullUrl: $fullUrl, interceptorCall: $interceptorCall, urlParseFormat: $urlParseFormat, responseResultCallback: $responseResultCallback, extra: $extra, cancelToken: $cancelToken, onSendCallback: $onSendCallback, onReceiveProgress: $onReceiveProgress, downloadUrl: $downloadUrl, savePath: $savePath)';
  }
}

/// @nodoc
abstract mixin class $RequestParamsCopyWith<$Res> {
  factory $RequestParamsCopyWith(
          RequestParams value, $Res Function(RequestParams) _then) =
      _$RequestParamsCopyWithImpl;
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
class _$RequestParamsCopyWithImpl<$Res>
    implements $RequestParamsCopyWith<$Res> {
  _$RequestParamsCopyWithImpl(this._self, this._then);

  final RequestParams _self;
  final $Res Function(RequestParams) _then;

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
    return _then(_self.copyWith(
      showErrorMsg: null == showErrorMsg
          ? _self.showErrorMsg
          : showErrorMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingText: null == loadingText
          ? _self.loadingText
          : loadingText // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _self.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: null == headers
          ? _self.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      showDefaultLoading: null == showDefaultLoading
          ? _self.showDefaultLoading
          : showDefaultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      responseType: freezed == responseType
          ? _self.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as ResponseType?,
      nullParams: freezed == nullParams
          ? _self.nullParams
          : nullParams // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestEncoder: freezed == requestEncoder
          ? _self.requestEncoder
          : requestEncoder // ignore: cast_nullable_to_non_nullable
              as RequestEncoder?,
      dioStart: freezed == dioStart
          ? _self.dioStart
          : dioStart // ignore: cast_nullable_to_non_nullable
              as DioStart?,
      returnIsString: freezed == returnIsString
          ? _self.returnIsString
          : returnIsString // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullUrl: freezed == fullUrl
          ? _self.fullUrl
          : fullUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      interceptorCall: freezed == interceptorCall
          ? _self.interceptorCall
          : interceptorCall // ignore: cast_nullable_to_non_nullable
              as InterceptorCall?,
      urlParseFormat: freezed == urlParseFormat
          ? _self.urlParseFormat
          : urlParseFormat // ignore: cast_nullable_to_non_nullable
              as UrlParseFormat?,
      responseResultCallback: freezed == responseResultCallback
          ? _self.responseResultCallback
          : responseResultCallback // ignore: cast_nullable_to_non_nullable
              as ResponseResultCallback?,
      extra: freezed == extra
          ? _self.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      cancelToken: freezed == cancelToken
          ? _self.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
      onSendCallback: freezed == onSendCallback
          ? _self.onSendCallback
          : onSendCallback // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
      onReceiveProgress: freezed == onReceiveProgress
          ? _self.onReceiveProgress
          : onReceiveProgress // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
      downloadUrl: freezed == downloadUrl
          ? _self.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      savePath: freezed == savePath
          ? _self.savePath
          : savePath // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RequestParams extends RequestParams {
  const _RequestParams(
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
  factory _RequestParams.fromJson(Map<String, dynamic> json) =>
      _$RequestParamsFromJson(json);

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

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RequestParamsCopyWith<_RequestParams> get copyWith =>
      __$RequestParamsCopyWithImpl<_RequestParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RequestParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RequestParams &&
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

  @override
  String toString() {
    return 'RequestParams(showErrorMsg: $showErrorMsg, loadingText: $loadingText, contentType: $contentType, headers: $headers, showDefaultLoading: $showDefaultLoading, data: $data, responseType: $responseType, nullParams: $nullParams, requestEncoder: $requestEncoder, dioStart: $dioStart, returnIsString: $returnIsString, fullUrl: $fullUrl, interceptorCall: $interceptorCall, urlParseFormat: $urlParseFormat, responseResultCallback: $responseResultCallback, extra: $extra, cancelToken: $cancelToken, onSendCallback: $onSendCallback, onReceiveProgress: $onReceiveProgress, downloadUrl: $downloadUrl, savePath: $savePath)';
  }
}

/// @nodoc
abstract mixin class _$RequestParamsCopyWith<$Res>
    implements $RequestParamsCopyWith<$Res> {
  factory _$RequestParamsCopyWith(
          _RequestParams value, $Res Function(_RequestParams) _then) =
      __$RequestParamsCopyWithImpl;
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
class __$RequestParamsCopyWithImpl<$Res>
    implements _$RequestParamsCopyWith<$Res> {
  __$RequestParamsCopyWithImpl(this._self, this._then);

  final _RequestParams _self;
  final $Res Function(_RequestParams) _then;

  /// Create a copy of RequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_RequestParams(
      showErrorMsg: null == showErrorMsg
          ? _self.showErrorMsg
          : showErrorMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingText: null == loadingText
          ? _self.loadingText
          : loadingText // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: freezed == contentType
          ? _self.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      headers: null == headers
          ? _self._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      showDefaultLoading: null == showDefaultLoading
          ? _self.showDefaultLoading
          : showDefaultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      responseType: freezed == responseType
          ? _self.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as ResponseType?,
      nullParams: freezed == nullParams
          ? _self.nullParams
          : nullParams // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestEncoder: freezed == requestEncoder
          ? _self.requestEncoder
          : requestEncoder // ignore: cast_nullable_to_non_nullable
              as RequestEncoder?,
      dioStart: freezed == dioStart
          ? _self.dioStart
          : dioStart // ignore: cast_nullable_to_non_nullable
              as DioStart?,
      returnIsString: freezed == returnIsString
          ? _self.returnIsString
          : returnIsString // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullUrl: freezed == fullUrl
          ? _self.fullUrl
          : fullUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      interceptorCall: freezed == interceptorCall
          ? _self.interceptorCall
          : interceptorCall // ignore: cast_nullable_to_non_nullable
              as InterceptorCall?,
      urlParseFormat: freezed == urlParseFormat
          ? _self.urlParseFormat
          : urlParseFormat // ignore: cast_nullable_to_non_nullable
              as UrlParseFormat?,
      responseResultCallback: freezed == responseResultCallback
          ? _self.responseResultCallback
          : responseResultCallback // ignore: cast_nullable_to_non_nullable
              as ResponseResultCallback?,
      extra: freezed == extra
          ? _self._extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      cancelToken: freezed == cancelToken
          ? _self.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancelToken?,
      onSendCallback: freezed == onSendCallback
          ? _self.onSendCallback
          : onSendCallback // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
      onReceiveProgress: freezed == onReceiveProgress
          ? _self.onReceiveProgress
          : onReceiveProgress // ignore: cast_nullable_to_non_nullable
              as ProgressCallback?,
      downloadUrl: freezed == downloadUrl
          ? _self.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      savePath: freezed == savePath
          ? _self.savePath
          : savePath // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
mixin _$AppLocalSettingModel {
  @HiveField(0, defaultValue: 0)
  int get themeIndex;
  @HiveField(1, defaultValue: 0)
  int get themeModel;

  /// Create a copy of AppLocalSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppLocalSettingModelCopyWith<AppLocalSettingModel> get copyWith =>
      _$AppLocalSettingModelCopyWithImpl<AppLocalSettingModel>(
          this as AppLocalSettingModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppLocalSettingModel &&
            (identical(other.themeIndex, themeIndex) ||
                other.themeIndex == themeIndex) &&
            (identical(other.themeModel, themeModel) ||
                other.themeModel == themeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeIndex, themeModel);

  @override
  String toString() {
    return 'AppLocalSettingModel(themeIndex: $themeIndex, themeModel: $themeModel)';
  }
}

/// @nodoc
abstract mixin class $AppLocalSettingModelCopyWith<$Res> {
  factory $AppLocalSettingModelCopyWith(AppLocalSettingModel value,
          $Res Function(AppLocalSettingModel) _then) =
      _$AppLocalSettingModelCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int themeIndex,
      @HiveField(1, defaultValue: 0) int themeModel});
}

/// @nodoc
class _$AppLocalSettingModelCopyWithImpl<$Res>
    implements $AppLocalSettingModelCopyWith<$Res> {
  _$AppLocalSettingModelCopyWithImpl(this._self, this._then);

  final AppLocalSettingModel _self;
  final $Res Function(AppLocalSettingModel) _then;

  /// Create a copy of AppLocalSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeIndex = null,
    Object? themeModel = null,
  }) {
    return _then(_self.copyWith(
      themeIndex: null == themeIndex
          ? _self.themeIndex
          : themeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      themeModel: null == themeModel
          ? _self.themeModel
          : themeModel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _AppLocalSettingModel extends AppLocalSettingModel {
  const _AppLocalSettingModel(
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

  /// Create a copy of AppLocalSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppLocalSettingModelCopyWith<_AppLocalSettingModel> get copyWith =>
      __$AppLocalSettingModelCopyWithImpl<_AppLocalSettingModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppLocalSettingModel &&
            (identical(other.themeIndex, themeIndex) ||
                other.themeIndex == themeIndex) &&
            (identical(other.themeModel, themeModel) ||
                other.themeModel == themeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeIndex, themeModel);

  @override
  String toString() {
    return 'AppLocalSettingModel(themeIndex: $themeIndex, themeModel: $themeModel)';
  }
}

/// @nodoc
abstract mixin class _$AppLocalSettingModelCopyWith<$Res>
    implements $AppLocalSettingModelCopyWith<$Res> {
  factory _$AppLocalSettingModelCopyWith(_AppLocalSettingModel value,
          $Res Function(_AppLocalSettingModel) _then) =
      __$AppLocalSettingModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int themeIndex,
      @HiveField(1, defaultValue: 0) int themeModel});
}

/// @nodoc
class __$AppLocalSettingModelCopyWithImpl<$Res>
    implements _$AppLocalSettingModelCopyWith<$Res> {
  __$AppLocalSettingModelCopyWithImpl(this._self, this._then);

  final _AppLocalSettingModel _self;
  final $Res Function(_AppLocalSettingModel) _then;

  /// Create a copy of AppLocalSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeIndex = null,
    Object? themeModel = null,
  }) {
    return _then(_AppLocalSettingModel(
      themeIndex: null == themeIndex
          ? _self.themeIndex
          : themeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      themeModel: null == themeModel
          ? _self.themeModel
          : themeModel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$AskStringDialogParams {
  String get placeholder;
  String get title;
  String get okBtnText;
  String get cancelBtnText;

  /// Create a copy of AskStringDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AskStringDialogParamsCopyWith<AskStringDialogParams> get copyWith =>
      _$AskStringDialogParamsCopyWithImpl<AskStringDialogParams>(
          this as AskStringDialogParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AskStringDialogParams &&
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

  @override
  String toString() {
    return 'AskStringDialogParams(placeholder: $placeholder, title: $title, okBtnText: $okBtnText, cancelBtnText: $cancelBtnText)';
  }
}

/// @nodoc
abstract mixin class $AskStringDialogParamsCopyWith<$Res> {
  factory $AskStringDialogParamsCopyWith(AskStringDialogParams value,
          $Res Function(AskStringDialogParams) _then) =
      _$AskStringDialogParamsCopyWithImpl;
  @useResult
  $Res call(
      {String placeholder,
      String title,
      String okBtnText,
      String cancelBtnText});
}

/// @nodoc
class _$AskStringDialogParamsCopyWithImpl<$Res>
    implements $AskStringDialogParamsCopyWith<$Res> {
  _$AskStringDialogParamsCopyWithImpl(this._self, this._then);

  final AskStringDialogParams _self;
  final $Res Function(AskStringDialogParams) _then;

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
    return _then(_self.copyWith(
      placeholder: null == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      okBtnText: null == okBtnText
          ? _self.okBtnText
          : okBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelBtnText: null == cancelBtnText
          ? _self.cancelBtnText
          : cancelBtnText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _AskStringDialogParams implements AskStringDialogParams {
  const _AskStringDialogParams(
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

  /// Create a copy of AskStringDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AskStringDialogParamsCopyWith<_AskStringDialogParams> get copyWith =>
      __$AskStringDialogParamsCopyWithImpl<_AskStringDialogParams>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AskStringDialogParams &&
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

  @override
  String toString() {
    return 'AskStringDialogParams(placeholder: $placeholder, title: $title, okBtnText: $okBtnText, cancelBtnText: $cancelBtnText)';
  }
}

/// @nodoc
abstract mixin class _$AskStringDialogParamsCopyWith<$Res>
    implements $AskStringDialogParamsCopyWith<$Res> {
  factory _$AskStringDialogParamsCopyWith(_AskStringDialogParams value,
          $Res Function(_AskStringDialogParams) _then) =
      __$AskStringDialogParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String placeholder,
      String title,
      String okBtnText,
      String cancelBtnText});
}

/// @nodoc
class __$AskStringDialogParamsCopyWithImpl<$Res>
    implements _$AskStringDialogParamsCopyWith<$Res> {
  __$AskStringDialogParamsCopyWithImpl(this._self, this._then);

  final _AskStringDialogParams _self;
  final $Res Function(_AskStringDialogParams) _then;

  /// Create a copy of AskStringDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? placeholder = null,
    Object? title = null,
    Object? okBtnText = null,
    Object? cancelBtnText = null,
  }) {
    return _then(_AskStringDialogParams(
      placeholder: null == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      okBtnText: null == okBtnText
          ? _self.okBtnText
          : okBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelBtnText: null == cancelBtnText
          ? _self.cancelBtnText
          : cancelBtnText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AskIntDialogParams {
  String get placeholder;
  String get title;
  String get okBtnText;
  String get cancelBtnText;
  @igFreezedJson
  bool Function(int value)? get disableOkButton;
  @igFreezedJson
  String? Function(int value)? get errorMessage;
  @igFreezedJson
  TextStyle? get okButtonTextStyle;
  @igFreezedJson
  TextStyle? get cancelButtonTextStyle;

  /// Create a copy of AskIntDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AskIntDialogParamsCopyWith<AskIntDialogParams> get copyWith =>
      _$AskIntDialogParamsCopyWithImpl<AskIntDialogParams>(
          this as AskIntDialogParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AskIntDialogParams &&
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

  @override
  String toString() {
    return 'AskIntDialogParams(placeholder: $placeholder, title: $title, okBtnText: $okBtnText, cancelBtnText: $cancelBtnText, disableOkButton: $disableOkButton, errorMessage: $errorMessage, okButtonTextStyle: $okButtonTextStyle, cancelButtonTextStyle: $cancelButtonTextStyle)';
  }
}

/// @nodoc
abstract mixin class $AskIntDialogParamsCopyWith<$Res> {
  factory $AskIntDialogParamsCopyWith(
          AskIntDialogParams value, $Res Function(AskIntDialogParams) _then) =
      _$AskIntDialogParamsCopyWithImpl;
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
class _$AskIntDialogParamsCopyWithImpl<$Res>
    implements $AskIntDialogParamsCopyWith<$Res> {
  _$AskIntDialogParamsCopyWithImpl(this._self, this._then);

  final AskIntDialogParams _self;
  final $Res Function(AskIntDialogParams) _then;

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
    return _then(_self.copyWith(
      placeholder: null == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      okBtnText: null == okBtnText
          ? _self.okBtnText
          : okBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelBtnText: null == cancelBtnText
          ? _self.cancelBtnText
          : cancelBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      disableOkButton: freezed == disableOkButton
          ? _self.disableOkButton!
          : disableOkButton // ignore: cast_nullable_to_non_nullable
              as bool Function(int)?,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage!
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String? Function(int)?,
      okButtonTextStyle: freezed == okButtonTextStyle
          ? _self.okButtonTextStyle
          : okButtonTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      cancelButtonTextStyle: freezed == cancelButtonTextStyle
          ? _self.cancelButtonTextStyle
          : cancelButtonTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ));
  }
}

/// @nodoc

class _AskIntDialogParams implements AskIntDialogParams {
  const _AskIntDialogParams(
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

  /// Create a copy of AskIntDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AskIntDialogParamsCopyWith<_AskIntDialogParams> get copyWith =>
      __$AskIntDialogParamsCopyWithImpl<_AskIntDialogParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AskIntDialogParams &&
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

  @override
  String toString() {
    return 'AskIntDialogParams(placeholder: $placeholder, title: $title, okBtnText: $okBtnText, cancelBtnText: $cancelBtnText, disableOkButton: $disableOkButton, errorMessage: $errorMessage, okButtonTextStyle: $okButtonTextStyle, cancelButtonTextStyle: $cancelButtonTextStyle)';
  }
}

/// @nodoc
abstract mixin class _$AskIntDialogParamsCopyWith<$Res>
    implements $AskIntDialogParamsCopyWith<$Res> {
  factory _$AskIntDialogParamsCopyWith(
          _AskIntDialogParams value, $Res Function(_AskIntDialogParams) _then) =
      __$AskIntDialogParamsCopyWithImpl;
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
class __$AskIntDialogParamsCopyWithImpl<$Res>
    implements _$AskIntDialogParamsCopyWith<$Res> {
  __$AskIntDialogParamsCopyWithImpl(this._self, this._then);

  final _AskIntDialogParams _self;
  final $Res Function(_AskIntDialogParams) _then;

  /// Create a copy of AskIntDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_AskIntDialogParams(
      placeholder: null == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      okBtnText: null == okBtnText
          ? _self.okBtnText
          : okBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelBtnText: null == cancelBtnText
          ? _self.cancelBtnText
          : cancelBtnText // ignore: cast_nullable_to_non_nullable
              as String,
      disableOkButton: freezed == disableOkButton
          ? _self.disableOkButton
          : disableOkButton // ignore: cast_nullable_to_non_nullable
              as bool Function(int)?,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String? Function(int)?,
      okButtonTextStyle: freezed == okButtonTextStyle
          ? _self.okButtonTextStyle
          : okButtonTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      cancelButtonTextStyle: freezed == cancelButtonTextStyle
          ? _self.cancelButtonTextStyle
          : cancelButtonTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ));
  }
}

/// @nodoc
mixin _$AskOkDialogParams {
  String get contentText;
  String get okText;
  String get cancelText;
  @igFreezedJson
  Widget? get content;
  @igFreezedJson
  Widget? get title;

  /// Create a copy of AskOkDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AskOkDialogParamsCopyWith<AskOkDialogParams> get copyWith =>
      _$AskOkDialogParamsCopyWithImpl<AskOkDialogParams>(
          this as AskOkDialogParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AskOkDialogParams &&
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

  @override
  String toString() {
    return 'AskOkDialogParams(contentText: $contentText, okText: $okText, cancelText: $cancelText, content: $content, title: $title)';
  }
}

/// @nodoc
abstract mixin class $AskOkDialogParamsCopyWith<$Res> {
  factory $AskOkDialogParamsCopyWith(
          AskOkDialogParams value, $Res Function(AskOkDialogParams) _then) =
      _$AskOkDialogParamsCopyWithImpl;
  @useResult
  $Res call(
      {String contentText,
      String okText,
      String cancelText,
      @igFreezedJson Widget? content,
      @igFreezedJson Widget? title});
}

/// @nodoc
class _$AskOkDialogParamsCopyWithImpl<$Res>
    implements $AskOkDialogParamsCopyWith<$Res> {
  _$AskOkDialogParamsCopyWithImpl(this._self, this._then);

  final AskOkDialogParams _self;
  final $Res Function(AskOkDialogParams) _then;

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
    return _then(_self.copyWith(
      contentText: null == contentText
          ? _self.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String,
      okText: null == okText
          ? _self.okText
          : okText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelText: null == cancelText
          ? _self.cancelText
          : cancelText // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _AskOkDialogParams implements AskOkDialogParams {
  const _AskOkDialogParams(
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

  /// Create a copy of AskOkDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AskOkDialogParamsCopyWith<_AskOkDialogParams> get copyWith =>
      __$AskOkDialogParamsCopyWithImpl<_AskOkDialogParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AskOkDialogParams &&
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

  @override
  String toString() {
    return 'AskOkDialogParams(contentText: $contentText, okText: $okText, cancelText: $cancelText, content: $content, title: $title)';
  }
}

/// @nodoc
abstract mixin class _$AskOkDialogParamsCopyWith<$Res>
    implements $AskOkDialogParamsCopyWith<$Res> {
  factory _$AskOkDialogParamsCopyWith(
          _AskOkDialogParams value, $Res Function(_AskOkDialogParams) _then) =
      __$AskOkDialogParamsCopyWithImpl;
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
class __$AskOkDialogParamsCopyWithImpl<$Res>
    implements _$AskOkDialogParamsCopyWith<$Res> {
  __$AskOkDialogParamsCopyWithImpl(this._self, this._then);

  final _AskOkDialogParams _self;
  final $Res Function(_AskOkDialogParams) _then;

  /// Create a copy of AskOkDialogParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contentText = null,
    Object? okText = null,
    Object? cancelText = null,
    Object? content = freezed,
    Object? title = freezed,
  }) {
    return _then(_AskOkDialogParams(
      contentText: null == contentText
          ? _self.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String,
      okText: null == okText
          ? _self.okText
          : okText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelText: null == cancelText
          ? _self.cancelText
          : cancelText // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
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
  /// Serializes this BaseApiException to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BaseApiException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BaseApiException()';
  }
}

/// @nodoc
@JsonSerializable()
class BaseApiCancelException extends BaseApiException {
  const BaseApiCancelException(
      {@igFreezedJson this.error,
      @igFreezedJson this.options,
      final String? $type})
      : $type = $type ?? 'cancel',
        super._();
  factory BaseApiCancelException.fromJson(Map<String, dynamic> json) =>
      _$BaseApiCancelExceptionFromJson(json);

  @igFreezedJson
  final Object? error;
  @igFreezedJson
  final RequestOptions? options;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BaseApiCancelExceptionCopyWith<BaseApiCancelException> get copyWith =>
      _$BaseApiCancelExceptionCopyWithImpl<BaseApiCancelException>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BaseApiCancelExceptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseApiCancelException &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.options, options) || other.options == options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), options);

  @override
  String toString() {
    return 'BaseApiException.cancel(error: $error, options: $options)';
  }
}

/// @nodoc
abstract mixin class $BaseApiCancelExceptionCopyWith<$Res> {
  factory $BaseApiCancelExceptionCopyWith(BaseApiCancelException value,
          $Res Function(BaseApiCancelException) _then) =
      _$BaseApiCancelExceptionCopyWithImpl;
  @useResult
  $Res call(
      {@igFreezedJson Object? error, @igFreezedJson RequestOptions? options});
}

/// @nodoc
class _$BaseApiCancelExceptionCopyWithImpl<$Res>
    implements $BaseApiCancelExceptionCopyWith<$Res> {
  _$BaseApiCancelExceptionCopyWithImpl(this._self, this._then);

  final BaseApiCancelException _self;
  final $Res Function(BaseApiCancelException) _then;

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
    Object? options = freezed,
  }) {
    return _then(BaseApiCancelException(
      error: freezed == error ? _self.error : error,
      options: freezed == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as RequestOptions?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BaseApiConnectionTimeoutException extends BaseApiException {
  const BaseApiConnectionTimeoutException({final String? $type})
      : $type = $type ?? 'connectionTimeout',
        super._();
  factory BaseApiConnectionTimeoutException.fromJson(
          Map<String, dynamic> json) =>
      _$BaseApiConnectionTimeoutExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$BaseApiConnectionTimeoutExceptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseApiConnectionTimeoutException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BaseApiException.connectionTimeout()';
  }
}

/// @nodoc
@JsonSerializable()
class BaseApiSendTimeoutException extends BaseApiException {
  const BaseApiSendTimeoutException({final String? $type})
      : $type = $type ?? 'sendTimeout',
        super._();
  factory BaseApiSendTimeoutException.fromJson(Map<String, dynamic> json) =>
      _$BaseApiSendTimeoutExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$BaseApiSendTimeoutExceptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseApiSendTimeoutException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BaseApiException.sendTimeout()';
  }
}

/// @nodoc
@JsonSerializable()
class BaseApiReceiveTimeoutException extends BaseApiException {
  const BaseApiReceiveTimeoutException({final String? $type})
      : $type = $type ?? 'receiveTimeout',
        super._();
  factory BaseApiReceiveTimeoutException.fromJson(Map<String, dynamic> json) =>
      _$BaseApiReceiveTimeoutExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$BaseApiReceiveTimeoutExceptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseApiReceiveTimeoutException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BaseApiException.receiveTimeout()';
  }
}

/// @nodoc
@JsonSerializable()
class BaseApiBadCertificateException extends BaseApiException {
  const BaseApiBadCertificateException({final String? $type})
      : $type = $type ?? 'badCertificate',
        super._();
  factory BaseApiBadCertificateException.fromJson(Map<String, dynamic> json) =>
      _$BaseApiBadCertificateExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$BaseApiBadCertificateExceptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseApiBadCertificateException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BaseApiException.badCertificate()';
  }
}

/// @nodoc
@JsonSerializable()
class BaseApiConnectionErrorException extends BaseApiException {
  const BaseApiConnectionErrorException({final String? $type})
      : $type = $type ?? 'connectionError',
        super._();
  factory BaseApiConnectionErrorException.fromJson(Map<String, dynamic> json) =>
      _$BaseApiConnectionErrorExceptionFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$BaseApiConnectionErrorExceptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseApiConnectionErrorException);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BaseApiException.connectionError()';
  }
}

/// @nodoc
@JsonSerializable()
class BaseApiBadResponseException extends BaseApiException {
  const BaseApiBadResponseException(
      {@igFreezedJson this.response, this.statusCode, final String? $type})
      : $type = $type ?? 'badResponse',
        super._();
  factory BaseApiBadResponseException.fromJson(Map<String, dynamic> json) =>
      _$BaseApiBadResponseExceptionFromJson(json);

  @igFreezedJson
  final Response<dynamic>? response;
  final int? statusCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BaseApiBadResponseExceptionCopyWith<BaseApiBadResponseException>
      get copyWith => _$BaseApiBadResponseExceptionCopyWithImpl<
          BaseApiBadResponseException>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BaseApiBadResponseExceptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseApiBadResponseException &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, response, statusCode);

  @override
  String toString() {
    return 'BaseApiException.badResponse(response: $response, statusCode: $statusCode)';
  }
}

/// @nodoc
abstract mixin class $BaseApiBadResponseExceptionCopyWith<$Res> {
  factory $BaseApiBadResponseExceptionCopyWith(
          BaseApiBadResponseException value,
          $Res Function(BaseApiBadResponseException) _then) =
      _$BaseApiBadResponseExceptionCopyWithImpl;
  @useResult
  $Res call({@igFreezedJson Response<dynamic>? response, int? statusCode});
}

/// @nodoc
class _$BaseApiBadResponseExceptionCopyWithImpl<$Res>
    implements $BaseApiBadResponseExceptionCopyWith<$Res> {
  _$BaseApiBadResponseExceptionCopyWithImpl(this._self, this._then);

  final BaseApiBadResponseException _self;
  final $Res Function(BaseApiBadResponseException) _then;

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(BaseApiBadResponseException(
      response: freezed == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response<dynamic>?,
      statusCode: freezed == statusCode
          ? _self.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BaseApiBusinessException extends BaseApiException {
  const BaseApiBusinessException(
      {required this.message,
      @igFreezedJson this.error,
      @igFreezedJson this.stackTrace,
      final String? $type})
      : $type = $type ?? 'businessException',
        super._();
  factory BaseApiBusinessException.fromJson(Map<String, dynamic> json) =>
      _$BaseApiBusinessExceptionFromJson(json);

  final String message;
  @igFreezedJson
  final Object? error;
  @igFreezedJson
  final StackTrace? stackTrace;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BaseApiBusinessExceptionCopyWith<BaseApiBusinessException> get copyWith =>
      _$BaseApiBusinessExceptionCopyWithImpl<BaseApiBusinessException>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BaseApiBusinessExceptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseApiBusinessException &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(error), stackTrace);

  @override
  String toString() {
    return 'BaseApiException.businessException(message: $message, error: $error, stackTrace: $stackTrace)';
  }
}

/// @nodoc
abstract mixin class $BaseApiBusinessExceptionCopyWith<$Res> {
  factory $BaseApiBusinessExceptionCopyWith(BaseApiBusinessException value,
          $Res Function(BaseApiBusinessException) _then) =
      _$BaseApiBusinessExceptionCopyWithImpl;
  @useResult
  $Res call(
      {String message,
      @igFreezedJson Object? error,
      @igFreezedJson StackTrace? stackTrace});
}

/// @nodoc
class _$BaseApiBusinessExceptionCopyWithImpl<$Res>
    implements $BaseApiBusinessExceptionCopyWith<$Res> {
  _$BaseApiBusinessExceptionCopyWithImpl(this._self, this._then);

  final BaseApiBusinessException _self;
  final $Res Function(BaseApiBusinessException) _then;

  /// Create a copy of BaseApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(BaseApiBusinessException(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _self.error : error,
      stackTrace: freezed == stackTrace
          ? _self.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc
mixin _$ByteModel {
  double get value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ByteModelCopyWith<ByteModel> get copyWith =>
      _$ByteModelCopyWithImpl<ByteModel>(this as ByteModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ByteModel &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ByteModel(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ByteModelCopyWith<$Res> {
  factory $ByteModelCopyWith(ByteModel value, $Res Function(ByteModel) _then) =
      _$ByteModelCopyWithImpl;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$ByteModelCopyWithImpl<$Res> implements $ByteModelCopyWith<$Res> {
  _$ByteModelCopyWithImpl(this._self, this._then);

  final ByteModel _self;
  final $Res Function(ByteModel) _then;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class BytesModel extends ByteModel {
  const BytesModel(this.value) : super._();

  @override
  final double value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BytesModelCopyWith<BytesModel> get copyWith =>
      _$BytesModelCopyWithImpl<BytesModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BytesModel &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ByteModel.bytes(value: $value)';
  }
}

/// @nodoc
abstract mixin class $BytesModelCopyWith<$Res>
    implements $ByteModelCopyWith<$Res> {
  factory $BytesModelCopyWith(
          BytesModel value, $Res Function(BytesModel) _then) =
      _$BytesModelCopyWithImpl;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$BytesModelCopyWithImpl<$Res> implements $BytesModelCopyWith<$Res> {
  _$BytesModelCopyWithImpl(this._self, this._then);

  final BytesModel _self;
  final $Res Function(BytesModel) _then;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(BytesModel(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class KbModel extends ByteModel {
  const KbModel(this.value) : super._();

  @override
  final double value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KbModelCopyWith<KbModel> get copyWith =>
      _$KbModelCopyWithImpl<KbModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KbModel &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ByteModel.kb(value: $value)';
  }
}

/// @nodoc
abstract mixin class $KbModelCopyWith<$Res>
    implements $ByteModelCopyWith<$Res> {
  factory $KbModelCopyWith(KbModel value, $Res Function(KbModel) _then) =
      _$KbModelCopyWithImpl;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$KbModelCopyWithImpl<$Res> implements $KbModelCopyWith<$Res> {
  _$KbModelCopyWithImpl(this._self, this._then);

  final KbModel _self;
  final $Res Function(KbModel) _then;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(KbModel(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class MbModel extends ByteModel {
  const MbModel(this.value) : super._();

  @override
  final double value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MbModelCopyWith<MbModel> get copyWith =>
      _$MbModelCopyWithImpl<MbModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MbModel &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ByteModel.mb(value: $value)';
  }
}

/// @nodoc
abstract mixin class $MbModelCopyWith<$Res>
    implements $ByteModelCopyWith<$Res> {
  factory $MbModelCopyWith(MbModel value, $Res Function(MbModel) _then) =
      _$MbModelCopyWithImpl;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$MbModelCopyWithImpl<$Res> implements $MbModelCopyWith<$Res> {
  _$MbModelCopyWithImpl(this._self, this._then);

  final MbModel _self;
  final $Res Function(MbModel) _then;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(MbModel(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class GbModel extends ByteModel {
  const GbModel(this.value) : super._();

  @override
  final double value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GbModelCopyWith<GbModel> get copyWith =>
      _$GbModelCopyWithImpl<GbModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GbModel &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ByteModel.gb(value: $value)';
  }
}

/// @nodoc
abstract mixin class $GbModelCopyWith<$Res>
    implements $ByteModelCopyWith<$Res> {
  factory $GbModelCopyWith(GbModel value, $Res Function(GbModel) _then) =
      _$GbModelCopyWithImpl;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$GbModelCopyWithImpl<$Res> implements $GbModelCopyWith<$Res> {
  _$GbModelCopyWithImpl(this._self, this._then);

  final GbModel _self;
  final $Res Function(GbModel) _then;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(GbModel(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class TbModel extends ByteModel {
  const TbModel(this.value) : super._();

  @override
  final double value;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TbModelCopyWith<TbModel> get copyWith =>
      _$TbModelCopyWithImpl<TbModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TbModel &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ByteModel.tb(value: $value)';
  }
}

/// @nodoc
abstract mixin class $TbModelCopyWith<$Res>
    implements $ByteModelCopyWith<$Res> {
  factory $TbModelCopyWith(TbModel value, $Res Function(TbModel) _then) =
      _$TbModelCopyWithImpl;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$TbModelCopyWithImpl<$Res> implements $TbModelCopyWith<$Res> {
  _$TbModelCopyWithImpl(this._self, this._then);

  final TbModel _self;
  final $Res Function(TbModel) _then;

  /// Create a copy of ByteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(TbModel(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
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
  /// Serializes this DartTypeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DartTypeModel);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DartTypeModel()';
  }
}

/// @nodoc
@JsonSerializable()
class StringData extends DartTypeModel {
  const StringData(this.value, {final String? $type})
      : $type = $type ?? 'string',
        super._();
  factory StringData.fromJson(Map<String, dynamic> json) =>
      _$StringDataFromJson(json);

  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StringDataCopyWith<StringData> get copyWith =>
      _$StringDataCopyWithImpl<StringData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StringDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StringData &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'DartTypeModel.string(value: $value)';
  }
}

/// @nodoc
abstract mixin class $StringDataCopyWith<$Res> {
  factory $StringDataCopyWith(
          StringData value, $Res Function(StringData) _then) =
      _$StringDataCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$StringDataCopyWithImpl<$Res> implements $StringDataCopyWith<$Res> {
  _$StringDataCopyWithImpl(this._self, this._then);

  final StringData _self;
  final $Res Function(StringData) _then;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(StringData(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class NumData extends DartTypeModel {
  const NumData(this.value, {final String? $type})
      : $type = $type ?? 'num',
        super._();
  factory NumData.fromJson(Map<String, dynamic> json) =>
      _$NumDataFromJson(json);

  final num value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NumDataCopyWith<NumData> get copyWith =>
      _$NumDataCopyWithImpl<NumData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NumDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NumData &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'DartTypeModel.num(value: $value)';
  }
}

/// @nodoc
abstract mixin class $NumDataCopyWith<$Res> {
  factory $NumDataCopyWith(NumData value, $Res Function(NumData) _then) =
      _$NumDataCopyWithImpl;
  @useResult
  $Res call({num value});
}

/// @nodoc
class _$NumDataCopyWithImpl<$Res> implements $NumDataCopyWith<$Res> {
  _$NumDataCopyWithImpl(this._self, this._then);

  final NumData _self;
  final $Res Function(NumData) _then;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(NumData(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BoolData extends DartTypeModel {
  const BoolData(this.value, {final String? $type})
      : $type = $type ?? 'bool',
        super._();
  factory BoolData.fromJson(Map<String, dynamic> json) =>
      _$BoolDataFromJson(json);

  final bool value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BoolDataCopyWith<BoolData> get copyWith =>
      _$BoolDataCopyWithImpl<BoolData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BoolDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BoolData &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'DartTypeModel.bool(value: $value)';
  }
}

/// @nodoc
abstract mixin class $BoolDataCopyWith<$Res> {
  factory $BoolDataCopyWith(BoolData value, $Res Function(BoolData) _then) =
      _$BoolDataCopyWithImpl;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class _$BoolDataCopyWithImpl<$Res> implements $BoolDataCopyWith<$Res> {
  _$BoolDataCopyWithImpl(this._self, this._then);

  final BoolData _self;
  final $Res Function(BoolData) _then;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(BoolData(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ListData extends DartTypeModel {
  const ListData(final List<dynamic> value, {final String? $type})
      : _value = value,
        $type = $type ?? 'list',
        super._();
  factory ListData.fromJson(Map<String, dynamic> json) =>
      _$ListDataFromJson(json);

  final List<dynamic> _value;
  List<dynamic> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListDataCopyWith<ListData> get copyWith =>
      _$ListDataCopyWithImpl<ListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ListDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListData &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  String toString() {
    return 'DartTypeModel.list(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ListDataCopyWith<$Res> {
  factory $ListDataCopyWith(ListData value, $Res Function(ListData) _then) =
      _$ListDataCopyWithImpl;
  @useResult
  $Res call({List<dynamic> value});
}

/// @nodoc
class _$ListDataCopyWithImpl<$Res> implements $ListDataCopyWith<$Res> {
  _$ListDataCopyWithImpl(this._self, this._then);

  final ListData _self;
  final $Res Function(ListData) _then;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(ListData(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class JsonData extends DartTypeModel {
  const JsonData(final Map<String, dynamic> value, {final String? $type})
      : _value = value,
        $type = $type ?? 'json',
        super._();
  factory JsonData.fromJson(Map<String, dynamic> json) =>
      _$JsonDataFromJson(json);

  final Map<String, dynamic> _value;
  Map<String, dynamic> get value {
    if (_value is EqualUnmodifiableMapView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JsonDataCopyWith<JsonData> get copyWith =>
      _$JsonDataCopyWithImpl<JsonData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JsonDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JsonData &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  String toString() {
    return 'DartTypeModel.json(value: $value)';
  }
}

/// @nodoc
abstract mixin class $JsonDataCopyWith<$Res> {
  factory $JsonDataCopyWith(JsonData value, $Res Function(JsonData) _then) =
      _$JsonDataCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> value});
}

/// @nodoc
class _$JsonDataCopyWithImpl<$Res> implements $JsonDataCopyWith<$Res> {
  _$JsonDataCopyWithImpl(this._self, this._then);

  final JsonData _self;
  final $Res Function(JsonData) _then;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(JsonData(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class DynamicData extends DartTypeModel {
  const DynamicData(this.value, {final String? $type})
      : $type = $type ?? 'dynamic',
        super._();
  factory DynamicData.fromJson(Map<String, dynamic> json) =>
      _$DynamicDataFromJson(json);

  final dynamic value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicDataCopyWith<DynamicData> get copyWith =>
      _$DynamicDataCopyWithImpl<DynamicData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DynamicDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicData &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'DartTypeModel.dynamic(value: $value)';
  }
}

/// @nodoc
abstract mixin class $DynamicDataCopyWith<$Res> {
  factory $DynamicDataCopyWith(
          DynamicData value, $Res Function(DynamicData) _then) =
      _$DynamicDataCopyWithImpl;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class _$DynamicDataCopyWithImpl<$Res> implements $DynamicDataCopyWith<$Res> {
  _$DynamicDataCopyWithImpl(this._self, this._then);

  final DynamicData _self;
  final $Res Function(DynamicData) _then;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(DynamicData(
      freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class NullData extends DartTypeModel {
  const NullData({final String? $type})
      : $type = $type ?? 'nil',
        super._();
  factory NullData.fromJson(Map<String, dynamic> json) =>
      _$NullDataFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$NullDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NullData);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DartTypeModel.nil()';
  }
}

/// @nodoc
@JsonSerializable()
class JsonStringData extends DartTypeModel {
  const JsonStringData(this.jsonString, {final String? $type})
      : $type = $type ?? 'jsonString',
        super._();
  factory JsonStringData.fromJson(Map<String, dynamic> json) =>
      _$JsonStringDataFromJson(json);

  final String jsonString;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JsonStringDataCopyWith<JsonStringData> get copyWith =>
      _$JsonStringDataCopyWithImpl<JsonStringData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JsonStringDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JsonStringData &&
            (identical(other.jsonString, jsonString) ||
                other.jsonString == jsonString));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jsonString);

  @override
  String toString() {
    return 'DartTypeModel.jsonString(jsonString: $jsonString)';
  }
}

/// @nodoc
abstract mixin class $JsonStringDataCopyWith<$Res> {
  factory $JsonStringDataCopyWith(
          JsonStringData value, $Res Function(JsonStringData) _then) =
      _$JsonStringDataCopyWithImpl;
  @useResult
  $Res call({String jsonString});
}

/// @nodoc
class _$JsonStringDataCopyWithImpl<$Res>
    implements $JsonStringDataCopyWith<$Res> {
  _$JsonStringDataCopyWithImpl(this._self, this._then);

  final JsonStringData _self;
  final $Res Function(JsonStringData) _then;

  /// Create a copy of DartTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jsonString = null,
  }) {
    return _then(JsonStringData(
      null == jsonString
          ? _self.jsonString
          : jsonString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ImageParams {
  double? get width;
  double? get height;
  double? get size;
  @igFreezedJson
  BoxFit? get fit;
  @igFreezedJson
  BorderRadius? get borderRadius;
  @igFreezedJson
  BoxShape? get shape;
  bool get enableMemoryCache;
  String? get heroTag;
  bool get isSelected;
  @igFreezedJson
  Widget? get errorWidget;
  @igFreezedJson
  VoidCallback? get onTap;
  @igFreezedJson
  Color? get color;
  bool get clearMemoryCacheIfFailed;
  bool get clearMemoryCacheWhenDispose;
  bool get gaplessPlayback;
  @igFreezedJson
  BlendMode? get colorBlendMode;
  FilterQuality get filterQuality; //---net
  double? get scale;
  Map<String, String> get headers;
  bool get cache;
  int get retries;
  @igFreezedJson
  Duration? get timeLimit;
  @igFreezedJson
  Duration get timeRetry;
  @igFreezedJson
  CancellationToken? get cancelToken;
  String? get cacheKey;
  bool get printError;
  bool get cacheRawData;
  String? get imageCacheName;
  @igFreezedJson
  Duration? get cacheMaxAge;
  int? get cacheWidth;
  int? get cacheHeight;
  double? get compressionRatio;
  int? get maxBytes;
  String? get package;
  @igFreezedJson
  AssetBundle? get bundle;
  @Doc(message: '自定义完成小部件')
  @igFreezedJson
  CustomCompletedWidget? get customCompletedWidget;
  @igFreezedJson
  Widget? get customLoadingWidget;
  @igFreezedJson
  InitEditorConfigHandler? get initEditorConfigHandler;
  @igFreezedJson
  Key? get extendedImageEditorKey;
  @igFreezedJson
  ExtendedImageMode? get mode;

  /// Create a copy of ImageParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImageParamsCopyWith<ImageParams> get copyWith =>
      _$ImageParamsCopyWithImpl<ImageParams>(this as ImageParams, _$identity);

  /// Serializes this ImageParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageParams &&
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
            (identical(
                    other.clearMemoryCacheIfFailed, clearMemoryCacheIfFailed) ||
                other.clearMemoryCacheIfFailed == clearMemoryCacheIfFailed) &&
            (identical(other.clearMemoryCacheWhenDispose, clearMemoryCacheWhenDispose) ||
                other.clearMemoryCacheWhenDispose ==
                    clearMemoryCacheWhenDispose) &&
            (identical(other.gaplessPlayback, gaplessPlayback) ||
                other.gaplessPlayback == gaplessPlayback) &&
            (identical(other.colorBlendMode, colorBlendMode) ||
                other.colorBlendMode == colorBlendMode) &&
            (identical(other.filterQuality, filterQuality) ||
                other.filterQuality == filterQuality) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            const DeepCollectionEquality().equals(other.headers, headers) &&
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
        filterQuality,
        scale,
        const DeepCollectionEquality().hash(headers),
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

  @override
  String toString() {
    return 'ImageParams(width: $width, height: $height, size: $size, fit: $fit, borderRadius: $borderRadius, shape: $shape, enableMemoryCache: $enableMemoryCache, heroTag: $heroTag, isSelected: $isSelected, errorWidget: $errorWidget, onTap: $onTap, color: $color, clearMemoryCacheIfFailed: $clearMemoryCacheIfFailed, clearMemoryCacheWhenDispose: $clearMemoryCacheWhenDispose, gaplessPlayback: $gaplessPlayback, colorBlendMode: $colorBlendMode, filterQuality: $filterQuality, scale: $scale, headers: $headers, cache: $cache, retries: $retries, timeLimit: $timeLimit, timeRetry: $timeRetry, cancelToken: $cancelToken, cacheKey: $cacheKey, printError: $printError, cacheRawData: $cacheRawData, imageCacheName: $imageCacheName, cacheMaxAge: $cacheMaxAge, cacheWidth: $cacheWidth, cacheHeight: $cacheHeight, compressionRatio: $compressionRatio, maxBytes: $maxBytes, package: $package, bundle: $bundle, customCompletedWidget: $customCompletedWidget, customLoadingWidget: $customLoadingWidget, initEditorConfigHandler: $initEditorConfigHandler, extendedImageEditorKey: $extendedImageEditorKey, mode: $mode)';
  }
}

/// @nodoc
abstract mixin class $ImageParamsCopyWith<$Res> {
  factory $ImageParamsCopyWith(
          ImageParams value, $Res Function(ImageParams) _then) =
      _$ImageParamsCopyWithImpl;
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
      FilterQuality filterQuality,
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
class _$ImageParamsCopyWithImpl<$Res> implements $ImageParamsCopyWith<$Res> {
  _$ImageParamsCopyWithImpl(this._self, this._then);

  final ImageParams _self;
  final $Res Function(ImageParams) _then;

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
    Object? filterQuality = null,
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
    return _then(_self.copyWith(
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      fit: freezed == fit
          ? _self.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadius?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape?,
      enableMemoryCache: null == enableMemoryCache
          ? _self.enableMemoryCache
          : enableMemoryCache // ignore: cast_nullable_to_non_nullable
              as bool,
      heroTag: freezed == heroTag
          ? _self.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: null == isSelected
          ? _self.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWidget: freezed == errorWidget
          ? _self.errorWidget
          : errorWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      onTap: freezed == onTap
          ? _self.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      clearMemoryCacheIfFailed: null == clearMemoryCacheIfFailed
          ? _self.clearMemoryCacheIfFailed
          : clearMemoryCacheIfFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      clearMemoryCacheWhenDispose: null == clearMemoryCacheWhenDispose
          ? _self.clearMemoryCacheWhenDispose
          : clearMemoryCacheWhenDispose // ignore: cast_nullable_to_non_nullable
              as bool,
      gaplessPlayback: null == gaplessPlayback
          ? _self.gaplessPlayback
          : gaplessPlayback // ignore: cast_nullable_to_non_nullable
              as bool,
      colorBlendMode: freezed == colorBlendMode
          ? _self.colorBlendMode
          : colorBlendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode?,
      filterQuality: null == filterQuality
          ? _self.filterQuality
          : filterQuality // ignore: cast_nullable_to_non_nullable
              as FilterQuality,
      scale: freezed == scale
          ? _self.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double?,
      headers: null == headers
          ? _self.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      cache: null == cache
          ? _self.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as bool,
      retries: null == retries
          ? _self.retries
          : retries // ignore: cast_nullable_to_non_nullable
              as int,
      timeLimit: freezed == timeLimit
          ? _self.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as Duration?,
      timeRetry: null == timeRetry
          ? _self.timeRetry
          : timeRetry // ignore: cast_nullable_to_non_nullable
              as Duration,
      cancelToken: freezed == cancelToken
          ? _self.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancellationToken?,
      cacheKey: freezed == cacheKey
          ? _self.cacheKey
          : cacheKey // ignore: cast_nullable_to_non_nullable
              as String?,
      printError: null == printError
          ? _self.printError
          : printError // ignore: cast_nullable_to_non_nullable
              as bool,
      cacheRawData: null == cacheRawData
          ? _self.cacheRawData
          : cacheRawData // ignore: cast_nullable_to_non_nullable
              as bool,
      imageCacheName: freezed == imageCacheName
          ? _self.imageCacheName
          : imageCacheName // ignore: cast_nullable_to_non_nullable
              as String?,
      cacheMaxAge: freezed == cacheMaxAge
          ? _self.cacheMaxAge
          : cacheMaxAge // ignore: cast_nullable_to_non_nullable
              as Duration?,
      cacheWidth: freezed == cacheWidth
          ? _self.cacheWidth
          : cacheWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      cacheHeight: freezed == cacheHeight
          ? _self.cacheHeight
          : cacheHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      compressionRatio: freezed == compressionRatio
          ? _self.compressionRatio
          : compressionRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      maxBytes: freezed == maxBytes
          ? _self.maxBytes
          : maxBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      package: freezed == package
          ? _self.package
          : package // ignore: cast_nullable_to_non_nullable
              as String?,
      bundle: freezed == bundle
          ? _self.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as AssetBundle?,
      customCompletedWidget: freezed == customCompletedWidget
          ? _self.customCompletedWidget
          : customCompletedWidget // ignore: cast_nullable_to_non_nullable
              as CustomCompletedWidget?,
      customLoadingWidget: freezed == customLoadingWidget
          ? _self.customLoadingWidget
          : customLoadingWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      initEditorConfigHandler: freezed == initEditorConfigHandler
          ? _self.initEditorConfigHandler
          : initEditorConfigHandler // ignore: cast_nullable_to_non_nullable
              as InitEditorConfigHandler?,
      extendedImageEditorKey: freezed == extendedImageEditorKey
          ? _self.extendedImageEditorKey
          : extendedImageEditorKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      mode: freezed == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ExtendedImageMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ImageParams extends ImageParams {
  const _ImageParams(
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
      this.filterQuality = FilterQuality.medium,
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
  factory _ImageParams.fromJson(Map<String, dynamic> json) =>
      _$ImageParamsFromJson(json);

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
  @override
  @JsonKey()
  final FilterQuality filterQuality;
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

  /// Create a copy of ImageParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ImageParamsCopyWith<_ImageParams> get copyWith =>
      __$ImageParamsCopyWithImpl<_ImageParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ImageParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageParams &&
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
            (identical(
                    other.clearMemoryCacheIfFailed, clearMemoryCacheIfFailed) ||
                other.clearMemoryCacheIfFailed == clearMemoryCacheIfFailed) &&
            (identical(other.clearMemoryCacheWhenDispose, clearMemoryCacheWhenDispose) ||
                other.clearMemoryCacheWhenDispose ==
                    clearMemoryCacheWhenDispose) &&
            (identical(other.gaplessPlayback, gaplessPlayback) ||
                other.gaplessPlayback == gaplessPlayback) &&
            (identical(other.colorBlendMode, colorBlendMode) ||
                other.colorBlendMode == colorBlendMode) &&
            (identical(other.filterQuality, filterQuality) ||
                other.filterQuality == filterQuality) &&
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
        filterQuality,
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

  @override
  String toString() {
    return 'ImageParams(width: $width, height: $height, size: $size, fit: $fit, borderRadius: $borderRadius, shape: $shape, enableMemoryCache: $enableMemoryCache, heroTag: $heroTag, isSelected: $isSelected, errorWidget: $errorWidget, onTap: $onTap, color: $color, clearMemoryCacheIfFailed: $clearMemoryCacheIfFailed, clearMemoryCacheWhenDispose: $clearMemoryCacheWhenDispose, gaplessPlayback: $gaplessPlayback, colorBlendMode: $colorBlendMode, filterQuality: $filterQuality, scale: $scale, headers: $headers, cache: $cache, retries: $retries, timeLimit: $timeLimit, timeRetry: $timeRetry, cancelToken: $cancelToken, cacheKey: $cacheKey, printError: $printError, cacheRawData: $cacheRawData, imageCacheName: $imageCacheName, cacheMaxAge: $cacheMaxAge, cacheWidth: $cacheWidth, cacheHeight: $cacheHeight, compressionRatio: $compressionRatio, maxBytes: $maxBytes, package: $package, bundle: $bundle, customCompletedWidget: $customCompletedWidget, customLoadingWidget: $customLoadingWidget, initEditorConfigHandler: $initEditorConfigHandler, extendedImageEditorKey: $extendedImageEditorKey, mode: $mode)';
  }
}

/// @nodoc
abstract mixin class _$ImageParamsCopyWith<$Res>
    implements $ImageParamsCopyWith<$Res> {
  factory _$ImageParamsCopyWith(
          _ImageParams value, $Res Function(_ImageParams) _then) =
      __$ImageParamsCopyWithImpl;
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
      FilterQuality filterQuality,
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
class __$ImageParamsCopyWithImpl<$Res> implements _$ImageParamsCopyWith<$Res> {
  __$ImageParamsCopyWithImpl(this._self, this._then);

  final _ImageParams _self;
  final $Res Function(_ImageParams) _then;

  /// Create a copy of ImageParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? filterQuality = null,
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
    return _then(_ImageParams(
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      fit: freezed == fit
          ? _self.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit?,
      borderRadius: freezed == borderRadius
          ? _self.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadius?,
      shape: freezed == shape
          ? _self.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as BoxShape?,
      enableMemoryCache: null == enableMemoryCache
          ? _self.enableMemoryCache
          : enableMemoryCache // ignore: cast_nullable_to_non_nullable
              as bool,
      heroTag: freezed == heroTag
          ? _self.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: null == isSelected
          ? _self.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWidget: freezed == errorWidget
          ? _self.errorWidget
          : errorWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      onTap: freezed == onTap
          ? _self.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      clearMemoryCacheIfFailed: null == clearMemoryCacheIfFailed
          ? _self.clearMemoryCacheIfFailed
          : clearMemoryCacheIfFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      clearMemoryCacheWhenDispose: null == clearMemoryCacheWhenDispose
          ? _self.clearMemoryCacheWhenDispose
          : clearMemoryCacheWhenDispose // ignore: cast_nullable_to_non_nullable
              as bool,
      gaplessPlayback: null == gaplessPlayback
          ? _self.gaplessPlayback
          : gaplessPlayback // ignore: cast_nullable_to_non_nullable
              as bool,
      colorBlendMode: freezed == colorBlendMode
          ? _self.colorBlendMode
          : colorBlendMode // ignore: cast_nullable_to_non_nullable
              as BlendMode?,
      filterQuality: null == filterQuality
          ? _self.filterQuality
          : filterQuality // ignore: cast_nullable_to_non_nullable
              as FilterQuality,
      scale: freezed == scale
          ? _self.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double?,
      headers: null == headers
          ? _self._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      cache: null == cache
          ? _self.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as bool,
      retries: null == retries
          ? _self.retries
          : retries // ignore: cast_nullable_to_non_nullable
              as int,
      timeLimit: freezed == timeLimit
          ? _self.timeLimit
          : timeLimit // ignore: cast_nullable_to_non_nullable
              as Duration?,
      timeRetry: null == timeRetry
          ? _self.timeRetry
          : timeRetry // ignore: cast_nullable_to_non_nullable
              as Duration,
      cancelToken: freezed == cancelToken
          ? _self.cancelToken
          : cancelToken // ignore: cast_nullable_to_non_nullable
              as CancellationToken?,
      cacheKey: freezed == cacheKey
          ? _self.cacheKey
          : cacheKey // ignore: cast_nullable_to_non_nullable
              as String?,
      printError: null == printError
          ? _self.printError
          : printError // ignore: cast_nullable_to_non_nullable
              as bool,
      cacheRawData: null == cacheRawData
          ? _self.cacheRawData
          : cacheRawData // ignore: cast_nullable_to_non_nullable
              as bool,
      imageCacheName: freezed == imageCacheName
          ? _self.imageCacheName
          : imageCacheName // ignore: cast_nullable_to_non_nullable
              as String?,
      cacheMaxAge: freezed == cacheMaxAge
          ? _self.cacheMaxAge
          : cacheMaxAge // ignore: cast_nullable_to_non_nullable
              as Duration?,
      cacheWidth: freezed == cacheWidth
          ? _self.cacheWidth
          : cacheWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      cacheHeight: freezed == cacheHeight
          ? _self.cacheHeight
          : cacheHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      compressionRatio: freezed == compressionRatio
          ? _self.compressionRatio
          : compressionRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      maxBytes: freezed == maxBytes
          ? _self.maxBytes
          : maxBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      package: freezed == package
          ? _self.package
          : package // ignore: cast_nullable_to_non_nullable
              as String?,
      bundle: freezed == bundle
          ? _self.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as AssetBundle?,
      customCompletedWidget: freezed == customCompletedWidget
          ? _self.customCompletedWidget
          : customCompletedWidget // ignore: cast_nullable_to_non_nullable
              as CustomCompletedWidget?,
      customLoadingWidget: freezed == customLoadingWidget
          ? _self.customLoadingWidget
          : customLoadingWidget // ignore: cast_nullable_to_non_nullable
              as Widget?,
      initEditorConfigHandler: freezed == initEditorConfigHandler
          ? _self.initEditorConfigHandler
          : initEditorConfigHandler // ignore: cast_nullable_to_non_nullable
              as InitEditorConfigHandler?,
      extendedImageEditorKey: freezed == extendedImageEditorKey
          ? _self.extendedImageEditorKey
          : extendedImageEditorKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      mode: freezed == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ExtendedImageMode?,
    ));
  }
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
  ImageParams get params;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyImageCopyWith<MyImage> get copyWith =>
      _$MyImageCopyWithImpl<MyImage>(this as MyImage, _$identity);

  /// Serializes this MyImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyImage &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'MyImage(params: $params)';
  }
}

/// @nodoc
abstract mixin class $MyImageCopyWith<$Res> {
  factory $MyImageCopyWith(MyImage value, $Res Function(MyImage) _then) =
      _$MyImageCopyWithImpl;
  @useResult
  $Res call({ImageParams params});

  $ImageParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$MyImageCopyWithImpl<$Res> implements $MyImageCopyWith<$Res> {
  _$MyImageCopyWithImpl(this._self, this._then);

  final MyImage _self;
  final $Res Function(MyImage) _then;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_self.copyWith(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as ImageParams,
    ));
  }

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageParamsCopyWith<$Res> get params {
    return $ImageParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MyNetworkImage extends MyImage {
  MyNetworkImage(
      {required this.url,
      this.params = const ImageParams(),
      final String? $type})
      : $type = $type ?? 'network',
        super._();
  factory MyNetworkImage.fromJson(Map<String, dynamic> json) =>
      _$MyNetworkImageFromJson(json);

  final String url;
  @override
  @JsonKey()
  final ImageParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyNetworkImageCopyWith<MyNetworkImage> get copyWith =>
      _$MyNetworkImageCopyWithImpl<MyNetworkImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyNetworkImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyNetworkImage &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, params);

  @override
  String toString() {
    return 'MyImage.network(url: $url, params: $params)';
  }
}

/// @nodoc
abstract mixin class $MyNetworkImageCopyWith<$Res>
    implements $MyImageCopyWith<$Res> {
  factory $MyNetworkImageCopyWith(
          MyNetworkImage value, $Res Function(MyNetworkImage) _then) =
      _$MyNetworkImageCopyWithImpl;
  @override
  @useResult
  $Res call({String url, ImageParams params});

  @override
  $ImageParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$MyNetworkImageCopyWithImpl<$Res>
    implements $MyNetworkImageCopyWith<$Res> {
  _$MyNetworkImageCopyWithImpl(this._self, this._then);

  final MyNetworkImage _self;
  final $Res Function(MyNetworkImage) _then;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? params = null,
  }) {
    return _then(MyNetworkImage(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as ImageParams,
    ));
  }

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageParamsCopyWith<$Res> get params {
    return $ImageParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MyBase64Image extends MyImage {
  MyBase64Image(
      {required this.base64Code,
      this.params = const ImageParams(),
      final String? $type})
      : $type = $type ?? 'base64',
        super._();
  factory MyBase64Image.fromJson(Map<String, dynamic> json) =>
      _$MyBase64ImageFromJson(json);

  final String base64Code;
  @override
  @JsonKey()
  final ImageParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyBase64ImageCopyWith<MyBase64Image> get copyWith =>
      _$MyBase64ImageCopyWithImpl<MyBase64Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyBase64ImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyBase64Image &&
            (identical(other.base64Code, base64Code) ||
                other.base64Code == base64Code) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base64Code, params);

  @override
  String toString() {
    return 'MyImage.base64(base64Code: $base64Code, params: $params)';
  }
}

/// @nodoc
abstract mixin class $MyBase64ImageCopyWith<$Res>
    implements $MyImageCopyWith<$Res> {
  factory $MyBase64ImageCopyWith(
          MyBase64Image value, $Res Function(MyBase64Image) _then) =
      _$MyBase64ImageCopyWithImpl;
  @override
  @useResult
  $Res call({String base64Code, ImageParams params});

  @override
  $ImageParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$MyBase64ImageCopyWithImpl<$Res>
    implements $MyBase64ImageCopyWith<$Res> {
  _$MyBase64ImageCopyWithImpl(this._self, this._then);

  final MyBase64Image _self;
  final $Res Function(MyBase64Image) _then;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? base64Code = null,
    Object? params = null,
  }) {
    return _then(MyBase64Image(
      base64Code: null == base64Code
          ? _self.base64Code
          : base64Code // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as ImageParams,
    ));
  }

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageParamsCopyWith<$Res> get params {
    return $ImageParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MyFilePathImage extends MyImage {
  MyFilePathImage(
      {required this.filePath,
      this.params = const ImageParams(),
      final String? $type})
      : $type = $type ?? 'filePath',
        super._();
  factory MyFilePathImage.fromJson(Map<String, dynamic> json) =>
      _$MyFilePathImageFromJson(json);

  final String filePath;
  @override
  @JsonKey()
  final ImageParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyFilePathImageCopyWith<MyFilePathImage> get copyWith =>
      _$MyFilePathImageCopyWithImpl<MyFilePathImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyFilePathImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyFilePathImage &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filePath, params);

  @override
  String toString() {
    return 'MyImage.filePath(filePath: $filePath, params: $params)';
  }
}

/// @nodoc
abstract mixin class $MyFilePathImageCopyWith<$Res>
    implements $MyImageCopyWith<$Res> {
  factory $MyFilePathImageCopyWith(
          MyFilePathImage value, $Res Function(MyFilePathImage) _then) =
      _$MyFilePathImageCopyWithImpl;
  @override
  @useResult
  $Res call({String filePath, ImageParams params});

  @override
  $ImageParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$MyFilePathImageCopyWithImpl<$Res>
    implements $MyFilePathImageCopyWith<$Res> {
  _$MyFilePathImageCopyWithImpl(this._self, this._then);

  final MyFilePathImage _self;
  final $Res Function(MyFilePathImage) _then;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filePath = null,
    Object? params = null,
  }) {
    return _then(MyFilePathImage(
      filePath: null == filePath
          ? _self.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as ImageParams,
    ));
  }

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageParamsCopyWith<$Res> get params {
    return $ImageParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MyAssetImage extends MyImage {
  MyAssetImage(
      {required this.assetPath,
      this.params = const ImageParams(),
      final String? $type})
      : $type = $type ?? 'asset',
        super._();
  factory MyAssetImage.fromJson(Map<String, dynamic> json) =>
      _$MyAssetImageFromJson(json);

  final String assetPath;
  @override
  @JsonKey()
  final ImageParams params;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyAssetImageCopyWith<MyAssetImage> get copyWith =>
      _$MyAssetImageCopyWithImpl<MyAssetImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyAssetImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyAssetImage &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, assetPath, params);

  @override
  String toString() {
    return 'MyImage.asset(assetPath: $assetPath, params: $params)';
  }
}

/// @nodoc
abstract mixin class $MyAssetImageCopyWith<$Res>
    implements $MyImageCopyWith<$Res> {
  factory $MyAssetImageCopyWith(
          MyAssetImage value, $Res Function(MyAssetImage) _then) =
      _$MyAssetImageCopyWithImpl;
  @override
  @useResult
  $Res call({String assetPath, ImageParams params});

  @override
  $ImageParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$MyAssetImageCopyWithImpl<$Res> implements $MyAssetImageCopyWith<$Res> {
  _$MyAssetImageCopyWithImpl(this._self, this._then);

  final MyAssetImage _self;
  final $Res Function(MyAssetImage) _then;

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? assetPath = null,
    Object? params = null,
  }) {
    return _then(MyAssetImage(
      assetPath: null == assetPath
          ? _self.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String,
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as ImageParams,
    ));
  }

  /// Create a copy of MyImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageParamsCopyWith<$Res> get params {
    return $ImageParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc
mixin _$MyPlatform {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MyPlatform);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlatform()';
  }
}

/// @nodoc

class AndroidPlatform implements MyPlatform {
  const AndroidPlatform();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AndroidPlatform);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlatform.android()';
  }
}

/// @nodoc

class IosPlatform implements MyPlatform {
  const IosPlatform();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IosPlatform);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlatform.ios()';
  }
}

/// @nodoc

class MacosPlatform implements MyPlatform {
  const MacosPlatform();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MacosPlatform);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlatform.macos()';
  }
}

/// @nodoc

class WebPlatform implements MyPlatform {
  const WebPlatform();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WebPlatform);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlatform.web()';
  }
}

/// @nodoc

class LinuxPlatform implements MyPlatform {
  const LinuxPlatform();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LinuxPlatform);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlatform.linux()';
  }
}

/// @nodoc

class WindowsPlatform implements MyPlatform {
  const WindowsPlatform();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WindowsPlatform);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlatform.windows()';
  }
}

/// @nodoc

class FuchsiaPlatform implements MyPlatform {
  const FuchsiaPlatform();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FuchsiaPlatform);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlatform.fuchsia()';
  }
}

/// @nodoc
mixin _$PictureSelectionI18nConfig {
  @JsonKey(name: 'photoAlbumMenuText')
  String get photoAlbumMenuText;
  String get goShootText;

  /// Create a copy of PictureSelectionI18nConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PictureSelectionI18nConfigCopyWith<PictureSelectionI18nConfig>
      get copyWith =>
          _$PictureSelectionI18nConfigCopyWithImpl<PictureSelectionI18nConfig>(
              this as PictureSelectionI18nConfig, _$identity);

  /// Serializes this PictureSelectionI18nConfig to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PictureSelectionI18nConfig &&
            (identical(other.photoAlbumMenuText, photoAlbumMenuText) ||
                other.photoAlbumMenuText == photoAlbumMenuText) &&
            (identical(other.goShootText, goShootText) ||
                other.goShootText == goShootText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, photoAlbumMenuText, goShootText);

  @override
  String toString() {
    return 'PictureSelectionI18nConfig(photoAlbumMenuText: $photoAlbumMenuText, goShootText: $goShootText)';
  }
}

/// @nodoc
abstract mixin class $PictureSelectionI18nConfigCopyWith<$Res> {
  factory $PictureSelectionI18nConfigCopyWith(PictureSelectionI18nConfig value,
          $Res Function(PictureSelectionI18nConfig) _then) =
      _$PictureSelectionI18nConfigCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'photoAlbumMenuText') String photoAlbumMenuText,
      String goShootText});
}

/// @nodoc
class _$PictureSelectionI18nConfigCopyWithImpl<$Res>
    implements $PictureSelectionI18nConfigCopyWith<$Res> {
  _$PictureSelectionI18nConfigCopyWithImpl(this._self, this._then);

  final PictureSelectionI18nConfig _self;
  final $Res Function(PictureSelectionI18nConfig) _then;

  /// Create a copy of PictureSelectionI18nConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoAlbumMenuText = null,
    Object? goShootText = null,
  }) {
    return _then(_self.copyWith(
      photoAlbumMenuText: null == photoAlbumMenuText
          ? _self.photoAlbumMenuText
          : photoAlbumMenuText // ignore: cast_nullable_to_non_nullable
              as String,
      goShootText: null == goShootText
          ? _self.goShootText
          : goShootText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PictureSelectionI18nConfig extends PictureSelectionI18nConfig {
  const _PictureSelectionI18nConfig(
      {@JsonKey(name: 'photoAlbumMenuText') this.photoAlbumMenuText = '相册',
      this.goShootText = '去拍摄'})
      : super._();
  factory _PictureSelectionI18nConfig.fromJson(Map<String, dynamic> json) =>
      _$PictureSelectionI18nConfigFromJson(json);

  @override
  @JsonKey(name: 'photoAlbumMenuText')
  final String photoAlbumMenuText;
  @override
  @JsonKey()
  final String goShootText;

  /// Create a copy of PictureSelectionI18nConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PictureSelectionI18nConfigCopyWith<_PictureSelectionI18nConfig>
      get copyWith => __$PictureSelectionI18nConfigCopyWithImpl<
          _PictureSelectionI18nConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PictureSelectionI18nConfigToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PictureSelectionI18nConfig &&
            (identical(other.photoAlbumMenuText, photoAlbumMenuText) ||
                other.photoAlbumMenuText == photoAlbumMenuText) &&
            (identical(other.goShootText, goShootText) ||
                other.goShootText == goShootText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, photoAlbumMenuText, goShootText);

  @override
  String toString() {
    return 'PictureSelectionI18nConfig(photoAlbumMenuText: $photoAlbumMenuText, goShootText: $goShootText)';
  }
}

/// @nodoc
abstract mixin class _$PictureSelectionI18nConfigCopyWith<$Res>
    implements $PictureSelectionI18nConfigCopyWith<$Res> {
  factory _$PictureSelectionI18nConfigCopyWith(
          _PictureSelectionI18nConfig value,
          $Res Function(_PictureSelectionI18nConfig) _then) =
      __$PictureSelectionI18nConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'photoAlbumMenuText') String photoAlbumMenuText,
      String goShootText});
}

/// @nodoc
class __$PictureSelectionI18nConfigCopyWithImpl<$Res>
    implements _$PictureSelectionI18nConfigCopyWith<$Res> {
  __$PictureSelectionI18nConfigCopyWithImpl(this._self, this._then);

  final _PictureSelectionI18nConfig _self;
  final $Res Function(_PictureSelectionI18nConfig) _then;

  /// Create a copy of PictureSelectionI18nConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? photoAlbumMenuText = null,
    Object? goShootText = null,
  }) {
    return _then(_PictureSelectionI18nConfig(
      photoAlbumMenuText: null == photoAlbumMenuText
          ? _self.photoAlbumMenuText
          : photoAlbumMenuText // ignore: cast_nullable_to_non_nullable
              as String,
      goShootText: null == goShootText
          ? _self.goShootText
          : goShootText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$PictureSelectionItemModel {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PictureSelectionItemModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PictureSelectionItemModel()';
  }
}

/// @nodoc

class XXFile extends PictureSelectionItemModel {
  XXFile({required this.file}) : super._();

  final File file;

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $XXFileCopyWith<XXFile> get copyWith =>
      _$XXFileCopyWithImpl<XXFile>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XXFile &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @override
  String toString() {
    return 'PictureSelectionItemModel.file(file: $file)';
  }
}

/// @nodoc
abstract mixin class $XXFileCopyWith<$Res> {
  factory $XXFileCopyWith(XXFile value, $Res Function(XXFile) _then) =
      _$XXFileCopyWithImpl;
  @useResult
  $Res call({File file});
}

/// @nodoc
class _$XXFileCopyWithImpl<$Res> implements $XXFileCopyWith<$Res> {
  _$XXFileCopyWithImpl(this._self, this._then);

  final XXFile _self;
  final $Res Function(XXFile) _then;

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? file = null,
  }) {
    return _then(XXFile(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class XXImage extends PictureSelectionItemModel {
  XXImage({required this.url}) : super._();

  final String url;

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $XXImageCopyWith<XXImage> get copyWith =>
      _$XXImageCopyWithImpl<XXImage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XXImage &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @override
  String toString() {
    return 'PictureSelectionItemModel.network(url: $url)';
  }
}

/// @nodoc
abstract mixin class $XXImageCopyWith<$Res> {
  factory $XXImageCopyWith(XXImage value, $Res Function(XXImage) _then) =
      _$XXImageCopyWithImpl;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$XXImageCopyWithImpl<$Res> implements $XXImageCopyWith<$Res> {
  _$XXImageCopyWithImpl(this._self, this._then);

  final XXImage _self;
  final $Res Function(XXImage) _then;

  /// Create a copy of PictureSelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
  }) {
    return _then(XXImage(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
