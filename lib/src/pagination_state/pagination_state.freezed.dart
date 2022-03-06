// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaginationStateTearOff {
  const _$PaginationStateTearOff();

  _Data<T> data<T>(List<T> items) {
    return _Data<T>(
      items,
    );
  }

  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

  _Error<T> error<T>(Object? e, [StackTrace? stk]) {
    return _Error<T>(
      e,
      stk,
    );
  }

  _OnGoingLoading<T> onGoingLoading<T>(List<T> items) {
    return _OnGoingLoading<T>(
      items,
    );
  }

  _OnGoingError<T> onGoingError<T>(List<T> items, Object? e,
      [StackTrace? stk]) {
    return _OnGoingError<T>(
      items,
      e,
      stk,
    );
  }
}

/// @nodoc
const $PaginationState = _$PaginationStateTearOff();

/// @nodoc
mixin _$PaginationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> items) onGoingLoading,
    required TResult Function(List<T> items, Object? e, StackTrace? stk)
        onGoingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OnGoingError<T> value) onGoingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationStateCopyWith<T, $Res> {
  factory $PaginationStateCopyWith(
          PaginationState<T> value, $Res Function(PaginationState<T>) then) =
      _$PaginationStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PaginationStateCopyWithImpl<T, $Res>
    implements $PaginationStateCopyWith<T, $Res> {
  _$PaginationStateCopyWithImpl(this._value, this._then);

  final PaginationState<T> _value;
  // ignore: unused_field
  final $Res Function(PaginationState<T>) _then;
}

/// @nodoc
abstract class _$DataCopyWith<T, $Res> {
  factory _$DataCopyWith(_Data<T> value, $Res Function(_Data<T>) then) =
      __$DataCopyWithImpl<T, $Res>;
  $Res call({List<T> items});
}

/// @nodoc
class __$DataCopyWithImpl<T, $Res>
    extends _$PaginationStateCopyWithImpl<T, $Res>
    implements _$DataCopyWith<T, $Res> {
  __$DataCopyWithImpl(_Data<T> _value, $Res Function(_Data<T>) _then)
      : super(_value, (v) => _then(v as _Data<T>));

  @override
  _Data<T> get _value => super._value as _Data<T>;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_Data<T>(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_Data<T> implements _Data<T> {
  const _$_Data(this.items);

  @override
  final List<T> items;

  @override
  String toString() {
    return 'PaginationState<$T>.data(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data<T> &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<T, _Data<T>> get copyWith =>
      __$DataCopyWithImpl<T, _Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> items) onGoingLoading,
    required TResult Function(List<T> items, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return data(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
  }) {
    return data?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OnGoingError<T> value) onGoingError,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data<T> implements PaginationState<T> {
  const factory _Data(List<T> items) = _$_Data<T>;

  List<T> get items;
  @JsonKey(ignore: true)
  _$DataCopyWith<T, _Data<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res>
    extends _$PaginationStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'PaginationState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> items) onGoingLoading,
    required TResult Function(List<T> items, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OnGoingError<T> value) onGoingError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements PaginationState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$ErrorCopyWith<T, $Res> {
  factory _$ErrorCopyWith(_Error<T> value, $Res Function(_Error<T>) then) =
      __$ErrorCopyWithImpl<T, $Res>;
  $Res call({Object? e, StackTrace? stk});
}

/// @nodoc
class __$ErrorCopyWithImpl<T, $Res>
    extends _$PaginationStateCopyWithImpl<T, $Res>
    implements _$ErrorCopyWith<T, $Res> {
  __$ErrorCopyWithImpl(_Error<T> _value, $Res Function(_Error<T>) _then)
      : super(_value, (v) => _then(v as _Error<T>));

  @override
  _Error<T> get _value => super._value as _Error<T>;

  @override
  $Res call({
    Object? e = freezed,
    Object? stk = freezed,
  }) {
    return _then(_Error<T>(
      e == freezed ? _value.e : e,
      stk == freezed
          ? _value.stk
          : stk // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_Error<T> implements _Error<T> {
  const _$_Error(this.e, [this.stk]);

  @override
  final Object? e;
  @override
  final StackTrace? stk;

  @override
  String toString() {
    return 'PaginationState<$T>.error(e: $e, stk: $stk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error<T> &&
            const DeepCollectionEquality().equals(other.e, e) &&
            const DeepCollectionEquality().equals(other.stk, stk));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(e),
      const DeepCollectionEquality().hash(stk));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      __$ErrorCopyWithImpl<T, _Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> items) onGoingLoading,
    required TResult Function(List<T> items, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return error(e, stk);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
  }) {
    return error?.call(e, stk);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e, stk);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OnGoingError<T> value) onGoingError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements PaginationState<T> {
  const factory _Error(Object? e, [StackTrace? stk]) = _$_Error<T>;

  Object? get e;
  StackTrace? get stk;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGoingLoadingCopyWith<T, $Res> {
  factory _$OnGoingLoadingCopyWith(
          _OnGoingLoading<T> value, $Res Function(_OnGoingLoading<T>) then) =
      __$OnGoingLoadingCopyWithImpl<T, $Res>;
  $Res call({List<T> items});
}

/// @nodoc
class __$OnGoingLoadingCopyWithImpl<T, $Res>
    extends _$PaginationStateCopyWithImpl<T, $Res>
    implements _$OnGoingLoadingCopyWith<T, $Res> {
  __$OnGoingLoadingCopyWithImpl(
      _OnGoingLoading<T> _value, $Res Function(_OnGoingLoading<T>) _then)
      : super(_value, (v) => _then(v as _OnGoingLoading<T>));

  @override
  _OnGoingLoading<T> get _value => super._value as _OnGoingLoading<T>;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_OnGoingLoading<T>(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_OnGoingLoading<T> implements _OnGoingLoading<T> {
  const _$_OnGoingLoading(this.items);

  @override
  final List<T> items;

  @override
  String toString() {
    return 'PaginationState<$T>.onGoingLoading(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnGoingLoading<T> &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$OnGoingLoadingCopyWith<T, _OnGoingLoading<T>> get copyWith =>
      __$OnGoingLoadingCopyWithImpl<T, _OnGoingLoading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> items) onGoingLoading,
    required TResult Function(List<T> items, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return onGoingLoading(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
  }) {
    return onGoingLoading?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (onGoingLoading != null) {
      return onGoingLoading(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OnGoingError<T> value) onGoingError,
  }) {
    return onGoingLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
  }) {
    return onGoingLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (onGoingLoading != null) {
      return onGoingLoading(this);
    }
    return orElse();
  }
}

abstract class _OnGoingLoading<T> implements PaginationState<T> {
  const factory _OnGoingLoading(List<T> items) = _$_OnGoingLoading<T>;

  List<T> get items;
  @JsonKey(ignore: true)
  _$OnGoingLoadingCopyWith<T, _OnGoingLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGoingErrorCopyWith<T, $Res> {
  factory _$OnGoingErrorCopyWith(
          _OnGoingError<T> value, $Res Function(_OnGoingError<T>) then) =
      __$OnGoingErrorCopyWithImpl<T, $Res>;
  $Res call({List<T> items, Object? e, StackTrace? stk});
}

/// @nodoc
class __$OnGoingErrorCopyWithImpl<T, $Res>
    extends _$PaginationStateCopyWithImpl<T, $Res>
    implements _$OnGoingErrorCopyWith<T, $Res> {
  __$OnGoingErrorCopyWithImpl(
      _OnGoingError<T> _value, $Res Function(_OnGoingError<T>) _then)
      : super(_value, (v) => _then(v as _OnGoingError<T>));

  @override
  _OnGoingError<T> get _value => super._value as _OnGoingError<T>;

  @override
  $Res call({
    Object? items = freezed,
    Object? e = freezed,
    Object? stk = freezed,
  }) {
    return _then(_OnGoingError<T>(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      e == freezed ? _value.e : e,
      stk == freezed
          ? _value.stk
          : stk // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_OnGoingError<T> implements _OnGoingError<T> {
  const _$_OnGoingError(this.items, this.e, [this.stk]);

  @override
  final List<T> items;
  @override
  final Object? e;
  @override
  final StackTrace? stk;

  @override
  String toString() {
    return 'PaginationState<$T>.onGoingError(items: $items, e: $e, stk: $stk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnGoingError<T> &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.e, e) &&
            const DeepCollectionEquality().equals(other.stk, stk));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(e),
      const DeepCollectionEquality().hash(stk));

  @JsonKey(ignore: true)
  @override
  _$OnGoingErrorCopyWith<T, _OnGoingError<T>> get copyWith =>
      __$OnGoingErrorCopyWithImpl<T, _OnGoingError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<T> items) data,
    required TResult Function() loading,
    required TResult Function(Object? e, StackTrace? stk) error,
    required TResult Function(List<T> items) onGoingLoading,
    required TResult Function(List<T> items, Object? e, StackTrace? stk)
        onGoingError,
  }) {
    return onGoingError(items, e, stk);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
  }) {
    return onGoingError?.call(items, e, stk);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<T> items)? data,
    TResult Function()? loading,
    TResult Function(Object? e, StackTrace? stk)? error,
    TResult Function(List<T> items)? onGoingLoading,
    TResult Function(List<T> items, Object? e, StackTrace? stk)? onGoingError,
    required TResult orElse(),
  }) {
    if (onGoingError != null) {
      return onGoingError(items, e, stk);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data<T> value) data,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Error<T> value) error,
    required TResult Function(_OnGoingLoading<T> value) onGoingLoading,
    required TResult Function(_OnGoingError<T> value) onGoingError,
  }) {
    return onGoingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
  }) {
    return onGoingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data<T> value)? data,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Error<T> value)? error,
    TResult Function(_OnGoingLoading<T> value)? onGoingLoading,
    TResult Function(_OnGoingError<T> value)? onGoingError,
    required TResult orElse(),
  }) {
    if (onGoingError != null) {
      return onGoingError(this);
    }
    return orElse();
  }
}

abstract class _OnGoingError<T> implements PaginationState<T> {
  const factory _OnGoingError(List<T> items, Object? e, [StackTrace? stk]) =
      _$_OnGoingError<T>;

  List<T> get items;
  Object? get e;
  StackTrace? get stk;
  @JsonKey(ignore: true)
  _$OnGoingErrorCopyWith<T, _OnGoingError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
