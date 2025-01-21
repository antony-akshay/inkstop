// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? errorOccured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ErrorOccured value) errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(ErrorOccured value)? errorOccured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationFailuresCopyWith<$Res> {
  factory $NotificationFailuresCopyWith(NotificationFailures value,
          $Res Function(NotificationFailures) then) =
      _$NotificationFailuresCopyWithImpl<$Res, NotificationFailures>;
}

/// @nodoc
class _$NotificationFailuresCopyWithImpl<$Res,
        $Val extends NotificationFailures>
    implements $NotificationFailuresCopyWith<$Res> {
  _$NotificationFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationFailures
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$NotificationFailuresCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationFailures
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl();

  @override
  String toString() {
    return 'NotificationFailures.serverFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() errorOccured,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? errorOccured,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? errorOccured,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ErrorOccured value) errorOccured,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(ErrorOccured value)? errorOccured,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements NotificationFailures {
  const factory ServerFailure() = _$ServerFailureImpl;
}

/// @nodoc
abstract class _$$ErrorOccuredImplCopyWith<$Res> {
  factory _$$ErrorOccuredImplCopyWith(
          _$ErrorOccuredImpl value, $Res Function(_$ErrorOccuredImpl) then) =
      __$$ErrorOccuredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorOccuredImplCopyWithImpl<$Res>
    extends _$NotificationFailuresCopyWithImpl<$Res, _$ErrorOccuredImpl>
    implements _$$ErrorOccuredImplCopyWith<$Res> {
  __$$ErrorOccuredImplCopyWithImpl(
      _$ErrorOccuredImpl _value, $Res Function(_$ErrorOccuredImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationFailures
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorOccuredImpl implements ErrorOccured {
  const _$ErrorOccuredImpl();

  @override
  String toString() {
    return 'NotificationFailures.errorOccured()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorOccuredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() errorOccured,
  }) {
    return errorOccured();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? errorOccured,
  }) {
    return errorOccured?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? errorOccured,
    required TResult orElse(),
  }) {
    if (errorOccured != null) {
      return errorOccured();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(ErrorOccured value) errorOccured,
  }) {
    return errorOccured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(ErrorOccured value)? errorOccured,
  }) {
    return errorOccured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(ErrorOccured value)? errorOccured,
    required TResult orElse(),
  }) {
    if (errorOccured != null) {
      return errorOccured(this);
    }
    return orElse();
  }
}

abstract class ErrorOccured implements NotificationFailures {
  const factory ErrorOccured() = _$ErrorOccuredImpl;
}
