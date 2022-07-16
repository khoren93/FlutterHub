// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  FormzStatus get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormzStatus status, String? message) oauth,
    required TResult Function(
            FormzStatus status, PersonalToken token, String? message)
        personal,
    required TResult Function(FormzStatus status, Username username,
            Password password, String? message)
        basic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FormzStatus status, String? message)? oauth,
    TResult Function(FormzStatus status, PersonalToken token, String? message)?
        personal,
    TResult Function(FormzStatus status, Username username, Password password,
            String? message)?
        basic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormzStatus status, String? message)? oauth,
    TResult Function(FormzStatus status, PersonalToken token, String? message)?
        personal,
    TResult Function(FormzStatus status, Username username, Password password,
            String? message)?
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
    TResult Function(_OAuth value)? oauth,
    TResult Function(_Personal value)? personal,
    TResult Function(_Basic value)? basic,
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
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status, String? message});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OAuthCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$_OAuthCopyWith(_$_OAuth value, $Res Function(_$_OAuth) then) =
      __$$_OAuthCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status, String? message});
}

/// @nodoc
class __$$_OAuthCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_OAuthCopyWith<$Res> {
  __$$_OAuthCopyWithImpl(_$_OAuth _value, $Res Function(_$_OAuth) _then)
      : super(_value, (v) => _then(v as _$_OAuth));

  @override
  _$_OAuth get _value => super._value as _$_OAuth;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_OAuth(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OAuth with DiagnosticableTreeMixin implements _OAuth {
  const _$_OAuth({this.status = FormzStatus.pure, this.message});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.oauth(status: $status, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.oauth'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OAuth &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_OAuthCopyWith<_$_OAuth> get copyWith =>
      __$$_OAuthCopyWithImpl<_$_OAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormzStatus status, String? message) oauth,
    required TResult Function(
            FormzStatus status, PersonalToken token, String? message)
        personal,
    required TResult Function(FormzStatus status, Username username,
            Password password, String? message)
        basic,
  }) {
    return oauth(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FormzStatus status, String? message)? oauth,
    TResult Function(FormzStatus status, PersonalToken token, String? message)?
        personal,
    TResult Function(FormzStatus status, Username username, Password password,
            String? message)?
        basic,
  }) {
    return oauth?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormzStatus status, String? message)? oauth,
    TResult Function(FormzStatus status, PersonalToken token, String? message)?
        personal,
    TResult Function(FormzStatus status, Username username, Password password,
            String? message)?
        basic,
    required TResult orElse(),
  }) {
    if (oauth != null) {
      return oauth(status, message);
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
    TResult Function(_OAuth value)? oauth,
    TResult Function(_Personal value)? personal,
    TResult Function(_Basic value)? basic,
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
  const factory _OAuth({final FormzStatus status, final String? message}) =
      _$_OAuth;

  @override
  FormzStatus get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_OAuthCopyWith<_$_OAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PersonalCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$_PersonalCopyWith(
          _$_Personal value, $Res Function(_$_Personal) then) =
      __$$_PersonalCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status, PersonalToken token, String? message});
}

/// @nodoc
class __$$_PersonalCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_PersonalCopyWith<$Res> {
  __$$_PersonalCopyWithImpl(
      _$_Personal _value, $Res Function(_$_Personal) _then)
      : super(_value, (v) => _then(v as _$_Personal));

  @override
  _$_Personal get _value => super._value as _$_Personal;

  @override
  $Res call({
    Object? status = freezed,
    Object? token = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_Personal(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as PersonalToken,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Personal with DiagnosticableTreeMixin implements _Personal {
  const _$_Personal(
      {this.status = FormzStatus.pure,
      this.token = const PersonalToken.pure(),
      this.message});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final PersonalToken token;
  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState.personal(status: $status, token: $token, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.personal'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Personal &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_PersonalCopyWith<_$_Personal> get copyWith =>
      __$$_PersonalCopyWithImpl<_$_Personal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormzStatus status, String? message) oauth,
    required TResult Function(
            FormzStatus status, PersonalToken token, String? message)
        personal,
    required TResult Function(FormzStatus status, Username username,
            Password password, String? message)
        basic,
  }) {
    return personal(status, token, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FormzStatus status, String? message)? oauth,
    TResult Function(FormzStatus status, PersonalToken token, String? message)?
        personal,
    TResult Function(FormzStatus status, Username username, Password password,
            String? message)?
        basic,
  }) {
    return personal?.call(status, token, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormzStatus status, String? message)? oauth,
    TResult Function(FormzStatus status, PersonalToken token, String? message)?
        personal,
    TResult Function(FormzStatus status, Username username, Password password,
            String? message)?
        basic,
    required TResult orElse(),
  }) {
    if (personal != null) {
      return personal(status, token, message);
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
    TResult Function(_OAuth value)? oauth,
    TResult Function(_Personal value)? personal,
    TResult Function(_Basic value)? basic,
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
      {final FormzStatus status,
      final PersonalToken token,
      final String? message}) = _$_Personal;

  @override
  FormzStatus get status;
  PersonalToken get token;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalCopyWith<_$_Personal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BasicCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$_BasicCopyWith(_$_Basic value, $Res Function(_$_Basic) then) =
      __$$_BasicCopyWithImpl<$Res>;
  @override
  $Res call(
      {FormzStatus status,
      Username username,
      Password password,
      String? message});
}

/// @nodoc
class __$$_BasicCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_BasicCopyWith<$Res> {
  __$$_BasicCopyWithImpl(_$_Basic _value, $Res Function(_$_Basic) _then)
      : super(_value, (v) => _then(v as _$_Basic));

  @override
  _$_Basic get _value => super._value as _$_Basic;

  @override
  $Res call({
    Object? status = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_Basic(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Basic with DiagnosticableTreeMixin implements _Basic {
  const _$_Basic(
      {this.status = FormzStatus.pure,
      this.username = const Username.pure(),
      this.password = const Password.pure(),
      this.message});

  @override
  @JsonKey()
  final FormzStatus status;
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
    return 'LoginState.basic(status: $status, username: $username, password: $password, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState.basic'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Basic &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_BasicCopyWith<_$_Basic> get copyWith =>
      __$$_BasicCopyWithImpl<_$_Basic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormzStatus status, String? message) oauth,
    required TResult Function(
            FormzStatus status, PersonalToken token, String? message)
        personal,
    required TResult Function(FormzStatus status, Username username,
            Password password, String? message)
        basic,
  }) {
    return basic(status, username, password, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FormzStatus status, String? message)? oauth,
    TResult Function(FormzStatus status, PersonalToken token, String? message)?
        personal,
    TResult Function(FormzStatus status, Username username, Password password,
            String? message)?
        basic,
  }) {
    return basic?.call(status, username, password, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormzStatus status, String? message)? oauth,
    TResult Function(FormzStatus status, PersonalToken token, String? message)?
        personal,
    TResult Function(FormzStatus status, Username username, Password password,
            String? message)?
        basic,
    required TResult orElse(),
  }) {
    if (basic != null) {
      return basic(status, username, password, message);
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
    TResult Function(_OAuth value)? oauth,
    TResult Function(_Personal value)? personal,
    TResult Function(_Basic value)? basic,
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
      {final FormzStatus status,
      final Username username,
      final Password password,
      final String? message}) = _$_Basic;

  @override
  FormzStatus get status;
  Username get username;
  Password get password;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_BasicCopyWith<_$_Basic> get copyWith =>
      throw _privateConstructorUsedError;
}
