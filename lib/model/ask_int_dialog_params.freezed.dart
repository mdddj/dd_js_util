// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_int_dialog_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AskStringDialogParams _$AskStringDialogParamsFromJson(
    Map<String, dynamic> json) {
  return _AskStringDialogParams.fromJson(json);
}

/// @nodoc
mixin _$AskStringDialogParams {
  String get placeholder => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get okBtnText => throw _privateConstructorUsedError;
  String get cancelBtnText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$AskStringDialogParamsImplCopyWith<$Res> implements $AskStringDialogParamsCopyWith<$Res> {
  factory _$$AskStringDialogParamsImplCopyWith(
          _$AskStringDialogParamsImpl value, $Res Function(_$AskStringDialogParamsImpl) then) =
      __$$AskStringDialogParamsImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String placeholder, String title, String okBtnText, String cancelBtnText});
}

/// @nodoc
class __$$AskStringDialogParamsImplCopyWithImpl<$Res>
    extends _$AskStringDialogParamsCopyWithImpl<$Res, _$AskStringDialogParamsImpl>
    implements _$$AskStringDialogParamsImplCopyWith<$Res> {
  __$$AskStringDialogParamsImplCopyWithImpl(
      _$AskStringDialogParamsImpl _value, $Res Function(_$AskStringDialogParamsImpl) _then)
      : super(_value, _then);

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
@JsonSerializable()
class _$AskStringDialogParamsImpl implements _AskStringDialogParams {
  const _$AskStringDialogParamsImpl(
      {this.placeholder = "", this.title = "", this.okBtnText = "Ok", this.cancelBtnText = "Cancel"});

  factory _$AskStringDialogParamsImpl.fromJson(Map<String, dynamic> json) => _$$AskStringDialogParamsImplFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskStringDialogParamsImpl &&
            (identical(other.placeholder, placeholder) || other.placeholder == placeholder) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.okBtnText, okBtnText) ||
                other.okBtnText == okBtnText) &&
            (identical(other.cancelBtnText, cancelBtnText) ||
                other.cancelBtnText == cancelBtnText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, placeholder, title, okBtnText, cancelBtnText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskStringDialogParamsImplCopyWith<_$AskStringDialogParamsImpl> get copyWith =>
      __$$AskStringDialogParamsImplCopyWithImpl<_$AskStringDialogParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskStringDialogParamsImplToJson(
      this,
    );
  }
}

abstract class _AskStringDialogParams implements AskStringDialogParams {
  const factory _AskStringDialogParams(
      {final String placeholder,
      final String title,
      final String okBtnText,
      final String cancelBtnText}) = _$AskStringDialogParamsImpl;

  factory _AskStringDialogParams.fromJson(Map<String, dynamic> json) = _$AskStringDialogParamsImpl.fromJson;

  @override
  String get placeholder;
  @override
  String get title;
  @override
  String get okBtnText;

  @override
  String get cancelBtnText;

  @override
  @JsonKey(ignore: true)
  _$$AskStringDialogParamsImplCopyWith<_$AskStringDialogParamsImpl> get copyWith => throw _privateConstructorUsedError;
}

AskIntDialogParams _$AskIntDialogParamsFromJson(Map<String, dynamic> json) {
  return _AskIntDialogParams.fromJson(json);
}

/// @nodoc
mixin _$AskIntDialogParams {
  String get placeholder => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get okBtnText => throw _privateConstructorUsedError;
  String get cancelBtnText => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: null,
      toJson: null,
      includeFromJson: false,
      includeToJson: false)
  bool Function(int)? get disableOkButton => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: null,
      toJson: null,
      includeFromJson: false,
      includeToJson: false)
  String? Function(int)? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      @JsonKey(
          fromJson: null,
          toJson: null,
          includeFromJson: false,
          includeToJson: false)
      bool Function(int)? disableOkButton,
      @JsonKey(
          fromJson: null,
          toJson: null,
          includeFromJson: false,
          includeToJson: false)
      String? Function(int)? errorMessage});
}

/// @nodoc
class _$AskIntDialogParamsCopyWithImpl<$Res, $Val extends AskIntDialogParams>
    implements $AskIntDialogParamsCopyWith<$Res> {
  _$AskIntDialogParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeholder = null,
    Object? title = null,
    Object? okBtnText = null,
    Object? cancelBtnText = null,
    Object? disableOkButton = freezed,
    Object? errorMessage = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AskIntDialogParamsImplCopyWith<$Res> implements $AskIntDialogParamsCopyWith<$Res> {
  factory _$$AskIntDialogParamsImplCopyWith(
          _$AskIntDialogParamsImpl value, $Res Function(_$AskIntDialogParamsImpl) then) =
      __$$AskIntDialogParamsImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String placeholder,
      String title,
      String okBtnText,
      String cancelBtnText,
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false,
          includeToJson: false)
      bool Function(int)? disableOkButton,
      @JsonKey(
          fromJson: null,
          toJson: null,
          includeFromJson: false,
          includeToJson: false)
      String? Function(int)? errorMessage});
}

/// @nodoc
class __$$AskIntDialogParamsImplCopyWithImpl<$Res>
    extends _$AskIntDialogParamsCopyWithImpl<$Res, _$AskIntDialogParamsImpl>
    implements _$$AskIntDialogParamsImplCopyWith<$Res> {
  __$$AskIntDialogParamsImplCopyWithImpl(_$AskIntDialogParamsImpl _value, $Res Function(_$AskIntDialogParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeholder = null,
    Object? title = null,
    Object? okBtnText = null,
    Object? cancelBtnText = null,
    Object? disableOkButton = freezed,
    Object? errorMessage = freezed,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AskIntDialogParamsImpl implements _AskIntDialogParams {
  const _$AskIntDialogParamsImpl(
      {this.placeholder = "",
      this.title = "",
      this.okBtnText = "Ok",
      this.cancelBtnText = "Cancel",
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) this.disableOkButton,
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false) this.errorMessage});

  factory _$AskIntDialogParamsImpl.fromJson(Map<String, dynamic> json) => _$$AskIntDialogParamsImplFromJson(json);

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
  @JsonKey(
      fromJson: null,
      toJson: null,
      includeFromJson: false,
      includeToJson: false)
  final bool Function(int)? disableOkButton;
  @override
  @JsonKey(
      fromJson: null,
      toJson: null,
      includeFromJson: false,
      includeToJson: false)
  final String? Function(int)? errorMessage;

  @override
  String toString() {
    return 'AskIntDialogParams(placeholder: $placeholder, title: $title, okBtnText: $okBtnText, cancelBtnText: $cancelBtnText, disableOkButton: $disableOkButton, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskIntDialogParamsImpl &&
            (identical(other.placeholder, placeholder) || other.placeholder == placeholder) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.okBtnText, okBtnText) ||
                other.okBtnText == okBtnText) &&
            (identical(other.cancelBtnText, cancelBtnText) ||
                other.cancelBtnText == cancelBtnText) &&
            (identical(other.disableOkButton, disableOkButton) ||
                other.disableOkButton == disableOkButton) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeholder, title, okBtnText,
      cancelBtnText, disableOkButton, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskIntDialogParamsImplCopyWith<_$AskIntDialogParamsImpl> get copyWith =>
      __$$AskIntDialogParamsImplCopyWithImpl<_$AskIntDialogParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskIntDialogParamsImplToJson(
      this,
    );
  }
}

abstract class _AskIntDialogParams implements AskIntDialogParams {
  const factory _AskIntDialogParams(
      {final String placeholder,
      final String title,
      final String okBtnText,
      final String cancelBtnText,
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
      final bool Function(int)? disableOkButton,
      @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
      final String? Function(int)? errorMessage}) = _$AskIntDialogParamsImpl;

  factory _AskIntDialogParams.fromJson(Map<String, dynamic> json) = _$AskIntDialogParamsImpl.fromJson;

  @override
  String get placeholder;
  @override
  String get title;
  @override
  String get okBtnText;
  @override
  String get cancelBtnText;
  @override
  @JsonKey(
      fromJson: null,
      toJson: null,
      includeFromJson: false,
      includeToJson: false)
  bool Function(int)? get disableOkButton;

  @override
  @JsonKey(fromJson: null, toJson: null, includeFromJson: false, includeToJson: false)
  String? Function(int)? get errorMessage;

  @override
  @JsonKey(ignore: true)
  _$$AskIntDialogParamsImplCopyWith<_$AskIntDialogParamsImpl> get copyWith => throw _privateConstructorUsedError;
}
