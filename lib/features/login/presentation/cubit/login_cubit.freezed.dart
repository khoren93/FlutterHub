// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FormzSubmissionStatus status, bool isValid, String? message)
        oauth,
    required TResult Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)
        personal,
    required TResult Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)
        basic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FormzSubmissionStatus status, bool isValid, String? message)?
        oauth,
    TResult? Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)?
        personal,
    TResult? Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)?
        basic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FormzSubmissionStatus status, bool isValid, String? message)?
        oauth,
    TResult Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)?
        personal,
    TResult Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)?
        basic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OAuth value) oauth,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Basic value) basic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OAuth value)? oauth,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Basic value)? basic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OAuth value)? oauth,
    TResult Function(_Personal value)? personal,
    TResult Function(_Basic value)? basic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({FormzSubmissionStatus status, bool isValid, String? message});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OAuthImplCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$OAuthImplCopyWith(
          _$OAuthImpl value, $Res Function(_$OAuthImpl) then) =
      __$$OAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzSubmissionStatus status, bool isValid, String? message});
}

/// @nodoc
class __$$OAuthImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$OAuthImpl>
    implements _$$OAuthImplCopyWith<$Res> {
  __$$OAuthImplCopyWithImpl(
      _$OAuthImpl _value, $Res Function(_$OAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$OAuthImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OAuthImpl with DiagnosticableTreeMixin implements _OAuth {
  const _$OAuthImpl(
      {this.status = FormzSubmissionStatus.initial,
      this.isValid = false,
      this.message});

  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.oauth(status: $status, isValid: $isValid, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.oauth'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isValid', isValid))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuthImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuthImplCopyWith<_$OAuthImpl> get copyWith =>
      __$$OAuthImplCopyWithImpl<_$OAuthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FormzSubmissionStatus status, bool isValid, String? message)
        oauth,
    required TResult Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)
        personal,
    required TResult Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)
        basic,
  }) {
    return oauth(status, isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FormzSubmissionStatus status, bool isValid, String? message)?
        oauth,
    TResult? Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)?
        personal,
    TResult? Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)?
        basic,
  }) {
    return oauth?.call(status, isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FormzSubmissionStatus status, bool isValid, String? message)?
        oauth,
    TResult Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)?
        personal,
    TResult Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)?
        basic,
    required TResult orElse(),
  }) {
    if (oauth != null) {
      return oauth(status, isValid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OAuth value) oauth,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Basic value) basic,
  }) {
    return oauth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OAuth value)? oauth,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Basic value)? basic,
  }) {
    return oauth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OAuth value)? oauth,
    TResult Function(_Personal value)? personal,
    TResult Function(_Basic value)? basic,
    required TResult orElse(),
  }) {
    if (oauth != null) {
      return oauth(this);
    }
    return orElse();
  }
}

abstract class _OAuth implements LoginState {
  const factory _OAuth(
      {final FormzSubmissionStatus status,
      final bool isValid,
      final String? message}) = _$OAuthImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$OAuthImplCopyWith<_$OAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonalImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$PersonalImplCopyWith(
          _$PersonalImpl value, $Res Function(_$PersonalImpl) then) =
      __$$PersonalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      bool isValid,
      PersonalToken token,
      String? message});
}

/// @nodoc
class __$$PersonalImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$PersonalImpl>
    implements _$$PersonalImplCopyWith<$Res> {
  __$$PersonalImplCopyWithImpl(
      _$PersonalImpl _value, $Res Function(_$PersonalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isValid = null,
    Object? token = null,
    Object? message = freezed,
  }) {
    return _then(_$PersonalImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as PersonalToken,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PersonalImpl with DiagnosticableTreeMixin implements _Personal {
  const _$PersonalImpl(
      {this.status = FormzSubmissionStatus.initial,
      this.isValid = false,
      this.token = const PersonalToken.pure(),
      this.message});

  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final PersonalToken token;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.personal(status: $status, isValid: $isValid, token: $token, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.personal'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isValid', isValid))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isValid, token, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalImplCopyWith<_$PersonalImpl> get copyWith =>
      __$$PersonalImplCopyWithImpl<_$PersonalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FormzSubmissionStatus status, bool isValid, String? message)
        oauth,
    required TResult Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)
        personal,
    required TResult Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)
        basic,
  }) {
    return personal(status, isValid, token, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FormzSubmissionStatus status, bool isValid, String? message)?
        oauth,
    TResult? Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)?
        personal,
    TResult? Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)?
        basic,
  }) {
    return personal?.call(status, isValid, token, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FormzSubmissionStatus status, bool isValid, String? message)?
        oauth,
    TResult Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)?
        personal,
    TResult Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)?
        basic,
    required TResult orElse(),
  }) {
    if (personal != null) {
      return personal(status, isValid, token, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OAuth value) oauth,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Basic value) basic,
  }) {
    return personal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OAuth value)? oauth,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Basic value)? basic,
  }) {
    return personal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OAuth value)? oauth,
    TResult Function(_Personal value)? personal,
    TResult Function(_Basic value)? basic,
    required TResult orElse(),
  }) {
    if (personal != null) {
      return personal(this);
    }
    return orElse();
  }
}

abstract class _Personal implements LoginState {
  const factory _Personal(
      {final FormzSubmissionStatus status,
      final bool isValid,
      final PersonalToken token,
      final String? message}) = _$PersonalImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  bool get isValid;
  PersonalToken get token;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PersonalImplCopyWith<_$PersonalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BasicImplCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$BasicImplCopyWith(
          _$BasicImpl value, $Res Function(_$BasicImpl) then) =
      __$$BasicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      bool isValid,
      Username username,
      Password password,
      String? message});
}

/// @nodoc
class __$$BasicImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$BasicImpl>
    implements _$$BasicImplCopyWith<$Res> {
  __$$BasicImplCopyWithImpl(
      _$BasicImpl _value, $Res Function(_$BasicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isValid = null,
    Object? username = null,
    Object? password = null,
    Object? message = freezed,
  }) {
    return _then(_$BasicImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BasicImpl with DiagnosticableTreeMixin implements _Basic {
  const _$BasicImpl(
      {this.status = FormzSubmissionStatus.initial,
      this.isValid = false,
      this.username = const Username.pure(),
      this.password = const Password.pure(),
      this.message});

  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final Username username;
  @override
  @JsonKey()
  final Password password;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.basic(status: $status, isValid: $isValid, username: $username, password: $password, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.basic'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('isValid', isValid))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, isValid, username, password, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicImplCopyWith<_$BasicImpl> get copyWith =>
      __$$BasicImplCopyWithImpl<_$BasicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FormzSubmissionStatus status, bool isValid, String? message)
        oauth,
    required TResult Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)
        personal,
    required TResult Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)
        basic,
  }) {
    return basic(status, isValid, username, password, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            FormzSubmissionStatus status, bool isValid, String? message)?
        oauth,
    TResult? Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)?
        personal,
    TResult? Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)?
        basic,
  }) {
    return basic?.call(status, isValid, username, password, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FormzSubmissionStatus status, bool isValid, String? message)?
        oauth,
    TResult Function(FormzSubmissionStatus status, bool isValid,
            PersonalToken token, String? message)?
        personal,
    TResult Function(FormzSubmissionStatus status, bool isValid,
            Username username, Password password, String? message)?
        basic,
    required TResult orElse(),
  }) {
    if (basic != null) {
      return basic(status, isValid, username, password, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OAuth value) oauth,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Basic value) basic,
  }) {
    return basic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OAuth value)? oauth,
    TResult? Function(_Personal value)? personal,
    TResult? Function(_Basic value)? basic,
  }) {
    return basic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OAuth value)? oauth,
    TResult Function(_Personal value)? personal,
    TResult Function(_Basic value)? basic,
    required TResult orElse(),
  }) {
    if (basic != null) {
      return basic(this);
    }
    return orElse();
  }
}

abstract class _Basic implements LoginState {
  const factory _Basic(
      {final FormzSubmissionStatus status,
      final bool isValid,
      final Username username,
      final Password password,
      final String? message}) = _$BasicImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  bool get isValid;
  Username get username;
  Password get password;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$BasicImplCopyWith<_$BasicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
