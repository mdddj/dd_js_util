// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_support_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchSupportManager {
  BuildContext get context;
  StateSetter get floatStateSetter;
  State get floatState;

  /// Create a copy of SearchSupportManager
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchSupportManagerCopyWith<SearchSupportManager> get copyWith =>
      _$SearchSupportManagerCopyWithImpl<SearchSupportManager>(
          this as SearchSupportManager, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchSupportManager &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.floatStateSetter, floatStateSetter) ||
                other.floatStateSetter == floatStateSetter) &&
            (identical(other.floatState, floatState) ||
                other.floatState == floatState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, floatStateSetter, floatState);

  @override
  String toString() {
    return 'SearchSupportManager(context: $context, floatStateSetter: $floatStateSetter, floatState: $floatState)';
  }
}

/// @nodoc
abstract mixin class $SearchSupportManagerCopyWith<$Res> {
  factory $SearchSupportManagerCopyWith(SearchSupportManager value,
          $Res Function(SearchSupportManager) _then) =
      _$SearchSupportManagerCopyWithImpl;
  @useResult
  $Res call(
      {BuildContext context, StateSetter floatStateSetter, State floatState});
}

/// @nodoc
class _$SearchSupportManagerCopyWithImpl<$Res>
    implements $SearchSupportManagerCopyWith<$Res> {
  _$SearchSupportManagerCopyWithImpl(this._self, this._then);

  final SearchSupportManager _self;
  final $Res Function(SearchSupportManager) _then;

  /// Create a copy of SearchSupportManager
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? floatStateSetter = null,
    Object? floatState = null,
  }) {
    return _then(_self.copyWith(
      context: null == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      floatStateSetter: null == floatStateSetter
          ? _self.floatStateSetter
          : floatStateSetter // ignore: cast_nullable_to_non_nullable
              as StateSetter,
      floatState: null == floatState
          ? _self.floatState
          : floatState // ignore: cast_nullable_to_non_nullable
              as State,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchSupportManager].
extension SearchSupportManagerPatterns on SearchSupportManager {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SearchSupportManager value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchSupportManager() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SearchSupportManager value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchSupportManager():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SearchSupportManager value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchSupportManager() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BuildContext context, StateSetter floatStateSetter,
            State floatState)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchSupportManager() when $default != null:
        return $default(
            _that.context, _that.floatStateSetter, _that.floatState);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BuildContext context, StateSetter floatStateSetter,
            State floatState)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchSupportManager():
        return $default(
            _that.context, _that.floatStateSetter, _that.floatState);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(BuildContext context, StateSetter floatStateSetter,
            State floatState)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchSupportManager() when $default != null:
        return $default(
            _that.context, _that.floatStateSetter, _that.floatState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SearchSupportManager implements SearchSupportManager {
  const _SearchSupportManager(
      {required this.context,
      required this.floatStateSetter,
      required this.floatState});

  @override
  final BuildContext context;
  @override
  final StateSetter floatStateSetter;
  @override
  final State floatState;

  /// Create a copy of SearchSupportManager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchSupportManagerCopyWith<_SearchSupportManager> get copyWith =>
      __$SearchSupportManagerCopyWithImpl<_SearchSupportManager>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchSupportManager &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.floatStateSetter, floatStateSetter) ||
                other.floatStateSetter == floatStateSetter) &&
            (identical(other.floatState, floatState) ||
                other.floatState == floatState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, floatStateSetter, floatState);

  @override
  String toString() {
    return 'SearchSupportManager(context: $context, floatStateSetter: $floatStateSetter, floatState: $floatState)';
  }
}

/// @nodoc
abstract mixin class _$SearchSupportManagerCopyWith<$Res>
    implements $SearchSupportManagerCopyWith<$Res> {
  factory _$SearchSupportManagerCopyWith(_SearchSupportManager value,
          $Res Function(_SearchSupportManager) _then) =
      __$SearchSupportManagerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BuildContext context, StateSetter floatStateSetter, State floatState});
}

/// @nodoc
class __$SearchSupportManagerCopyWithImpl<$Res>
    implements _$SearchSupportManagerCopyWith<$Res> {
  __$SearchSupportManagerCopyWithImpl(this._self, this._then);

  final _SearchSupportManager _self;
  final $Res Function(_SearchSupportManager) _then;

  /// Create a copy of SearchSupportManager
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? context = null,
    Object? floatStateSetter = null,
    Object? floatState = null,
  }) {
    return _then(_SearchSupportManager(
      context: null == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      floatStateSetter: null == floatStateSetter
          ? _self.floatStateSetter
          : floatStateSetter // ignore: cast_nullable_to_non_nullable
              as StateSetter,
      floatState: null == floatState
          ? _self.floatState
          : floatState // ignore: cast_nullable_to_non_nullable
              as State,
    ));
  }
}

// dart format on
