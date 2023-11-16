// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_support_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchSupportManager {
  BuildContext get context => throw _privateConstructorUsedError;
  StateSetter get floatStateSetter => throw _privateConstructorUsedError;
  State<StatefulWidget> get floatState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchSupportManagerCopyWith<SearchSupportManager> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSupportManagerCopyWith<$Res> {
  factory $SearchSupportManagerCopyWith(SearchSupportManager value,
          $Res Function(SearchSupportManager) then) =
      _$SearchSupportManagerCopyWithImpl<$Res, SearchSupportManager>;
  @useResult
  $Res call(
      {BuildContext context,
      StateSetter floatStateSetter,
      State<StatefulWidget> floatState});
}

/// @nodoc
class _$SearchSupportManagerCopyWithImpl<$Res,
        $Val extends SearchSupportManager>
    implements $SearchSupportManagerCopyWith<$Res> {
  _$SearchSupportManagerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? floatStateSetter = null,
    Object? floatState = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      floatStateSetter: null == floatStateSetter
          ? _value.floatStateSetter
          : floatStateSetter // ignore: cast_nullable_to_non_nullable
              as StateSetter,
      floatState: null == floatState
          ? _value.floatState
          : floatState // ignore: cast_nullable_to_non_nullable
              as State<StatefulWidget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchSupportManagerImplCopyWith<$Res> implements $SearchSupportManagerCopyWith<$Res> {
  factory _$$SearchSupportManagerImplCopyWith(
          _$SearchSupportManagerImpl value, $Res Function(_$SearchSupportManagerImpl) then) =
      __$$SearchSupportManagerImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({BuildContext context, StateSetter floatStateSetter, State<StatefulWidget> floatState});
}

/// @nodoc
class __$$SearchSupportManagerImplCopyWithImpl<$Res>
    extends _$SearchSupportManagerCopyWithImpl<$Res, _$SearchSupportManagerImpl>
    implements _$$SearchSupportManagerImplCopyWith<$Res> {
  __$$SearchSupportManagerImplCopyWithImpl(
      _$SearchSupportManagerImpl _value, $Res Function(_$SearchSupportManagerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? floatStateSetter = null,
    Object? floatState = null,
  }) {
    return _then(_$SearchSupportManagerImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      floatStateSetter: null == floatStateSetter
          ? _value.floatStateSetter
          : floatStateSetter // ignore: cast_nullable_to_non_nullable
              as StateSetter,
      floatState: null == floatState
          ? _value.floatState
          : floatState // ignore: cast_nullable_to_non_nullable
              as State<StatefulWidget>,
    ));
  }
}

/// @nodoc

class _$SearchSupportManagerImpl implements _SearchSupportManager {
  const _$SearchSupportManagerImpl({required this.context, required this.floatStateSetter, required this.floatState});

  @override
  final BuildContext context;
  @override
  final StateSetter floatStateSetter;
  @override
  final State<StatefulWidget> floatState;

  @override
  String toString() {
    return 'SearchSupportManager(context: $context, floatStateSetter: $floatStateSetter, floatState: $floatState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSupportManagerImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.floatStateSetter, floatStateSetter) ||
                other.floatStateSetter == floatStateSetter) &&
            (identical(other.floatState, floatState) ||
                other.floatState == floatState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, floatStateSetter, floatState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSupportManagerImplCopyWith<_$SearchSupportManagerImpl> get copyWith =>
      __$$SearchSupportManagerImplCopyWithImpl<_$SearchSupportManagerImpl>(this, _$identity);
}

abstract class _SearchSupportManager implements SearchSupportManager {
  const factory _SearchSupportManager(
      {required final BuildContext context,
      required final StateSetter floatStateSetter,
      required final State<StatefulWidget> floatState}) = _$SearchSupportManagerImpl;

  @override
  BuildContext get context;
  @override
  StateSetter get floatStateSetter;

  @override
  State<StatefulWidget> get floatState;

  @override
  @JsonKey(ignore: true)
  _$$SearchSupportManagerImplCopyWith<_$SearchSupportManagerImpl> get copyWith => throw _privateConstructorUsedError;
}
