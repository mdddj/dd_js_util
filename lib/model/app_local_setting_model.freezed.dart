// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_local_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppLocalSettingModel _$AppLocalSettingModelFromJson(Map<String, dynamic> json) {
  return _AppLocalSettingModel.fromJson(json);
}

/// @nodoc
mixin _$AppLocalSettingModel {
  @HiveField(0, defaultValue: 0)
  int get themeIndex => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: 0)
  int get themeModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_AppLocalSettingModelCopyWith<$Res>
    implements $AppLocalSettingModelCopyWith<$Res> {
  factory _$$_AppLocalSettingModelCopyWith(_$_AppLocalSettingModel value,
          $Res Function(_$_AppLocalSettingModel) then) =
      __$$_AppLocalSettingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int themeIndex,
      @HiveField(1, defaultValue: 0) int themeModel});
}

/// @nodoc
class __$$_AppLocalSettingModelCopyWithImpl<$Res>
    extends _$AppLocalSettingModelCopyWithImpl<$Res, _$_AppLocalSettingModel>
    implements _$$_AppLocalSettingModelCopyWith<$Res> {
  __$$_AppLocalSettingModelCopyWithImpl(_$_AppLocalSettingModel _value,
      $Res Function(_$_AppLocalSettingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeIndex = null,
    Object? themeModel = null,
  }) {
    return _then(_$_AppLocalSettingModel(
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
@JsonSerializable()
class _$_AppLocalSettingModel extends _AppLocalSettingModel {
  const _$_AppLocalSettingModel(
      {@HiveField(0, defaultValue: 0) this.themeIndex = 0,
      @HiveField(1, defaultValue: 0) this.themeModel = 0})
      : super._();

  factory _$_AppLocalSettingModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppLocalSettingModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppLocalSettingModel &&
            (identical(other.themeIndex, themeIndex) ||
                other.themeIndex == themeIndex) &&
            (identical(other.themeModel, themeModel) ||
                other.themeModel == themeModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeIndex, themeModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppLocalSettingModelCopyWith<_$_AppLocalSettingModel> get copyWith =>
      __$$_AppLocalSettingModelCopyWithImpl<_$_AppLocalSettingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppLocalSettingModelToJson(
      this,
    );
  }
}

abstract class _AppLocalSettingModel extends AppLocalSettingModel {
  const factory _AppLocalSettingModel(
          {@HiveField(0, defaultValue: 0) final int themeIndex,
          @HiveField(1, defaultValue: 0) final int themeModel}) =
      _$_AppLocalSettingModel;
  const _AppLocalSettingModel._() : super._();

  factory _AppLocalSettingModel.fromJson(Map<String, dynamic> json) =
      _$_AppLocalSettingModel.fromJson;

  @override
  @HiveField(0, defaultValue: 0)
  int get themeIndex;
  @override
  @HiveField(1, defaultValue: 0)
  int get themeModel;
  @override
  @JsonKey(ignore: true)
  _$$_AppLocalSettingModelCopyWith<_$_AppLocalSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
