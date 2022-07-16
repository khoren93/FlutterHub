// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repository_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryState _$RepositoryStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fetchInProgress':
      return _FetchInProgress.fromJson(json);
    case 'fetchSuccess':
      return _FetchSuccess.fromJson(json);
    case 'fetchError':
      return _FetchError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RepositoryState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RepositoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInProgress,
    required TResult Function(Repository item) fetchSuccess,
    required TResult Function(String? message, String? url) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(Repository item)? fetchSuccess,
    TResult Function(String? message, String? url)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(Repository item)? fetchSuccess,
    TResult Function(String? message, String? url)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryStateCopyWith<$Res> {
  factory $RepositoryStateCopyWith(
          RepositoryState value, $Res Function(RepositoryState) then) =
      _$RepositoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepositoryStateCopyWithImpl<$Res>
    implements $RepositoryStateCopyWith<$Res> {
  _$RepositoryStateCopyWithImpl(this._value, this._then);

  final RepositoryState _value;
  // ignore: unused_field
  final $Res Function(RepositoryState) _then;
}

/// @nodoc
abstract class _$$_FetchInProgressCopyWith<$Res> {
  factory _$$_FetchInProgressCopyWith(
          _$_FetchInProgress value, $Res Function(_$_FetchInProgress) then) =
      __$$_FetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchInProgressCopyWithImpl<$Res>
    extends _$RepositoryStateCopyWithImpl<$Res>
    implements _$$_FetchInProgressCopyWith<$Res> {
  __$$_FetchInProgressCopyWithImpl(
      _$_FetchInProgress _value, $Res Function(_$_FetchInProgress) _then)
      : super(_value, (v) => _then(v as _$_FetchInProgress));

  @override
  _$_FetchInProgress get _value => super._value as _$_FetchInProgress;
}

/// @nodoc
@JsonSerializable()
class _$_FetchInProgress
    with DiagnosticableTreeMixin
    implements _FetchInProgress {
  const _$_FetchInProgress({final String? $type})
      : $type = $type ?? 'fetchInProgress';

  factory _$_FetchInProgress.fromJson(Map<String, dynamic> json) =>
      _$$_FetchInProgressFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepositoryState.fetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RepositoryState.fetchInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchInProgress);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInProgress,
    required TResult Function(Repository item) fetchSuccess,
    required TResult Function(String? message, String? url) fetchError,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(Repository item)? fetchSuccess,
    TResult Function(String? message, String? url)? fetchError,
  }) {
    return fetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(Repository item)? fetchSuccess,
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
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return fetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchInProgressToJson(
      this,
    );
  }
}

abstract class _FetchInProgress implements RepositoryState {
  const factory _FetchInProgress() = _$_FetchInProgress;

  factory _FetchInProgress.fromJson(Map<String, dynamic> json) =
      _$_FetchInProgress.fromJson;
}

/// @nodoc
abstract class _$$_FetchSuccessCopyWith<$Res> {
  factory _$$_FetchSuccessCopyWith(
          _$_FetchSuccess value, $Res Function(_$_FetchSuccess) then) =
      __$$_FetchSuccessCopyWithImpl<$Res>;
  $Res call({Repository item});

  $RepositoryCopyWith<$Res> get item;
}

/// @nodoc
class __$$_FetchSuccessCopyWithImpl<$Res>
    extends _$RepositoryStateCopyWithImpl<$Res>
    implements _$$_FetchSuccessCopyWith<$Res> {
  __$$_FetchSuccessCopyWithImpl(
      _$_FetchSuccess _value, $Res Function(_$_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _$_FetchSuccess));

  @override
  _$_FetchSuccess get _value => super._value as _$_FetchSuccess;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$_FetchSuccess(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Repository,
    ));
  }

  @override
  $RepositoryCopyWith<$Res> get item {
    return $RepositoryCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchSuccess with DiagnosticableTreeMixin implements _FetchSuccess {
  const _$_FetchSuccess({required this.item, final String? $type})
      : $type = $type ?? 'fetchSuccess';

  factory _$_FetchSuccess.fromJson(Map<String, dynamic> json) =>
      _$$_FetchSuccessFromJson(json);

  @override
  final Repository item;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepositoryState.fetchSuccess(item: $item)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepositoryState.fetchSuccess'))
      ..add(DiagnosticsProperty('item', item));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchSuccess &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_FetchSuccessCopyWith<_$_FetchSuccess> get copyWith =>
      __$$_FetchSuccessCopyWithImpl<_$_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInProgress,
    required TResult Function(Repository item) fetchSuccess,
    required TResult Function(String? message, String? url) fetchError,
  }) {
    return fetchSuccess(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(Repository item)? fetchSuccess,
    TResult Function(String? message, String? url)? fetchError,
  }) {
    return fetchSuccess?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(Repository item)? fetchSuccess,
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
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return fetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchSuccessToJson(
      this,
    );
  }
}

abstract class _FetchSuccess implements RepositoryState {
  const factory _FetchSuccess({required final Repository item}) =
      _$_FetchSuccess;

  factory _FetchSuccess.fromJson(Map<String, dynamic> json) =
      _$_FetchSuccess.fromJson;

  Repository get item;
  @JsonKey(ignore: true)
  _$$_FetchSuccessCopyWith<_$_FetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchErrorCopyWith<$Res> {
  factory _$$_FetchErrorCopyWith(
          _$_FetchError value, $Res Function(_$_FetchError) then) =
      __$$_FetchErrorCopyWithImpl<$Res>;
  $Res call({String? message, String? url});
}

/// @nodoc
class __$$_FetchErrorCopyWithImpl<$Res>
    extends _$RepositoryStateCopyWithImpl<$Res>
    implements _$$_FetchErrorCopyWith<$Res> {
  __$$_FetchErrorCopyWithImpl(
      _$_FetchError _value, $Res Function(_$_FetchError) _then)
      : super(_value, (v) => _then(v as _$_FetchError));

  @override
  _$_FetchError get _value => super._value as _$_FetchError;

  @override
  $Res call({
    Object? message = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_FetchError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchError with DiagnosticableTreeMixin implements _FetchError {
  const _$_FetchError({this.message, this.url, final String? $type})
      : $type = $type ?? 'fetchError';

  factory _$_FetchError.fromJson(Map<String, dynamic> json) =>
      _$$_FetchErrorFromJson(json);

  @override
  final String? message;
  @override
  final String? url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepositoryState.fetchError(message: $message, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepositoryState.fetchError'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchError &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_FetchErrorCopyWith<_$_FetchError> get copyWith =>
      __$$_FetchErrorCopyWithImpl<_$_FetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchInProgress,
    required TResult Function(Repository item) fetchSuccess,
    required TResult Function(String? message, String? url) fetchError,
  }) {
    return fetchError(message, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(Repository item)? fetchSuccess,
    TResult Function(String? message, String? url)? fetchError,
  }) {
    return fetchError?.call(message, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchInProgress,
    TResult Function(Repository item)? fetchSuccess,
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
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchErrorToJson(
      this,
    );
  }
}

abstract class _FetchError implements RepositoryState {
  const factory _FetchError({final String? message, final String? url}) =
      _$_FetchError;

  factory _FetchError.fromJson(Map<String, dynamic> json) =
      _$_FetchError.fromJson;

  String? get message;
  String? get url;
  @JsonKey(ignore: true)
  _$$_FetchErrorCopyWith<_$_FetchError> get copyWith =>
      throw _privateConstructorUsedError;
}
