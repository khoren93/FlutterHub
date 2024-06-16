// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserState _$UserStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fetchInProgress':
      return _FetchInProgress.fromJson(json);
    case 'fetchSuccess':
      return _FetchSuccess.fromJson(json);
    case 'fetchError':
      return _fetchError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInProgress,
    required TResult Function(User item) fetchSuccess,
    required TResult Function(String? message, String? url) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchInProgress,
    TResult? Function(User item)? fetchSuccess,
    TResult? Function(String? message, String? url)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(User item)? fetchSuccess,
    TResult Function(String? message, String? url)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_fetchError value) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInProgress value)? fetchInProgress,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_fetchError value)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_fetchError value)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchInProgressImplCopyWith<$Res> {
  factory _$$FetchInProgressImplCopyWith(_$FetchInProgressImpl value,
          $Res Function(_$FetchInProgressImpl) then) =
      __$$FetchInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchInProgressImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$FetchInProgressImpl>
    implements _$$FetchInProgressImplCopyWith<$Res> {
  __$$FetchInProgressImplCopyWithImpl(
      _$FetchInProgressImpl _value, $Res Function(_$FetchInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FetchInProgressImpl
    with DiagnosticableTreeMixin
    implements _FetchInProgress {
  const _$FetchInProgressImpl({final String? $type})
      : $type = $type ?? 'fetchInProgress';

  factory _$FetchInProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchInProgressImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.fetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserState.fetchInProgress'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchInProgressImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInProgress,
    required TResult Function(User item) fetchSuccess,
    required TResult Function(String? message, String? url) fetchError,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchInProgress,
    TResult? Function(User item)? fetchSuccess,
    TResult? Function(String? message, String? url)? fetchError,
  }) {
    return fetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(User item)? fetchSuccess,
    TResult Function(String? message, String? url)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_fetchError value) fetchError,
  }) {
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInProgress value)? fetchInProgress,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_fetchError value)? fetchError,
  }) {
    return fetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_fetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchInProgressImplToJson(
      this,
    );
  }
}

abstract class _FetchInProgress implements UserState {
  const factory _FetchInProgress() = _$FetchInProgressImpl;

  factory _FetchInProgress.fromJson(Map<String, dynamic> json) =
      _$FetchInProgressImpl.fromJson;
}

/// @nodoc
abstract class _$$FetchSuccessImplCopyWith<$Res> {
  factory _$$FetchSuccessImplCopyWith(
          _$FetchSuccessImpl value, $Res Function(_$FetchSuccessImpl) then) =
      __$$FetchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User item});

  $UserCopyWith<$Res> get item;
}

/// @nodoc
class __$$FetchSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$FetchSuccessImpl>
    implements _$$FetchSuccessImplCopyWith<$Res> {
  __$$FetchSuccessImplCopyWithImpl(
      _$FetchSuccessImpl _value, $Res Function(_$FetchSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$FetchSuccessImpl(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get item {
    return $UserCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchSuccessImpl with DiagnosticableTreeMixin implements _FetchSuccess {
  const _$FetchSuccessImpl({required this.item, final String? $type})
      : $type = $type ?? 'fetchSuccess';

  factory _$FetchSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchSuccessImplFromJson(json);

  @override
  final User item;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.fetchSuccess(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.fetchSuccess'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSuccessImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSuccessImplCopyWith<_$FetchSuccessImpl> get copyWith =>
      __$$FetchSuccessImplCopyWithImpl<_$FetchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInProgress,
    required TResult Function(User item) fetchSuccess,
    required TResult Function(String? message, String? url) fetchError,
  }) {
    return fetchSuccess(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchInProgress,
    TResult? Function(User item)? fetchSuccess,
    TResult? Function(String? message, String? url)? fetchError,
  }) {
    return fetchSuccess?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(User item)? fetchSuccess,
    TResult Function(String? message, String? url)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_fetchError value) fetchError,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInProgress value)? fetchInProgress,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_fetchError value)? fetchError,
  }) {
    return fetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_fetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchSuccessImplToJson(
      this,
    );
  }
}

abstract class _FetchSuccess implements UserState {
  const factory _FetchSuccess({required final User item}) = _$FetchSuccessImpl;

  factory _FetchSuccess.fromJson(Map<String, dynamic> json) =
      _$FetchSuccessImpl.fromJson;

  User get item;
  @JsonKey(ignore: true)
  _$$FetchSuccessImplCopyWith<_$FetchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$fetchErrorImplCopyWith<$Res> {
  factory _$$fetchErrorImplCopyWith(
          _$fetchErrorImpl value, $Res Function(_$fetchErrorImpl) then) =
      __$$fetchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, String? url});
}

/// @nodoc
class __$$fetchErrorImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$fetchErrorImpl>
    implements _$$fetchErrorImplCopyWith<$Res> {
  __$$fetchErrorImplCopyWithImpl(
      _$fetchErrorImpl _value, $Res Function(_$fetchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? url = freezed,
  }) {
    return _then(_$fetchErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$fetchErrorImpl with DiagnosticableTreeMixin implements _fetchError {
  const _$fetchErrorImpl({this.message, this.url, final String? $type})
      : $type = $type ?? 'fetchError';

  factory _$fetchErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$fetchErrorImplFromJson(json);

  @override
  final String? message;
  @override
  final String? url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.fetchError(message: $message, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.fetchError'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fetchErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$fetchErrorImplCopyWith<_$fetchErrorImpl> get copyWith =>
      __$$fetchErrorImplCopyWithImpl<_$fetchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInProgress,
    required TResult Function(User item) fetchSuccess,
    required TResult Function(String? message, String? url) fetchError,
  }) {
    return fetchError(message, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchInProgress,
    TResult? Function(User item)? fetchSuccess,
    TResult? Function(String? message, String? url)? fetchError,
  }) {
    return fetchError?.call(message, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(User item)? fetchSuccess,
    TResult Function(String? message, String? url)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(message, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_fetchError value) fetchError,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchInProgress value)? fetchInProgress,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_fetchError value)? fetchError,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_fetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$fetchErrorImplToJson(
      this,
    );
  }
}

abstract class _fetchError implements UserState {
  const factory _fetchError({final String? message, final String? url}) =
      _$fetchErrorImpl;

  factory _fetchError.fromJson(Map<String, dynamic> json) =
      _$fetchErrorImpl.fromJson;

  String? get message;
  String? get url;
  @JsonKey(ignore: true)
  _$$fetchErrorImplCopyWith<_$fetchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
