// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_ok_dialog_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AskOkDialogParams _$AskOkDialogParamsFromJson(Map<String, dynamic> json) {
  return _AskOkDialogParams.fromJson(json);
}

/// @nodoc
mixin _$AskOkDialogParams {
  String get contentText => throw _privateConstructorUsedError;
  String get okText => throw _privateConstructorUsedError;
  String get cancelText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskOkDialogParamsCopyWith<AskOkDialogParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskOkDialogParamsCopyWith<$Res> {
  factory $AskOkDialogParamsCopyWith(
          AskOkDialogParams value, $Res Function(AskOkDialogParams) then) =
      _$AskOkDialogParamsCopyWithImpl<$Res, AskOkDialogParams>;
  @useResult
  $Res call({String contentText, String okText, String cancelText});
}

/// @nodoc
class _$AskOkDialogParamsCopyWithImpl<$Res, $Val extends AskOkDialogParams>
    implements $AskOkDialogParamsCopyWith<$Res> {
  _$AskOkDialogParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentText = null,
    Object? okText = null,
    Object? cancelText = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AskOkDialogParamsCopyWith<$Res>
    implements $AskOkDialogParamsCopyWith<$Res> {
  factory _$$_AskOkDialogParamsCopyWith(_$_AskOkDialogParams value,
          $Res Function(_$_AskOkDialogParams) then) =
      __$$_AskOkDialogParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contentText, String okText, String cancelText});
}

/// @nodoc
class __$$_AskOkDialogParamsCopyWithImpl<$Res>
    extends _$AskOkDialogParamsCopyWithImpl<$Res, _$_AskOkDialogParams>
    implements _$$_AskOkDialogParamsCopyWith<$Res> {
  __$$_AskOkDialogParamsCopyWithImpl(
      _$_AskOkDialogParams _value, $Res Function(_$_AskOkDialogParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentText = null,
    Object? okText = null,
    Object? cancelText = null,
  }) {
    return _then(_$_AskOkDialogParams(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AskOkDialogParams implements _AskOkDialogParams {
  const _$_AskOkDialogParams(
      {this.contentText = "", this.okText = "Ok", this.cancelText = "Cancel"});

  factory _$_AskOkDialogParams.fromJson(Map<String, dynamic> json) =>
      _$$_AskOkDialogParamsFromJson(json);

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
  String toString() {
    return 'AskOkDialogParams(contentText: $contentText, okText: $okText, cancelText: $cancelText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AskOkDialogParams &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.okText, okText) || other.okText == okText) &&
            (identical(other.cancelText, cancelText) ||
                other.cancelText == cancelText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contentText, okText, cancelText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AskOkDialogParamsCopyWith<_$_AskOkDialogParams> get copyWith =>
      __$$_AskOkDialogParamsCopyWithImpl<_$_AskOkDialogParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AskOkDialogParamsToJson(
      this,
    );
  }
}

abstract class _AskOkDialogParams implements AskOkDialogParams {
  const factory _AskOkDialogParams(
      {final String contentText,
      final String okText,
      final String cancelText}) = _$_AskOkDialogParams;

  factory _AskOkDialogParams.fromJson(Map<String, dynamic> json) =
      _$_AskOkDialogParams.fromJson;

  @override
  String get contentText;
  @override
  String get okText;
  @override
  String get cancelText;
  @override
  @JsonKey(ignore: true)
  _$$_AskOkDialogParamsCopyWith<_$_AskOkDialogParams> get copyWith =>
      throw _privateConstructorUsedError;
}
