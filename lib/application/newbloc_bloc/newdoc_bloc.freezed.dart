// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'newdoc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewdocEvent {
  String get docname => throw _privateConstructorUsedError;
  String get docSubject => throw _privateConstructorUsedError;
  String get docContent => throw _privateConstructorUsedError;
  List<String> get recipients => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String docname, String docSubject,
            String docContent, List<String> recipients)
        createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String docname, String docSubject, String docContent,
            List<String> recipients)?
        createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String docname, String docSubject, String docContent,
            List<String> recipients)?
        createButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createButtonPressed value) createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createButtonPressed value)? createButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createButtonPressed value)? createButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NewdocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewdocEventCopyWith<NewdocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewdocEventCopyWith<$Res> {
  factory $NewdocEventCopyWith(
          NewdocEvent value, $Res Function(NewdocEvent) then) =
      _$NewdocEventCopyWithImpl<$Res, NewdocEvent>;
  @useResult
  $Res call(
      {String docname,
      String docSubject,
      String docContent,
      List<String> recipients});
}

/// @nodoc
class _$NewdocEventCopyWithImpl<$Res, $Val extends NewdocEvent>
    implements $NewdocEventCopyWith<$Res> {
  _$NewdocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewdocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docname = null,
    Object? docSubject = null,
    Object? docContent = null,
    Object? recipients = null,
  }) {
    return _then(_value.copyWith(
      docname: null == docname
          ? _value.docname
          : docname // ignore: cast_nullable_to_non_nullable
              as String,
      docSubject: null == docSubject
          ? _value.docSubject
          : docSubject // ignore: cast_nullable_to_non_nullable
              as String,
      docContent: null == docContent
          ? _value.docContent
          : docContent // ignore: cast_nullable_to_non_nullable
              as String,
      recipients: null == recipients
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$createButtonPressedImplCopyWith<$Res>
    implements $NewdocEventCopyWith<$Res> {
  factory _$$createButtonPressedImplCopyWith(_$createButtonPressedImpl value,
          $Res Function(_$createButtonPressedImpl) then) =
      __$$createButtonPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String docname,
      String docSubject,
      String docContent,
      List<String> recipients});
}

/// @nodoc
class __$$createButtonPressedImplCopyWithImpl<$Res>
    extends _$NewdocEventCopyWithImpl<$Res, _$createButtonPressedImpl>
    implements _$$createButtonPressedImplCopyWith<$Res> {
  __$$createButtonPressedImplCopyWithImpl(_$createButtonPressedImpl _value,
      $Res Function(_$createButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewdocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docname = null,
    Object? docSubject = null,
    Object? docContent = null,
    Object? recipients = null,
  }) {
    return _then(_$createButtonPressedImpl(
      docname: null == docname
          ? _value.docname
          : docname // ignore: cast_nullable_to_non_nullable
              as String,
      docSubject: null == docSubject
          ? _value.docSubject
          : docSubject // ignore: cast_nullable_to_non_nullable
              as String,
      docContent: null == docContent
          ? _value.docContent
          : docContent // ignore: cast_nullable_to_non_nullable
              as String,
      recipients: null == recipients
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$createButtonPressedImpl implements _createButtonPressed {
  const _$createButtonPressedImpl(
      {required this.docname,
      required this.docSubject,
      required this.docContent,
      required final List<String> recipients})
      : _recipients = recipients;

  @override
  final String docname;
  @override
  final String docSubject;
  @override
  final String docContent;
  final List<String> _recipients;
  @override
  List<String> get recipients {
    if (_recipients is EqualUnmodifiableListView) return _recipients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipients);
  }

  @override
  String toString() {
    return 'NewdocEvent.createButtonPressed(docname: $docname, docSubject: $docSubject, docContent: $docContent, recipients: $recipients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$createButtonPressedImpl &&
            (identical(other.docname, docname) || other.docname == docname) &&
            (identical(other.docSubject, docSubject) ||
                other.docSubject == docSubject) &&
            (identical(other.docContent, docContent) ||
                other.docContent == docContent) &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients));
  }

  @override
  int get hashCode => Object.hash(runtimeType, docname, docSubject, docContent,
      const DeepCollectionEquality().hash(_recipients));

  /// Create a copy of NewdocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$createButtonPressedImplCopyWith<_$createButtonPressedImpl> get copyWith =>
      __$$createButtonPressedImplCopyWithImpl<_$createButtonPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String docname, String docSubject,
            String docContent, List<String> recipients)
        createButtonPressed,
  }) {
    return createButtonPressed(docname, docSubject, docContent, recipients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String docname, String docSubject, String docContent,
            List<String> recipients)?
        createButtonPressed,
  }) {
    return createButtonPressed?.call(
        docname, docSubject, docContent, recipients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String docname, String docSubject, String docContent,
            List<String> recipients)?
        createButtonPressed,
    required TResult orElse(),
  }) {
    if (createButtonPressed != null) {
      return createButtonPressed(docname, docSubject, docContent, recipients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createButtonPressed value) createButtonPressed,
  }) {
    return createButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createButtonPressed value)? createButtonPressed,
  }) {
    return createButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createButtonPressed value)? createButtonPressed,
    required TResult orElse(),
  }) {
    if (createButtonPressed != null) {
      return createButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _createButtonPressed implements NewdocEvent {
  const factory _createButtonPressed(
      {required final String docname,
      required final String docSubject,
      required final String docContent,
      required final List<String> recipients}) = _$createButtonPressedImpl;

  @override
  String get docname;
  @override
  String get docSubject;
  @override
  String get docContent;
  @override
  List<String> get recipients;

  /// Create a copy of NewdocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$createButtonPressedImplCopyWith<_$createButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewdocState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get docname => throw _privateConstructorUsedError;
  String get docSubject => throw _privateConstructorUsedError;
  String get docContent => throw _privateConstructorUsedError;
  List<String> get recipients => throw _privateConstructorUsedError;
  Option<Either<DocFailures, Unit>> get successFailure =>
      throw _privateConstructorUsedError;

  /// Create a copy of NewdocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewdocStateCopyWith<NewdocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewdocStateCopyWith<$Res> {
  factory $NewdocStateCopyWith(
          NewdocState value, $Res Function(NewdocState) then) =
      _$NewdocStateCopyWithImpl<$Res, NewdocState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      String docname,
      String docSubject,
      String docContent,
      List<String> recipients,
      Option<Either<DocFailures, Unit>> successFailure});
}

/// @nodoc
class _$NewdocStateCopyWithImpl<$Res, $Val extends NewdocState>
    implements $NewdocStateCopyWith<$Res> {
  _$NewdocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewdocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? docname = null,
    Object? docSubject = null,
    Object? docContent = null,
    Object? recipients = null,
    Object? successFailure = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      docname: null == docname
          ? _value.docname
          : docname // ignore: cast_nullable_to_non_nullable
              as String,
      docSubject: null == docSubject
          ? _value.docSubject
          : docSubject // ignore: cast_nullable_to_non_nullable
              as String,
      docContent: null == docContent
          ? _value.docContent
          : docContent // ignore: cast_nullable_to_non_nullable
              as String,
      recipients: null == recipients
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      successFailure: null == successFailure
          ? _value.successFailure
          : successFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<DocFailures, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewdocStateImplCopyWith<$Res>
    implements $NewdocStateCopyWith<$Res> {
  factory _$$NewdocStateImplCopyWith(
          _$NewdocStateImpl value, $Res Function(_$NewdocStateImpl) then) =
      __$$NewdocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      String docname,
      String docSubject,
      String docContent,
      List<String> recipients,
      Option<Either<DocFailures, Unit>> successFailure});
}

/// @nodoc
class __$$NewdocStateImplCopyWithImpl<$Res>
    extends _$NewdocStateCopyWithImpl<$Res, _$NewdocStateImpl>
    implements _$$NewdocStateImplCopyWith<$Res> {
  __$$NewdocStateImplCopyWithImpl(
      _$NewdocStateImpl _value, $Res Function(_$NewdocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewdocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? docname = null,
    Object? docSubject = null,
    Object? docContent = null,
    Object? recipients = null,
    Object? successFailure = null,
  }) {
    return _then(_$NewdocStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      docname: null == docname
          ? _value.docname
          : docname // ignore: cast_nullable_to_non_nullable
              as String,
      docSubject: null == docSubject
          ? _value.docSubject
          : docSubject // ignore: cast_nullable_to_non_nullable
              as String,
      docContent: null == docContent
          ? _value.docContent
          : docContent // ignore: cast_nullable_to_non_nullable
              as String,
      recipients: null == recipients
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      successFailure: null == successFailure
          ? _value.successFailure
          : successFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<DocFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$NewdocStateImpl implements _NewdocState {
  const _$NewdocStateImpl(
      {required this.isSubmitting,
      required this.docname,
      required this.docSubject,
      required this.docContent,
      required final List<String> recipients,
      required this.successFailure})
      : _recipients = recipients;

  @override
  final bool isSubmitting;
  @override
  final String docname;
  @override
  final String docSubject;
  @override
  final String docContent;
  final List<String> _recipients;
  @override
  List<String> get recipients {
    if (_recipients is EqualUnmodifiableListView) return _recipients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipients);
  }

  @override
  final Option<Either<DocFailures, Unit>> successFailure;

  @override
  String toString() {
    return 'NewdocState(isSubmitting: $isSubmitting, docname: $docname, docSubject: $docSubject, docContent: $docContent, recipients: $recipients, successFailure: $successFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewdocStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.docname, docname) || other.docname == docname) &&
            (identical(other.docSubject, docSubject) ||
                other.docSubject == docSubject) &&
            (identical(other.docContent, docContent) ||
                other.docContent == docContent) &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients) &&
            (identical(other.successFailure, successFailure) ||
                other.successFailure == successFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubmitting,
      docname,
      docSubject,
      docContent,
      const DeepCollectionEquality().hash(_recipients),
      successFailure);

  /// Create a copy of NewdocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewdocStateImplCopyWith<_$NewdocStateImpl> get copyWith =>
      __$$NewdocStateImplCopyWithImpl<_$NewdocStateImpl>(this, _$identity);
}

abstract class _NewdocState implements NewdocState {
  const factory _NewdocState(
          {required final bool isSubmitting,
          required final String docname,
          required final String docSubject,
          required final String docContent,
          required final List<String> recipients,
          required final Option<Either<DocFailures, Unit>> successFailure}) =
      _$NewdocStateImpl;

  @override
  bool get isSubmitting;
  @override
  String get docname;
  @override
  String get docSubject;
  @override
  String get docContent;
  @override
  List<String> get recipients;
  @override
  Option<Either<DocFailures, Unit>> get successFailure;

  /// Create a copy of NewdocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewdocStateImplCopyWith<_$NewdocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
