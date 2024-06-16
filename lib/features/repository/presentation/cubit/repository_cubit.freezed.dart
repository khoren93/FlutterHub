// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function()? fetchInProgress,
    TResult? Function(Repository item)? fetchSuccess,
    TResult? Function(String? message, String? url)? fetchError,
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
    TResult? Function(_FetchInProgress value)? fetchInProgress,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchError value)? fetchError,
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
      _$RepositoryStateCopyWithImpl<$Res, RepositoryState>;
}

/// @nodoc
class _$RepositoryStateCopyWithImpl<$Res, $Val extends RepositoryState>
    implements $RepositoryStateCopyWith<$Res> {
  _$RepositoryStateCopyWithImpl(this._value, this._then);

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
    extends _$RepositoryStateCopyWithImpl<$Res, _$FetchInProgressImpl>
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
    return 'RepositoryState.fetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RepositoryState.fetchInProgress'));
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
    required TResult Function(Repository item) fetchSuccess,
    required TResult Function(String? message, String? url) fetchError,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchInProgress,
    TResult? Function(Repository item)? fetchSuccess,
    TResult? Function(String? message, String? url)? fetchError,
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
    TResult? Function(_FetchInProgress value)? fetchInProgress,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchError value)? fetchError,
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
    return _$$FetchInProgressImplToJson(
      this,
    );
  }
}

abstract class _FetchInProgress implements RepositoryState {
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
  $Res call({Repository item});

  $RepositoryCopyWith<$Res> get item;
}

/// @nodoc
class __$$FetchSuccessImplCopyWithImpl<$Res>
    extends _$RepositoryStateCopyWithImpl<$Res, _$FetchSuccessImpl>
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
              as Repository,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryCopyWith<$Res> get item {
    return $RepositoryCopyWith<$Res>(_value.item, (value) {
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
    required TResult Function(Repository item) fetchSuccess,
    required TResult Function(String? message, String? url) fetchError,
  }) {
    return fetchSuccess(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchInProgress,
    TResult? Function(Repository item)? fetchSuccess,
    TResult? Function(String? message, String? url)? fetchError,
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
    TResult? Function(_FetchInProgress value)? fetchInProgress,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchError value)? fetchError,
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
    return _$$FetchSuccessImplToJson(
      this,
    );
  }
}

abstract class _FetchSuccess implements RepositoryState {
  const factory _FetchSuccess({required final Repository item}) =
      _$FetchSuccessImpl;

  factory _FetchSuccess.fromJson(Map<String, dynamic> json) =
      _$FetchSuccessImpl.fromJson;

  Repository get item;
  @JsonKey(ignore: true)
  _$$FetchSuccessImplCopyWith<_$FetchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchErrorImplCopyWith<$Res> {
  factory _$$FetchErrorImplCopyWith(
          _$FetchErrorImpl value, $Res Function(_$FetchErrorImpl) then) =
      __$$FetchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, String? url});
}

/// @nodoc
class __$$FetchErrorImplCopyWithImpl<$Res>
    extends _$RepositoryStateCopyWithImpl<$Res, _$FetchErrorImpl>
    implements _$$FetchErrorImplCopyWith<$Res> {
  __$$FetchErrorImplCopyWithImpl(
      _$FetchErrorImpl _value, $Res Function(_$FetchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? url = freezed,
  }) {
    return _then(_$FetchErrorImpl(
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
class _$FetchErrorImpl with DiagnosticableTreeMixin implements _FetchError {
  const _$FetchErrorImpl({this.message, this.url, final String? $type})
      : $type = $type ?? 'fetchError';

  factory _$FetchErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchErrorImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchErrorImplCopyWith<_$FetchErrorImpl> get copyWith =>
      __$$FetchErrorImplCopyWithImpl<_$FetchErrorImpl>(this, _$identity);

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
    TResult? Function()? fetchInProgress,
    TResult? Function(Repository item)? fetchSuccess,
    TResult? Function(String? message, String? url)? fetchError,
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
    TResult? Function(_FetchInProgress value)? fetchInProgress,
    TResult? Function(_FetchSuccess value)? fetchSuccess,
    TResult? Function(_FetchError value)? fetchError,
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
    return _$$FetchErrorImplToJson(
      this,
    );
  }
}

abstract class _FetchError implements RepositoryState {
  const factory _FetchError({final String? message, final String? url}) =
      _$FetchErrorImpl;

  factory _FetchError.fromJson(Map<String, dynamic> json) =
      _$FetchErrorImpl.fromJson;

  String? get message;
  String? get url;
  @JsonKey(ignore: true)
  _$$FetchErrorImplCopyWith<_$FetchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
