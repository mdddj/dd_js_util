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
  @JsonKey(
      toJson: null,
      fromJson: null,
      includeToJson: false,
      includeFromJson: false)
  Widget? get content => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: null,
      fromJson: null,
      includeToJson: false,
      includeFromJson: false)
  Widget? get title => throw _privateConstructorUsedError;

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
  $Res call(
      {String contentText,
      String okText,
      String cancelText,
      @JsonKey(
          toJson: null,
          fromJson: null,
          includeToJson: false,
          includeFromJson: false)
      Widget? content,
      @JsonKey(
          toJson: null,
          fromJson: null,
          includeToJson: false,
          includeFromJson: false)
      Widget? title});
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
abstract class _$$AskOkDialogParamsImplCopyWith<$Res> implements $AskOkDialogParamsCopyWith<$Res> {
  factory _$$AskOkDialogParamsImplCopyWith(_$AskOkDialogParamsImpl value, $Res Function(_$AskOkDialogParamsImpl) then) =
      __$$AskOkDialogParamsImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String contentText,
      String okText,
      String cancelText,
      @JsonKey(toJson: null, fromJson: null, includeToJson: false, includeFromJson: false) Widget? content,
      @JsonKey(toJson: null, fromJson: null, includeToJson: false, includeFromJson: false) Widget? title});
}

/// @nodoc
class __$$AskOkDialogParamsImplCopyWithImpl<$Res> extends _$AskOkDialogParamsCopyWithImpl<$Res, _$AskOkDialogParamsImpl>
    implements _$$AskOkDialogParamsImplCopyWith<$Res> {
  __$$AskOkDialogParamsImplCopyWithImpl(_$AskOkDialogParamsImpl _value, $Res Function(_$AskOkDialogParamsImpl) _then)
      : super(_value, _then);

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
@JsonSerializable()
class _$AskOkDialogParamsImpl implements _AskOkDialogParams {
  const _$AskOkDialogParamsImpl(
      {this.contentText = "",
      this.okText = "Ok",
      this.cancelText = "Cancel",
      @JsonKey(toJson: null, fromJson: null, includeToJson: false, includeFromJson: false) this.content,
      @JsonKey(toJson: null, fromJson: null, includeToJson: false, includeFromJson: false) this.title});

  factory _$AskOkDialogParamsImpl.fromJson(Map<String, dynamic> json) => _$$AskOkDialogParamsImplFromJson(json);

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
  @JsonKey(
      toJson: null,
      fromJson: null,
      includeToJson: false,
      includeFromJson: false)
  final Widget? content;
  @override
  @JsonKey(
      toJson: null,
      fromJson: null,
      includeToJson: false,
      includeFromJson: false)
  final Widget? title;

  @override
  String toString() {
    return 'AskOkDialogParams(contentText: $contentText, okText: $okText, cancelText: $cancelText, content: $content, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskOkDialogParamsImpl &&
            (identical(other.contentText, contentText) || other.contentText == contentText) &&
            (identical(other.okText, okText) || other.okText == okText) &&
            (identical(other.cancelText, cancelText) ||
                other.cancelText == cancelText) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contentText, okText, cancelText, content, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AskOkDialogParamsImplCopyWith<_$AskOkDialogParamsImpl> get copyWith =>
      __$$AskOkDialogParamsImplCopyWithImpl<_$AskOkDialogParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AskOkDialogParamsImplToJson(
      this,
    );
  }
}

abstract class _AskOkDialogParams implements AskOkDialogParams {
  const factory _AskOkDialogParams(
          {final String contentText,
          final String okText,
          final String cancelText,
          @JsonKey(toJson: null, fromJson: null, includeToJson: false, includeFromJson: false) final Widget? content,
          @JsonKey(toJson: null, fromJson: null, includeToJson: false, includeFromJson: false) final Widget? title}) =
      _$AskOkDialogParamsImpl;

  factory _AskOkDialogParams.fromJson(Map<String, dynamic> json) = _$AskOkDialogParamsImpl.fromJson;

  @override
  String get contentText;

  @override
  String get okText;

  @override
  String get cancelText;

  @override
  @JsonKey(toJson: null, fromJson: null, includeToJson: false, includeFromJson: false)
  Widget? get content;

  @override
  @JsonKey(toJson: null, fromJson: null, includeToJson: false, includeFromJson: false)
  Widget? get title;

  @override
  @JsonKey(ignore: true)
  _$$AskOkDialogParamsImplCopyWith<_$AskOkDialogParamsImpl> get copyWith => throw _privateConstructorUsedError;
}
