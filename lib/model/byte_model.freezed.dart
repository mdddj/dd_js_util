// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'byte_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  @JsonKey(ignore: true)
  $ByteModelCopyWith<ByteModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ByteModelCopyWith<$Res> {
  factory $ByteModelCopyWith(ByteModel value, $Res Function(ByteModel) then) = _$ByteModelCopyWithImpl<$Res, ByteModel>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$ByteModelCopyWithImpl<$Res, $Val extends ByteModel> implements $ByteModelCopyWith<$Res> {
  _$ByteModelCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$BytesModelImplCopyWith<$Res> implements $ByteModelCopyWith<$Res> {
  factory _$$BytesModelImplCopyWith(_$BytesModelImpl value, $Res Function(_$BytesModelImpl) then) =
      __$$BytesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$BytesModelImplCopyWithImpl<$Res> extends _$ByteModelCopyWithImpl<$Res, _$BytesModelImpl>
    implements _$$BytesModelImplCopyWith<$Res> {
  __$$BytesModelImplCopyWithImpl(_$BytesModelImpl _value, $Res Function(_$BytesModelImpl) _then) : super(_value, _then);

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

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
  _$$BytesModelImplCopyWith<_$BytesModelImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KbModelImplCopyWith<$Res> implements $ByteModelCopyWith<$Res> {
  factory _$$KbModelImplCopyWith(_$KbModelImpl value, $Res Function(_$KbModelImpl) then) =
      __$$KbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$KbModelImplCopyWithImpl<$Res> extends _$ByteModelCopyWithImpl<$Res, _$KbModelImpl>
    implements _$$KbModelImplCopyWith<$Res> {
  __$$KbModelImplCopyWithImpl(_$KbModelImpl _value, $Res Function(_$KbModelImpl) _then) : super(_value, _then);

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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KbModelImplCopyWith<_$KbModelImpl> get copyWith => __$$KbModelImplCopyWithImpl<_$KbModelImpl>(this, _$identity);

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
  @override
  @JsonKey(ignore: true)
  _$$KbModelImplCopyWith<_$KbModelImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MbModelImplCopyWith<$Res> implements $ByteModelCopyWith<$Res> {
  factory _$$MbModelImplCopyWith(_$MbModelImpl value, $Res Function(_$MbModelImpl) then) =
      __$$MbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$MbModelImplCopyWithImpl<$Res> extends _$ByteModelCopyWithImpl<$Res, _$MbModelImpl>
    implements _$$MbModelImplCopyWith<$Res> {
  __$$MbModelImplCopyWithImpl(_$MbModelImpl _value, $Res Function(_$MbModelImpl) _then) : super(_value, _then);

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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MbModelImplCopyWith<_$MbModelImpl> get copyWith => __$$MbModelImplCopyWithImpl<_$MbModelImpl>(this, _$identity);

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
  @override
  @JsonKey(ignore: true)
  _$$MbModelImplCopyWith<_$MbModelImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GbModelImplCopyWith<$Res> implements $ByteModelCopyWith<$Res> {
  factory _$$GbModelImplCopyWith(_$GbModelImpl value, $Res Function(_$GbModelImpl) then) =
      __$$GbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$GbModelImplCopyWithImpl<$Res> extends _$ByteModelCopyWithImpl<$Res, _$GbModelImpl>
    implements _$$GbModelImplCopyWith<$Res> {
  __$$GbModelImplCopyWithImpl(_$GbModelImpl _value, $Res Function(_$GbModelImpl) _then) : super(_value, _then);

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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GbModelImplCopyWith<_$GbModelImpl> get copyWith => __$$GbModelImplCopyWithImpl<_$GbModelImpl>(this, _$identity);

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
  @override
  @JsonKey(ignore: true)
  _$$GbModelImplCopyWith<_$GbModelImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TbModelImplCopyWith<$Res> implements $ByteModelCopyWith<$Res> {
  factory _$$TbModelImplCopyWith(_$TbModelImpl value, $Res Function(_$TbModelImpl) then) =
      __$$TbModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$TbModelImplCopyWithImpl<$Res> extends _$ByteModelCopyWithImpl<$Res, _$TbModelImpl>
    implements _$$TbModelImplCopyWith<$Res> {
  __$$TbModelImplCopyWithImpl(_$TbModelImpl _value, $Res Function(_$TbModelImpl) _then) : super(_value, _then);

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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TbModelImplCopyWith<_$TbModelImpl> get copyWith => __$$TbModelImplCopyWithImpl<_$TbModelImpl>(this, _$identity);

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
  @override
  @JsonKey(ignore: true)
  _$$TbModelImplCopyWith<_$TbModelImpl> get copyWith => throw _privateConstructorUsedError;
}
