// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchSupportParams<T> {
  ///是否自动显示搜索结果
  bool get autoShow; //搜索控制器
  RefreshController<T>? get controller; //展示组件的容器,需要固定高度
  SearchSupportCoreUiBuild get childBuilder;
  SearchSupportActionListening? get listening;

  /// Create a copy of SearchSupportParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchSupportParamsCopyWith<T, SearchSupportParams<T>> get copyWith =>
      _$SearchSupportParamsCopyWithImpl<T, SearchSupportParams<T>>(
          this as SearchSupportParams<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchSupportParams<T> &&
            (identical(other.autoShow, autoShow) ||
                other.autoShow == autoShow) &&
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

  @override
  String toString() {
    return 'SearchSupportParams<$T>(autoShow: $autoShow, controller: $controller, childBuilder: $childBuilder, listening: $listening)';
  }
}

/// @nodoc
abstract mixin class $SearchSupportParamsCopyWith<T, $Res> {
  factory $SearchSupportParamsCopyWith(SearchSupportParams<T> value,
          $Res Function(SearchSupportParams<T>) _then) =
      _$SearchSupportParamsCopyWithImpl;
  @useResult
  $Res call(
      {bool autoShow,
      RefreshController<T>? controller,
      SearchSupportCoreUiBuild childBuilder,
      SearchSupportActionListening? listening});
}

/// @nodoc
class _$SearchSupportParamsCopyWithImpl<T, $Res>
    implements $SearchSupportParamsCopyWith<T, $Res> {
  _$SearchSupportParamsCopyWithImpl(this._self, this._then);

  final SearchSupportParams<T> _self;
  final $Res Function(SearchSupportParams<T>) _then;

  /// Create a copy of SearchSupportParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoShow = null,
    Object? controller = freezed,
    Object? childBuilder = null,
    Object? listening = freezed,
  }) {
    return _then(_self.copyWith(
      autoShow: null == autoShow
          ? _self.autoShow
          : autoShow // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: freezed == controller
          ? _self.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as RefreshController<T>?,
      childBuilder: null == childBuilder
          ? _self.childBuilder
          : childBuilder // ignore: cast_nullable_to_non_nullable
              as SearchSupportCoreUiBuild,
      listening: freezed == listening
          ? _self.listening
          : listening // ignore: cast_nullable_to_non_nullable
              as SearchSupportActionListening?,
    ));
  }
}

/// @nodoc

class _SearchSupportParams<T> implements SearchSupportParams<T> {
  const _SearchSupportParams(
      {this.autoShow = true,
      this.controller,
      required this.childBuilder,
      this.listening});

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

  /// Create a copy of SearchSupportParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchSupportParamsCopyWith<T, _SearchSupportParams<T>> get copyWith =>
      __$SearchSupportParamsCopyWithImpl<T, _SearchSupportParams<T>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchSupportParams<T> &&
            (identical(other.autoShow, autoShow) ||
                other.autoShow == autoShow) &&
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

  @override
  String toString() {
    return 'SearchSupportParams<$T>(autoShow: $autoShow, controller: $controller, childBuilder: $childBuilder, listening: $listening)';
  }
}

/// @nodoc
abstract mixin class _$SearchSupportParamsCopyWith<T, $Res>
    implements $SearchSupportParamsCopyWith<T, $Res> {
  factory _$SearchSupportParamsCopyWith(_SearchSupportParams<T> value,
          $Res Function(_SearchSupportParams<T>) _then) =
      __$SearchSupportParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool autoShow,
      RefreshController<T>? controller,
      SearchSupportCoreUiBuild childBuilder,
      SearchSupportActionListening? listening});
}

/// @nodoc
class __$SearchSupportParamsCopyWithImpl<T, $Res>
    implements _$SearchSupportParamsCopyWith<T, $Res> {
  __$SearchSupportParamsCopyWithImpl(this._self, this._then);

  final _SearchSupportParams<T> _self;
  final $Res Function(_SearchSupportParams<T>) _then;

  /// Create a copy of SearchSupportParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? autoShow = null,
    Object? controller = freezed,
    Object? childBuilder = null,
    Object? listening = freezed,
  }) {
    return _then(_SearchSupportParams<T>(
      autoShow: null == autoShow
          ? _self.autoShow
          : autoShow // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: freezed == controller
          ? _self.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as RefreshController<T>?,
      childBuilder: null == childBuilder
          ? _self.childBuilder
          : childBuilder // ignore: cast_nullable_to_non_nullable
              as SearchSupportCoreUiBuild,
      listening: freezed == listening
          ? _self.listening
          : listening // ignore: cast_nullable_to_non_nullable
              as SearchSupportActionListening?,
    ));
  }
}

// dart format on
