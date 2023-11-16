// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      throw CheckedFromJsonException(
          json, 'runtimeType', 'BaseApiException', 'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BaseApiException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)
        badResponse,
    required TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) StackTrace? stackTrace)
        businessException,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult? Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value) connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value) badCertificate,
    required TResult Function(BaseApiConnectionErrorException value) connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
    TResult Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
    TResult Function(BaseApiSendTimeoutException value)? sendTimeout,
    TResult Function(BaseApiReceiveTimeoutException value)? receiveTimeout,
    TResult Function(BaseApiBadCertificateException value)? badCertificate,
    TResult Function(BaseApiConnectionErrorException value)? connectionError,
    TResult Function(BaseApiBadResponseException value)? badResponse,
    TResult Function(BaseApiBusinessException value)? businessException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseApiExceptionCopyWith<$Res> {
  factory $BaseApiExceptionCopyWith(BaseApiException value, $Res Function(BaseApiException) then) =
      _$BaseApiExceptionCopyWithImpl<$Res, BaseApiException>;
}

/// @nodoc
class _$BaseApiExceptionCopyWithImpl<$Res, $Val extends BaseApiException> implements $BaseApiExceptionCopyWith<$Res> {
  _$BaseApiExceptionCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BaseApiCancelExceptionImplCopyWith<$Res> {
  factory _$$BaseApiCancelExceptionImplCopyWith(
          _$BaseApiCancelExceptionImpl value, $Res Function(_$BaseApiCancelExceptionImpl) then) =
      __$$BaseApiCancelExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiCancelExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res, _$BaseApiCancelExceptionImpl>
    implements _$$BaseApiCancelExceptionImplCopyWith<$Res> {
  __$$BaseApiCancelExceptionImplCopyWithImpl(
      _$BaseApiCancelExceptionImpl _value, $Res Function(_$BaseApiCancelExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BaseApiCancelExceptionImpl extends BaseApiCancelException {
  const _$BaseApiCancelExceptionImpl({final String? $type})
      : $type = $type ?? 'cancel',
        super._();

  factory _$BaseApiCancelExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseApiCancelExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.cancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BaseApiCancelExceptionImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)
        badResponse,
    required TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) StackTrace? stackTrace)
        businessException,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult? Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
  }) {
    return cancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseApiCancelException value) cancel,
    required TResult Function(BaseApiConnectionTimeoutException value) connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value) badCertificate,
    required TResult Function(BaseApiConnectionErrorException value) connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
    TResult Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
  const factory BaseApiCancelException() = _$BaseApiCancelExceptionImpl;
  const BaseApiCancelException._() : super._();

  factory BaseApiCancelException.fromJson(Map<String, dynamic> json) = _$BaseApiCancelExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiConnectionTimeoutExceptionImplCopyWith<$Res> {
  factory _$$BaseApiConnectionTimeoutExceptionImplCopyWith(
          _$BaseApiConnectionTimeoutExceptionImpl value, $Res Function(_$BaseApiConnectionTimeoutExceptionImpl) then) =
      __$$BaseApiConnectionTimeoutExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiConnectionTimeoutExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res, _$BaseApiConnectionTimeoutExceptionImpl>
    implements _$$BaseApiConnectionTimeoutExceptionImplCopyWith<$Res> {
  __$$BaseApiConnectionTimeoutExceptionImplCopyWithImpl(
      _$BaseApiConnectionTimeoutExceptionImpl _value, $Res Function(_$BaseApiConnectionTimeoutExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BaseApiConnectionTimeoutExceptionImpl extends BaseApiConnectionTimeoutException {
  const _$BaseApiConnectionTimeoutExceptionImpl({final String? $type})
      : $type = $type ?? 'connectionTimeout',
        super._();

  factory _$BaseApiConnectionTimeoutExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseApiConnectionTimeoutExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.connectionTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BaseApiConnectionTimeoutExceptionImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)
        badResponse,
    required TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) StackTrace? stackTrace)
        businessException,
  }) {
    return connectionTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult? Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
  }) {
    return connectionTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
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
    required TResult Function(BaseApiConnectionTimeoutException value) connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value) badCertificate,
    required TResult Function(BaseApiConnectionErrorException value) connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return connectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
    TResult Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
  const factory BaseApiConnectionTimeoutException() = _$BaseApiConnectionTimeoutExceptionImpl;
  const BaseApiConnectionTimeoutException._() : super._();

  factory BaseApiConnectionTimeoutException.fromJson(Map<String, dynamic> json) =
      _$BaseApiConnectionTimeoutExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiSendTimeoutExceptionImplCopyWith<$Res> {
  factory _$$BaseApiSendTimeoutExceptionImplCopyWith(
          _$BaseApiSendTimeoutExceptionImpl value, $Res Function(_$BaseApiSendTimeoutExceptionImpl) then) =
      __$$BaseApiSendTimeoutExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiSendTimeoutExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res, _$BaseApiSendTimeoutExceptionImpl>
    implements _$$BaseApiSendTimeoutExceptionImplCopyWith<$Res> {
  __$$BaseApiSendTimeoutExceptionImplCopyWithImpl(
      _$BaseApiSendTimeoutExceptionImpl _value, $Res Function(_$BaseApiSendTimeoutExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BaseApiSendTimeoutExceptionImpl extends BaseApiSendTimeoutException {
  const _$BaseApiSendTimeoutExceptionImpl({final String? $type})
      : $type = $type ?? 'sendTimeout',
        super._();

  factory _$BaseApiSendTimeoutExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseApiSendTimeoutExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.sendTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BaseApiSendTimeoutExceptionImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)
        badResponse,
    required TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) StackTrace? stackTrace)
        businessException,
  }) {
    return sendTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult? Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
  }) {
    return sendTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
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
    required TResult Function(BaseApiConnectionTimeoutException value) connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value) badCertificate,
    required TResult Function(BaseApiConnectionErrorException value) connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return sendTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
    TResult Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
  const factory BaseApiSendTimeoutException() = _$BaseApiSendTimeoutExceptionImpl;
  const BaseApiSendTimeoutException._() : super._();

  factory BaseApiSendTimeoutException.fromJson(Map<String, dynamic> json) = _$BaseApiSendTimeoutExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiReceiveTimeoutExceptionImplCopyWith<$Res> {
  factory _$$BaseApiReceiveTimeoutExceptionImplCopyWith(
          _$BaseApiReceiveTimeoutExceptionImpl value, $Res Function(_$BaseApiReceiveTimeoutExceptionImpl) then) =
      __$$BaseApiReceiveTimeoutExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiReceiveTimeoutExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res, _$BaseApiReceiveTimeoutExceptionImpl>
    implements _$$BaseApiReceiveTimeoutExceptionImplCopyWith<$Res> {
  __$$BaseApiReceiveTimeoutExceptionImplCopyWithImpl(
      _$BaseApiReceiveTimeoutExceptionImpl _value, $Res Function(_$BaseApiReceiveTimeoutExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BaseApiReceiveTimeoutExceptionImpl extends BaseApiReceiveTimeoutException {
  const _$BaseApiReceiveTimeoutExceptionImpl({final String? $type})
      : $type = $type ?? 'receiveTimeout',
        super._();

  factory _$BaseApiReceiveTimeoutExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseApiReceiveTimeoutExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.receiveTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BaseApiReceiveTimeoutExceptionImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)
        badResponse,
    required TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) StackTrace? stackTrace)
        businessException,
  }) {
    return receiveTimeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult? Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
  }) {
    return receiveTimeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
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
    required TResult Function(BaseApiConnectionTimeoutException value) connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value) badCertificate,
    required TResult Function(BaseApiConnectionErrorException value) connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return receiveTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
    TResult Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
  const factory BaseApiReceiveTimeoutException() = _$BaseApiReceiveTimeoutExceptionImpl;
  const BaseApiReceiveTimeoutException._() : super._();

  factory BaseApiReceiveTimeoutException.fromJson(Map<String, dynamic> json) =
      _$BaseApiReceiveTimeoutExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiBadCertificateExceptionImplCopyWith<$Res> {
  factory _$$BaseApiBadCertificateExceptionImplCopyWith(
          _$BaseApiBadCertificateExceptionImpl value, $Res Function(_$BaseApiBadCertificateExceptionImpl) then) =
      __$$BaseApiBadCertificateExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiBadCertificateExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res, _$BaseApiBadCertificateExceptionImpl>
    implements _$$BaseApiBadCertificateExceptionImplCopyWith<$Res> {
  __$$BaseApiBadCertificateExceptionImplCopyWithImpl(
      _$BaseApiBadCertificateExceptionImpl _value, $Res Function(_$BaseApiBadCertificateExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BaseApiBadCertificateExceptionImpl extends BaseApiBadCertificateException {
  const _$BaseApiBadCertificateExceptionImpl({final String? $type})
      : $type = $type ?? 'badCertificate',
        super._();

  factory _$BaseApiBadCertificateExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseApiBadCertificateExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.badCertificate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BaseApiBadCertificateExceptionImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)
        badResponse,
    required TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) StackTrace? stackTrace)
        businessException,
  }) {
    return badCertificate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult? Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
  }) {
    return badCertificate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
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
    required TResult Function(BaseApiConnectionTimeoutException value) connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value) badCertificate,
    required TResult Function(BaseApiConnectionErrorException value) connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return badCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
    TResult Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
  const factory BaseApiBadCertificateException() = _$BaseApiBadCertificateExceptionImpl;
  const BaseApiBadCertificateException._() : super._();

  factory BaseApiBadCertificateException.fromJson(Map<String, dynamic> json) =
      _$BaseApiBadCertificateExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiConnectionErrorExceptionImplCopyWith<$Res> {
  factory _$$BaseApiConnectionErrorExceptionImplCopyWith(
          _$BaseApiConnectionErrorExceptionImpl value, $Res Function(_$BaseApiConnectionErrorExceptionImpl) then) =
      __$$BaseApiConnectionErrorExceptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BaseApiConnectionErrorExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res, _$BaseApiConnectionErrorExceptionImpl>
    implements _$$BaseApiConnectionErrorExceptionImplCopyWith<$Res> {
  __$$BaseApiConnectionErrorExceptionImplCopyWithImpl(
      _$BaseApiConnectionErrorExceptionImpl _value, $Res Function(_$BaseApiConnectionErrorExceptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BaseApiConnectionErrorExceptionImpl extends BaseApiConnectionErrorException {
  const _$BaseApiConnectionErrorExceptionImpl({final String? $type})
      : $type = $type ?? 'connectionError',
        super._();

  factory _$BaseApiConnectionErrorExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseApiConnectionErrorExceptionImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.connectionError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BaseApiConnectionErrorExceptionImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)
        badResponse,
    required TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) StackTrace? stackTrace)
        businessException,
  }) {
    return connectionError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult? Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
  }) {
    return connectionError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
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
    required TResult Function(BaseApiConnectionTimeoutException value) connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value) badCertificate,
    required TResult Function(BaseApiConnectionErrorException value) connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
    TResult Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
  const factory BaseApiConnectionErrorException() = _$BaseApiConnectionErrorExceptionImpl;
  const BaseApiConnectionErrorException._() : super._();

  factory BaseApiConnectionErrorException.fromJson(Map<String, dynamic> json) =
      _$BaseApiConnectionErrorExceptionImpl.fromJson;
}

/// @nodoc
abstract class _$$BaseApiBadResponseExceptionImplCopyWith<$Res> {
  factory _$$BaseApiBadResponseExceptionImplCopyWith(
          _$BaseApiBadResponseExceptionImpl value, $Res Function(_$BaseApiBadResponseExceptionImpl) then) =
      __$$BaseApiBadResponseExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Response<dynamic>? response,
      int? statusCode});
}

/// @nodoc
class __$$BaseApiBadResponseExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res, _$BaseApiBadResponseExceptionImpl>
    implements _$$BaseApiBadResponseExceptionImplCopyWith<$Res> {
  __$$BaseApiBadResponseExceptionImplCopyWithImpl(
      _$BaseApiBadResponseExceptionImpl _value, $Res Function(_$BaseApiBadResponseExceptionImpl) _then)
      : super(_value, _then);

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
      {@JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) this.response,
      this.statusCode,
      final String? $type})
      : $type = $type ?? 'badResponse',
        super._();

  factory _$BaseApiBadResponseExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseApiBadResponseExceptionImplFromJson(json);

  @override
  @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseApiBadResponseExceptionImpl &&
            (identical(other.response, response) || other.response == response) &&
            (identical(other.statusCode, statusCode) || other.statusCode == statusCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseApiBadResponseExceptionImplCopyWith<_$BaseApiBadResponseExceptionImpl> get copyWith =>
      __$$BaseApiBadResponseExceptionImplCopyWithImpl<_$BaseApiBadResponseExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)
        badResponse,
    required TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) StackTrace? stackTrace)
        businessException,
  }) {
    return badResponse(response, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult? Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
  }) {
    return badResponse?.call(response, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
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
    required TResult Function(BaseApiConnectionTimeoutException value) connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value) badCertificate,
    required TResult Function(BaseApiConnectionErrorException value) connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
    TResult Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
      {@JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
      final Response<dynamic>? response,
      final int? statusCode}) = _$BaseApiBadResponseExceptionImpl;
  const BaseApiBadResponseException._() : super._();

  factory BaseApiBadResponseException.fromJson(Map<String, dynamic> json) = _$BaseApiBadResponseExceptionImpl.fromJson;

  @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
  Response<dynamic>? get response;
  int? get statusCode;
  @JsonKey(ignore: true)
  _$$BaseApiBadResponseExceptionImplCopyWith<_$BaseApiBadResponseExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseApiBusinessExceptionImplCopyWith<$Res> {
  factory _$$BaseApiBusinessExceptionImplCopyWith(
          _$BaseApiBusinessExceptionImpl value, $Res Function(_$BaseApiBusinessExceptionImpl) then) =
      __$$BaseApiBusinessExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String message,
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) StackTrace? stackTrace});
}

/// @nodoc
class __$$BaseApiBusinessExceptionImplCopyWithImpl<$Res>
    extends _$BaseApiExceptionCopyWithImpl<$Res, _$BaseApiBusinessExceptionImpl>
    implements _$$BaseApiBusinessExceptionImplCopyWith<$Res> {
  __$$BaseApiBusinessExceptionImplCopyWithImpl(
      _$BaseApiBusinessExceptionImpl _value, $Res Function(_$BaseApiBusinessExceptionImpl) _then)
      : super(_value, _then);

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
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) this.error,
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) this.stackTrace,
      final String? $type})
      : $type = $type ?? 'businessException',
        super._();

  factory _$BaseApiBusinessExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseApiBusinessExceptionImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
  final Object? error;
  @override
  @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
  final StackTrace? stackTrace;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BaseApiException.businessException(message: $message, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseApiBusinessExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseApiBusinessExceptionImplCopyWith<_$BaseApiBusinessExceptionImpl> get copyWith =>
      __$$BaseApiBusinessExceptionImplCopyWithImpl<_$BaseApiBusinessExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancel,
    required TResult Function() connectionTimeout,
    required TResult Function() sendTimeout,
    required TResult Function() receiveTimeout,
    required TResult Function() badCertificate,
    required TResult Function() connectionError,
    required TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)
        badResponse,
    required TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) StackTrace? stackTrace)
        businessException,
  }) {
    return businessException(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancel,
    TResult? Function()? connectionTimeout,
    TResult? Function()? sendTimeout,
    TResult? Function()? receiveTimeout,
    TResult? Function()? badCertificate,
    TResult? Function()? connectionError,
    TResult? Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult? Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
        businessException,
  }) {
    return businessException?.call(message, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancel,
    TResult Function()? connectionTimeout,
    TResult Function()? sendTimeout,
    TResult Function()? receiveTimeout,
    TResult Function()? badCertificate,
    TResult Function()? connectionError,
    TResult Function(
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            Response<dynamic>? response,
            int? statusCode)?
        badResponse,
    TResult Function(
            String message,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) Object? error,
            @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
            StackTrace? stackTrace)?
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
    required TResult Function(BaseApiConnectionTimeoutException value) connectionTimeout,
    required TResult Function(BaseApiSendTimeoutException value) sendTimeout,
    required TResult Function(BaseApiReceiveTimeoutException value) receiveTimeout,
    required TResult Function(BaseApiBadCertificateException value) badCertificate,
    required TResult Function(BaseApiConnectionErrorException value) connectionError,
    required TResult Function(BaseApiBadResponseException value) badResponse,
    required TResult Function(BaseApiBusinessException value) businessException,
  }) {
    return businessException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseApiCancelException value)? cancel,
    TResult? Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
    TResult Function(BaseApiConnectionTimeoutException value)? connectionTimeout,
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
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) final Object? error,
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
      final StackTrace? stackTrace}) = _$BaseApiBusinessExceptionImpl;
  const BaseApiBusinessException._() : super._();

  factory BaseApiBusinessException.fromJson(Map<String, dynamic> json) = _$BaseApiBusinessExceptionImpl.fromJson;

  String get message;
  @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
  Object? get error;
  @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$BaseApiBusinessExceptionImplCopyWith<_$BaseApiBusinessExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
