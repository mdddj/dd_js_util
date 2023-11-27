// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dart_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      throw CheckedFromJsonException(
          json, 'runtimeType', 'DartTypeModel', 'Invalid union type "${json['runtimeType']}"!');
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartTypeModelCopyWith<$Res> {
  factory $DartTypeModelCopyWith(DartTypeModel value, $Res Function(DartTypeModel) then) =
      _$DartTypeModelCopyWithImpl<$Res, DartTypeModel>;
}

/// @nodoc
class _$DartTypeModelCopyWithImpl<$Res, $Val extends DartTypeModel> implements $DartTypeModelCopyWith<$Res> {
  _$DartTypeModelCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StringDataImplCopyWith<$Res> {
  factory _$$StringDataImplCopyWith(_$StringDataImpl value, $Res Function(_$StringDataImpl) then) =
      __$$StringDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$StringDataImplCopyWithImpl<$Res> extends _$DartTypeModelCopyWithImpl<$Res, _$StringDataImpl>
    implements _$$StringDataImplCopyWith<$Res> {
  __$$StringDataImplCopyWithImpl(_$StringDataImpl _value, $Res Function(_$StringDataImpl) _then) : super(_value, _then);

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

  factory _$StringDataImpl.fromJson(Map<String, dynamic> json) => _$$StringDataImplFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.string(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringDataImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
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

  factory StringData.fromJson(Map<String, dynamic> json) = _$StringDataImpl.fromJson;

  String get value;
  @JsonKey(ignore: true)
  _$$StringDataImplCopyWith<_$StringDataImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumDataImplCopyWith<$Res> {
  factory _$$NumDataImplCopyWith(_$NumDataImpl value, $Res Function(_$NumDataImpl) then) =
      __$$NumDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({num value});
}

/// @nodoc
class __$$NumDataImplCopyWithImpl<$Res> extends _$DartTypeModelCopyWithImpl<$Res, _$NumDataImpl>
    implements _$$NumDataImplCopyWith<$Res> {
  __$$NumDataImplCopyWithImpl(_$NumDataImpl _value, $Res Function(_$NumDataImpl) _then) : super(_value, _then);

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

  factory _$NumDataImpl.fromJson(Map<String, dynamic> json) => _$$NumDataImplFromJson(json);

  @override
  final num value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.num(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumDataImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumDataImplCopyWith<_$NumDataImpl> get copyWith => __$$NumDataImplCopyWithImpl<_$NumDataImpl>(this, _$identity);

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
  @JsonKey(ignore: true)
  _$$NumDataImplCopyWith<_$NumDataImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoolDataImplCopyWith<$Res> {
  factory _$$BoolDataImplCopyWith(_$BoolDataImpl value, $Res Function(_$BoolDataImpl) then) =
      __$$BoolDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$BoolDataImplCopyWithImpl<$Res> extends _$DartTypeModelCopyWithImpl<$Res, _$BoolDataImpl>
    implements _$$BoolDataImplCopyWith<$Res> {
  __$$BoolDataImplCopyWithImpl(_$BoolDataImpl _value, $Res Function(_$BoolDataImpl) _then) : super(_value, _then);

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

  factory _$BoolDataImpl.fromJson(Map<String, dynamic> json) => _$$BoolDataImplFromJson(json);

  @override
  final bool value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.bool(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoolDataImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
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

  factory BoolData.fromJson(Map<String, dynamic> json) = _$BoolDataImpl.fromJson;

  bool get value;
  @JsonKey(ignore: true)
  _$$BoolDataImplCopyWith<_$BoolDataImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListDataImplCopyWith<$Res> {
  factory _$$ListDataImplCopyWith(_$ListDataImpl value, $Res Function(_$ListDataImpl) then) =
      __$$ListDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> value});
}

/// @nodoc
class __$$ListDataImplCopyWithImpl<$Res> extends _$DartTypeModelCopyWithImpl<$Res, _$ListDataImpl>
    implements _$$ListDataImplCopyWith<$Res> {
  __$$ListDataImplCopyWithImpl(_$ListDataImpl _value, $Res Function(_$ListDataImpl) _then) : super(_value, _then);

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

  factory _$ListDataImpl.fromJson(Map<String, dynamic> json) => _$$ListDataImplFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDataImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
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

  factory ListData.fromJson(Map<String, dynamic> json) = _$ListDataImpl.fromJson;

  List<dynamic> get value;
  @JsonKey(ignore: true)
  _$$ListDataImplCopyWith<_$ListDataImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JsonDataImplCopyWith<$Res> {
  factory _$$JsonDataImplCopyWith(_$JsonDataImpl value, $Res Function(_$JsonDataImpl) then) =
      __$$JsonDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> value});
}

/// @nodoc
class __$$JsonDataImplCopyWithImpl<$Res> extends _$DartTypeModelCopyWithImpl<$Res, _$JsonDataImpl>
    implements _$$JsonDataImplCopyWith<$Res> {
  __$$JsonDataImplCopyWithImpl(_$JsonDataImpl _value, $Res Function(_$JsonDataImpl) _then) : super(_value, _then);

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

  factory _$JsonDataImpl.fromJson(Map<String, dynamic> json) => _$$JsonDataImplFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonDataImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
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

  factory JsonData.fromJson(Map<String, dynamic> json) = _$JsonDataImpl.fromJson;

  Map<String, dynamic> get value;
  @JsonKey(ignore: true)
  _$$JsonDataImplCopyWith<_$JsonDataImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DynamicDataImplCopyWith<$Res> {
  factory _$$DynamicDataImplCopyWith(_$DynamicDataImpl value, $Res Function(_$DynamicDataImpl) then) =
      __$$DynamicDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$DynamicDataImplCopyWithImpl<$Res> extends _$DartTypeModelCopyWithImpl<$Res, _$DynamicDataImpl>
    implements _$$DynamicDataImplCopyWith<$Res> {
  __$$DynamicDataImplCopyWithImpl(_$DynamicDataImpl _value, $Res Function(_$DynamicDataImpl) _then)
      : super(_value, _then);

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

  factory _$DynamicDataImpl.fromJson(Map<String, dynamic> json) => _$$DynamicDataImplFromJson(json);

  @override
  final dynamic value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.dynamic(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicDataImpl &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
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

  factory DynamicData.fromJson(Map<String, dynamic> json) = _$DynamicDataImpl.fromJson;

  dynamic get value;
  @JsonKey(ignore: true)
  _$$DynamicDataImplCopyWith<_$DynamicDataImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NullDataImplCopyWith<$Res> {
  factory _$$NullDataImplCopyWith(_$NullDataImpl value, $Res Function(_$NullDataImpl) then) =
      __$$NullDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NullDataImplCopyWithImpl<$Res> extends _$DartTypeModelCopyWithImpl<$Res, _$NullDataImpl>
    implements _$$NullDataImplCopyWith<$Res> {
  __$$NullDataImplCopyWithImpl(_$NullDataImpl _value, $Res Function(_$NullDataImpl) _then) : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NullDataImpl extends NullData {
  const _$NullDataImpl({final String? $type})
      : $type = $type ?? 'nil',
        super._();

  factory _$NullDataImpl.fromJson(Map<String, dynamic> json) => _$$NullDataImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.nil()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$NullDataImpl);
  }

  @JsonKey(ignore: true)
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

  factory NullData.fromJson(Map<String, dynamic> json) = _$NullDataImpl.fromJson;
}

/// @nodoc
abstract class _$$JsonStringDataImplCopyWith<$Res> {
  factory _$$JsonStringDataImplCopyWith(_$JsonStringDataImpl value, $Res Function(_$JsonStringDataImpl) then) =
      __$$JsonStringDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String jsonString});
}

/// @nodoc
class __$$JsonStringDataImplCopyWithImpl<$Res> extends _$DartTypeModelCopyWithImpl<$Res, _$JsonStringDataImpl>
    implements _$$JsonStringDataImplCopyWith<$Res> {
  __$$JsonStringDataImplCopyWithImpl(_$JsonStringDataImpl _value, $Res Function(_$JsonStringDataImpl) _then)
      : super(_value, _then);

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

  factory _$JsonStringDataImpl.fromJson(Map<String, dynamic> json) => _$$JsonStringDataImplFromJson(json);

  @override
  final String jsonString;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DartTypeModel.jsonString(jsonString: $jsonString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonStringDataImpl &&
            (identical(other.jsonString, jsonString) || other.jsonString == jsonString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jsonString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonStringDataImplCopyWith<_$JsonStringDataImpl> get copyWith =>
      __$$JsonStringDataImplCopyWithImpl<_$JsonStringDataImpl>(this, _$identity);

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

  factory JsonStringData.fromJson(Map<String, dynamic> json) = _$JsonStringDataImpl.fromJson;

  String get jsonString;
  @JsonKey(ignore: true)
  _$$JsonStringDataImplCopyWith<_$JsonStringDataImpl> get copyWith => throw _privateConstructorUsedError;
}
