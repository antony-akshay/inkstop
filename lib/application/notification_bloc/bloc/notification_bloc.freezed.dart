// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEvent {
  String get username => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String status, String docId)
        updateStatus,
    required TResult Function(String username) fetchNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String status, String docId)?
        updateStatus,
    TResult? Function(String username)? fetchNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String status, String docId)?
        updateStatus,
    TResult Function(String username)? fetchNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateStatus value) updateStatus,
    required TResult Function(_fetchNotification value) fetchNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateStatus value)? updateStatus,
    TResult? Function(_fetchNotification value)? fetchNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateStatus value)? updateStatus,
    TResult Function(_fetchNotification value)? fetchNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationEventCopyWith<NotificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$updateStatusImplCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$$updateStatusImplCopyWith(
          _$updateStatusImpl value, $Res Function(_$updateStatusImpl) then) =
      __$$updateStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String status, String docId});
}

/// @nodoc
class __$$updateStatusImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$updateStatusImpl>
    implements _$$updateStatusImplCopyWith<$Res> {
  __$$updateStatusImplCopyWithImpl(
      _$updateStatusImpl _value, $Res Function(_$updateStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? status = null,
    Object? docId = null,
  }) {
    return _then(_$updateStatusImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$updateStatusImpl with DiagnosticableTreeMixin implements _updateStatus {
  const _$updateStatusImpl(
      {required this.username, required this.status, required this.docId});

  @override
  final String username;
  @override
  final String status;
  @override
  final String docId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.updateStatus(username: $username, status: $status, docId: $docId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationEvent.updateStatus'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('docId', docId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateStatusImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.docId, docId) || other.docId == docId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, status, docId);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$updateStatusImplCopyWith<_$updateStatusImpl> get copyWith =>
      __$$updateStatusImplCopyWithImpl<_$updateStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String status, String docId)
        updateStatus,
    required TResult Function(String username) fetchNotification,
  }) {
    return updateStatus(username, status, docId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String status, String docId)?
        updateStatus,
    TResult? Function(String username)? fetchNotification,
  }) {
    return updateStatus?.call(username, status, docId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String status, String docId)?
        updateStatus,
    TResult Function(String username)? fetchNotification,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(username, status, docId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateStatus value) updateStatus,
    required TResult Function(_fetchNotification value) fetchNotification,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateStatus value)? updateStatus,
    TResult? Function(_fetchNotification value)? fetchNotification,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateStatus value)? updateStatus,
    TResult Function(_fetchNotification value)? fetchNotification,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class _updateStatus implements NotificationEvent {
  const factory _updateStatus(
      {required final String username,
      required final String status,
      required final String docId}) = _$updateStatusImpl;

  @override
  String get username;
  String get status;
  String get docId;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$updateStatusImplCopyWith<_$updateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$fetchNotificationImplCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$$fetchNotificationImplCopyWith(_$fetchNotificationImpl value,
          $Res Function(_$fetchNotificationImpl) then) =
      __$$fetchNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$fetchNotificationImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$fetchNotificationImpl>
    implements _$$fetchNotificationImplCopyWith<$Res> {
  __$$fetchNotificationImplCopyWithImpl(_$fetchNotificationImpl _value,
      $Res Function(_$fetchNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$fetchNotificationImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$fetchNotificationImpl
    with DiagnosticableTreeMixin
    implements _fetchNotification {
  const _$fetchNotificationImpl({required this.username});

  @override
  final String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.fetchNotification(username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationEvent.fetchNotification'))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fetchNotificationImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$fetchNotificationImplCopyWith<_$fetchNotificationImpl> get copyWith =>
      __$$fetchNotificationImplCopyWithImpl<_$fetchNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String status, String docId)
        updateStatus,
    required TResult Function(String username) fetchNotification,
  }) {
    return fetchNotification(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String status, String docId)?
        updateStatus,
    TResult? Function(String username)? fetchNotification,
  }) {
    return fetchNotification?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String status, String docId)?
        updateStatus,
    TResult Function(String username)? fetchNotification,
    required TResult orElse(),
  }) {
    if (fetchNotification != null) {
      return fetchNotification(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_updateStatus value) updateStatus,
    required TResult Function(_fetchNotification value) fetchNotification,
  }) {
    return fetchNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_updateStatus value)? updateStatus,
    TResult? Function(_fetchNotification value)? fetchNotification,
  }) {
    return fetchNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_updateStatus value)? updateStatus,
    TResult Function(_fetchNotification value)? fetchNotification,
    required TResult orElse(),
  }) {
    if (fetchNotification != null) {
      return fetchNotification(this);
    }
    return orElse();
  }
}

abstract class _fetchNotification implements NotificationEvent {
  const factory _fetchNotification({required final String username}) =
      _$fetchNotificationImpl;

  @override
  String get username;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$fetchNotificationImplCopyWith<_$fetchNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  List<NotificationModel> get model => throw _privateConstructorUsedError;
  Option<Either<NotificationFailures, Unit>> get successorFailure =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {List<NotificationModel> model,
      Option<Either<NotificationFailures, Unit>> successorFailure,
      bool isFetching});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? successorFailure = null,
    Object? isFetching = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<NotificationFailures, Unit>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NotificationModel> model,
      Option<Either<NotificationFailures, Unit>> successorFailure,
      bool isFetching});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? successorFailure = null,
    Object? isFetching = null,
  }) {
    return _then(_$NotificationStateImpl(
      model: null == model
          ? _value._model
          : model // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      successorFailure: null == successorFailure
          ? _value.successorFailure
          : successorFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<NotificationFailures, Unit>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl
    with DiagnosticableTreeMixin
    implements _NotificationState {
  const _$NotificationStateImpl(
      {required final List<NotificationModel> model,
      required this.successorFailure,
      required this.isFetching})
      : _model = model;

  final List<NotificationModel> _model;
  @override
  List<NotificationModel> get model {
    if (_model is EqualUnmodifiableListView) return _model;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_model);
  }

  @override
  final Option<Either<NotificationFailures, Unit>> successorFailure;
  @override
  final bool isFetching;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState(model: $model, successorFailure: $successorFailure, isFetching: $isFetching)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationState'))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('successorFailure', successorFailure))
      ..add(DiagnosticsProperty('isFetching', isFetching));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            const DeepCollectionEquality().equals(other._model, _model) &&
            (identical(other.successorFailure, successorFailure) ||
                other.successorFailure == successorFailure) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_model),
      successorFailure,
      isFetching);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {required final List<NotificationModel> model,
      required final Option<Either<NotificationFailures, Unit>>
          successorFailure,
      required final bool isFetching}) = _$NotificationStateImpl;

  @override
  List<NotificationModel> get model;
  @override
  Option<Either<NotificationFailures, Unit>> get successorFailure;
  @override
  bool get isFetching;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
