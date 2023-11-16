// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_selection_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PictureSelectionItemModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) file,
    required TResult Function(String url) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? file,
    TResult? Function(String url)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? file,
    TResult Function(String url)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(XXFile value) file,
    required TResult Function(XXImage value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(XXFile value)? file,
    TResult? Function(XXImage value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(XXFile value)? file,
    TResult Function(XXImage value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureSelectionItemModelCopyWith<$Res> {
  factory $PictureSelectionItemModelCopyWith(PictureSelectionItemModel value,
          $Res Function(PictureSelectionItemModel) then) =
      _$PictureSelectionItemModelCopyWithImpl<$Res, PictureSelectionItemModel>;
}

/// @nodoc
class _$PictureSelectionItemModelCopyWithImpl<$Res,
        $Val extends PictureSelectionItemModel>
    implements $PictureSelectionItemModelCopyWith<$Res> {
  _$PictureSelectionItemModelCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$XXFileImplCopyWith<$Res> {
  factory _$$XXFileImplCopyWith(_$XXFileImpl value, $Res Function(_$XXFileImpl) then) =
      __$$XXFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$XXFileImplCopyWithImpl<$Res> extends _$PictureSelectionItemModelCopyWithImpl<$Res, _$XXFileImpl>
    implements _$$XXFileImplCopyWith<$Res> {
  __$$XXFileImplCopyWithImpl(_$XXFileImpl _value, $Res Function(_$XXFileImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$XXFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$XXFileImpl extends XXFile {
  _$XXFileImpl({required this.file}) : super._();

  @override
  final File file;

  @override
  String toString() {
    return 'PictureSelectionItemModel.file(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XXFileImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$XXFileImplCopyWith<_$XXFileImpl> get copyWith => __$$XXFileImplCopyWithImpl<_$XXFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) file,
    required TResult Function(String url) network,
  }) {
    return file(this.file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? file,
    TResult? Function(String url)? network,
  }) {
    return file?.call(this.file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? file,
    TResult Function(String url)? network,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this.file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(XXFile value) file,
    required TResult Function(XXImage value) network,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(XXFile value)? file,
    TResult? Function(XXImage value)? network,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(XXFile value)? file,
    TResult Function(XXImage value)? network,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class XXFile extends PictureSelectionItemModel {
  factory XXFile({required final File file}) = _$XXFileImpl;
  XXFile._() : super._();

  File get file;
  @JsonKey(ignore: true)
  _$$XXFileImplCopyWith<_$XXFileImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$XXImageImplCopyWith<$Res> {
  factory _$$XXImageImplCopyWith(_$XXImageImpl value, $Res Function(_$XXImageImpl) then) =
      __$$XXImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$XXImageImplCopyWithImpl<$Res> extends _$PictureSelectionItemModelCopyWithImpl<$Res, _$XXImageImpl>
    implements _$$XXImageImplCopyWith<$Res> {
  __$$XXImageImplCopyWithImpl(_$XXImageImpl _value, $Res Function(_$XXImageImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$XXImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$XXImageImpl extends XXImage {
  _$XXImageImpl({required this.url}) : super._();

  @override
  final String url;

  @override
  String toString() {
    return 'PictureSelectionItemModel.network(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$XXImageImpl && (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$XXImageImplCopyWith<_$XXImageImpl> get copyWith => __$$XXImageImplCopyWithImpl<_$XXImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) file,
    required TResult Function(String url) network,
  }) {
    return network(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? file,
    TResult? Function(String url)? network,
  }) {
    return network?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? file,
    TResult Function(String url)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(XXFile value) file,
    required TResult Function(XXImage value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(XXFile value)? file,
    TResult? Function(XXImage value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(XXFile value)? file,
    TResult Function(XXImage value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class XXImage extends PictureSelectionItemModel {
  factory XXImage({required final String url}) = _$XXImageImpl;
  XXImage._() : super._();

  String get url;
  @JsonKey(ignore: true)
  _$$XXImageImplCopyWith<_$XXImageImpl> get copyWith => throw _privateConstructorUsedError;
}
