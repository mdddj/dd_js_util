// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchSupportParams<T> {
  ///是否自动显示搜索结果
  bool get autoShow => throw _privateConstructorUsedError; //搜索控制器
  RefreshController<T>? get controller =>
      throw _privateConstructorUsedError; //展示组件的容器,需要固定高度
  SearchSupportCoreUiBuild get childBuilder =>
      throw _privateConstructorUsedError;
  SearchSupportActionListening? get listening =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchSupportParamsCopyWith<T, SearchSupportParams<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSupportParamsCopyWith<T, $Res> {
  factory $SearchSupportParamsCopyWith(SearchSupportParams<T> value,
          $Res Function(SearchSupportParams<T>) then) =
      _$SearchSupportParamsCopyWithImpl<T, $Res, SearchSupportParams<T>>;
  @useResult
  $Res call(
      {bool autoShow,
      RefreshController<T>? controller,
      SearchSupportCoreUiBuild childBuilder,
      SearchSupportActionListening? listening});
}

/// @nodoc
class _$SearchSupportParamsCopyWithImpl<T, $Res,
        $Val extends SearchSupportParams<T>>
    implements $SearchSupportParamsCopyWith<T, $Res> {
  _$SearchSupportParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoShow = null,
    Object? controller = freezed,
    Object? childBuilder = null,
    Object? listening = freezed,
  }) {
    return _then(_value.copyWith(
      autoShow: null == autoShow
          ? _value.autoShow
          : autoShow // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as RefreshController<T>?,
      childBuilder: null == childBuilder
          ? _value.childBuilder
          : childBuilder // ignore: cast_nullable_to_non_nullable
              as SearchSupportCoreUiBuild,
      listening: freezed == listening
          ? _value.listening
          : listening // ignore: cast_nullable_to_non_nullable
              as SearchSupportActionListening?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchSupportParamsImplCopyWith<T, $Res> implements $SearchSupportParamsCopyWith<T, $Res> {
  factory _$$SearchSupportParamsImplCopyWith(
          _$SearchSupportParamsImpl<T> value, $Res Function(_$SearchSupportParamsImpl<T>) then) =
      __$$SearchSupportParamsImplCopyWithImpl<T, $Res>;

  @override
  @useResult
  $Res call(
      {bool autoShow,
      RefreshController<T>? controller,
      SearchSupportCoreUiBuild childBuilder,
      SearchSupportActionListening? listening});
}

/// @nodoc
class __$$SearchSupportParamsImplCopyWithImpl<T, $Res>
    extends _$SearchSupportParamsCopyWithImpl<T, $Res, _$SearchSupportParamsImpl<T>>
    implements _$$SearchSupportParamsImplCopyWith<T, $Res> {
  __$$SearchSupportParamsImplCopyWithImpl(
      _$SearchSupportParamsImpl<T> _value, $Res Function(_$SearchSupportParamsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoShow = null,
    Object? controller = freezed,
    Object? childBuilder = null,
    Object? listening = freezed,
  }) {
    return _then(_$SearchSupportParamsImpl<T>(
      autoShow: null == autoShow
          ? _value.autoShow
          : autoShow // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as RefreshController<T>?,
      childBuilder: null == childBuilder
          ? _value.childBuilder
          : childBuilder // ignore: cast_nullable_to_non_nullable
              as SearchSupportCoreUiBuild,
      listening: freezed == listening
          ? _value.listening
          : listening // ignore: cast_nullable_to_non_nullable
              as SearchSupportActionListening?,
    ));
  }
}

/// @nodoc

class _$SearchSupportParamsImpl<T> implements _SearchSupportParams<T> {
  const _$SearchSupportParamsImpl({this.autoShow = true, this.controller, required this.childBuilder, this.listening});

  ///是否自动显示搜索结果
  @override
  @JsonKey()
  final bool autoShow;

//搜索控制器
  @override
  final RefreshController<T>? controller;
//展示组件的容器,需要固定高度
  @override
  final SearchSupportCoreUiBuild childBuilder;
  @override
  final SearchSupportActionListening? listening;

  @override
  String toString() {
    return 'SearchSupportParams<$T>(autoShow: $autoShow, controller: $controller, childBuilder: $childBuilder, listening: $listening)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSupportParamsImpl<T> &&
            (identical(other.autoShow, autoShow) || other.autoShow == autoShow) &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.childBuilder, childBuilder) ||
                other.childBuilder == childBuilder) &&
            (identical(other.listening, listening) ||
                other.listening == listening));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, autoShow, controller, childBuilder, listening);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSupportParamsImplCopyWith<T, _$SearchSupportParamsImpl<T>> get copyWith =>
      __$$SearchSupportParamsImplCopyWithImpl<T, _$SearchSupportParamsImpl<T>>(this, _$identity);
}

abstract class _SearchSupportParams<T> implements SearchSupportParams<T> {
  const factory _SearchSupportParams(
      {final bool autoShow,
      final RefreshController<T>? controller,
      required final SearchSupportCoreUiBuild childBuilder,
      final SearchSupportActionListening? listening}) = _$SearchSupportParamsImpl<T>;

  @override

  ///是否自动显示搜索结果
  bool get autoShow;
  @override //搜索控制器
  RefreshController<T>? get controller;
  @override //展示组件的容器,需要固定高度
  SearchSupportCoreUiBuild get childBuilder;

  @override
  SearchSupportActionListening? get listening;

  @override
  @JsonKey(ignore: true)
  _$$SearchSupportParamsImplCopyWith<T, _$SearchSupportParamsImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
