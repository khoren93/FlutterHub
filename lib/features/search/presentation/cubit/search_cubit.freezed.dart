// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchState _$SearchStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _Initial.fromJson(json);
    case 'reposFetchInProgress':
      return _ReposFetchInProgress.fromJson(json);
    case 'reposFetchEmpty':
      return _ReposFetchEmpty.fromJson(json);
    case 'reposFetchSuccess':
      return _ReposFetchSuccess.fromJson(json);
    case 'reposFetchError':
      return _ReposFetchError.fromJson(json);
    case 'usersFetchInProgress':
      return _UsersFetchInProgress.fromJson(json);
    case 'usersFetchEmpty':
      return _UsersFetchEmpty.fromJson(json);
    case 'usersFetchSuccess':
      return _UsersFetchSuccess.fromJson(json);
    case 'usersFetchError':
      return _UsersFetchError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SearchState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message, String? url) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<User> items, bool hasNextPage)
        usersFetchSuccess,
    required TResult Function(String? message, String? url) usersFetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message, String? url)? reposFetchError,
    TResult? Function()? usersFetchInProgress,
    TResult? Function()? usersFetchEmpty,
    TResult? Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult? Function(String? message, String? url)? usersFetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message, String? url)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult Function(String? message, String? url)? usersFetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReposFetchInProgress value) reposFetchInProgress,
    required TResult Function(_ReposFetchEmpty value) reposFetchEmpty,
    required TResult Function(_ReposFetchSuccess value) reposFetchSuccess,
    required TResult Function(_ReposFetchError value) reposFetchError,
    required TResult Function(_UsersFetchInProgress value) usersFetchInProgress,
    required TResult Function(_UsersFetchEmpty value) usersFetchEmpty,
    required TResult Function(_UsersFetchSuccess value) usersFetchSuccess,
    required TResult Function(_UsersFetchError value) usersFetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult? Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult? Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult? Function(_ReposFetchError value)? reposFetchError,
    TResult? Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult? Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult? Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult? Function(_UsersFetchError value)? usersFetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl({final String? $type}) : $type = $type ?? 'initial';

  factory _$InitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SearchState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message, String? url) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<User> items, bool hasNextPage)
        usersFetchSuccess,
    required TResult Function(String? message, String? url) usersFetchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message, String? url)? reposFetchError,
    TResult? Function()? usersFetchInProgress,
    TResult? Function()? usersFetchEmpty,
    TResult? Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult? Function(String? message, String? url)? usersFetchError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message, String? url)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult Function(String? message, String? url)? usersFetchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReposFetchInProgress value) reposFetchInProgress,
    required TResult Function(_ReposFetchEmpty value) reposFetchEmpty,
    required TResult Function(_ReposFetchSuccess value) reposFetchSuccess,
    required TResult Function(_ReposFetchError value) reposFetchError,
    required TResult Function(_UsersFetchInProgress value) usersFetchInProgress,
    required TResult Function(_UsersFetchEmpty value) usersFetchEmpty,
    required TResult Function(_UsersFetchSuccess value) usersFetchSuccess,
    required TResult Function(_UsersFetchError value) usersFetchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult? Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult? Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult? Function(_ReposFetchError value)? reposFetchError,
    TResult? Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult? Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult? Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult? Function(_UsersFetchError value)? usersFetchError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialImplToJson(
      this,
    );
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$InitialImpl;

  factory _Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;
}

/// @nodoc
abstract class _$$ReposFetchInProgressImplCopyWith<$Res> {
  factory _$$ReposFetchInProgressImplCopyWith(_$ReposFetchInProgressImpl value,
          $Res Function(_$ReposFetchInProgressImpl) then) =
      __$$ReposFetchInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReposFetchInProgressImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ReposFetchInProgressImpl>
    implements _$$ReposFetchInProgressImplCopyWith<$Res> {
  __$$ReposFetchInProgressImplCopyWithImpl(_$ReposFetchInProgressImpl _value,
      $Res Function(_$ReposFetchInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ReposFetchInProgressImpl
    with DiagnosticableTreeMixin
    implements _ReposFetchInProgress {
  const _$ReposFetchInProgressImpl({final String? $type})
      : $type = $type ?? 'reposFetchInProgress';

  factory _$ReposFetchInProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReposFetchInProgressImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.reposFetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SearchState.reposFetchInProgress'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReposFetchInProgressImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message, String? url) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<User> items, bool hasNextPage)
        usersFetchSuccess,
    required TResult Function(String? message, String? url) usersFetchError,
  }) {
    return reposFetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message, String? url)? reposFetchError,
    TResult? Function()? usersFetchInProgress,
    TResult? Function()? usersFetchEmpty,
    TResult? Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult? Function(String? message, String? url)? usersFetchError,
  }) {
    return reposFetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message, String? url)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult Function(String? message, String? url)? usersFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchInProgress != null) {
      return reposFetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReposFetchInProgress value) reposFetchInProgress,
    required TResult Function(_ReposFetchEmpty value) reposFetchEmpty,
    required TResult Function(_ReposFetchSuccess value) reposFetchSuccess,
    required TResult Function(_ReposFetchError value) reposFetchError,
    required TResult Function(_UsersFetchInProgress value) usersFetchInProgress,
    required TResult Function(_UsersFetchEmpty value) usersFetchEmpty,
    required TResult Function(_UsersFetchSuccess value) usersFetchSuccess,
    required TResult Function(_UsersFetchError value) usersFetchError,
  }) {
    return reposFetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult? Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult? Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult? Function(_ReposFetchError value)? reposFetchError,
    TResult? Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult? Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult? Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult? Function(_UsersFetchError value)? usersFetchError,
  }) {
    return reposFetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchInProgress != null) {
      return reposFetchInProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReposFetchInProgressImplToJson(
      this,
    );
  }
}

abstract class _ReposFetchInProgress implements SearchState {
  const factory _ReposFetchInProgress() = _$ReposFetchInProgressImpl;

  factory _ReposFetchInProgress.fromJson(Map<String, dynamic> json) =
      _$ReposFetchInProgressImpl.fromJson;
}

/// @nodoc
abstract class _$$ReposFetchEmptyImplCopyWith<$Res> {
  factory _$$ReposFetchEmptyImplCopyWith(_$ReposFetchEmptyImpl value,
          $Res Function(_$ReposFetchEmptyImpl) then) =
      __$$ReposFetchEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReposFetchEmptyImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ReposFetchEmptyImpl>
    implements _$$ReposFetchEmptyImplCopyWith<$Res> {
  __$$ReposFetchEmptyImplCopyWithImpl(
      _$ReposFetchEmptyImpl _value, $Res Function(_$ReposFetchEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ReposFetchEmptyImpl
    with DiagnosticableTreeMixin
    implements _ReposFetchEmpty {
  const _$ReposFetchEmptyImpl({final String? $type})
      : $type = $type ?? 'reposFetchEmpty';

  factory _$ReposFetchEmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReposFetchEmptyImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.reposFetchEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SearchState.reposFetchEmpty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReposFetchEmptyImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message, String? url) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<User> items, bool hasNextPage)
        usersFetchSuccess,
    required TResult Function(String? message, String? url) usersFetchError,
  }) {
    return reposFetchEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message, String? url)? reposFetchError,
    TResult? Function()? usersFetchInProgress,
    TResult? Function()? usersFetchEmpty,
    TResult? Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult? Function(String? message, String? url)? usersFetchError,
  }) {
    return reposFetchEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message, String? url)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult Function(String? message, String? url)? usersFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchEmpty != null) {
      return reposFetchEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReposFetchInProgress value) reposFetchInProgress,
    required TResult Function(_ReposFetchEmpty value) reposFetchEmpty,
    required TResult Function(_ReposFetchSuccess value) reposFetchSuccess,
    required TResult Function(_ReposFetchError value) reposFetchError,
    required TResult Function(_UsersFetchInProgress value) usersFetchInProgress,
    required TResult Function(_UsersFetchEmpty value) usersFetchEmpty,
    required TResult Function(_UsersFetchSuccess value) usersFetchSuccess,
    required TResult Function(_UsersFetchError value) usersFetchError,
  }) {
    return reposFetchEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult? Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult? Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult? Function(_ReposFetchError value)? reposFetchError,
    TResult? Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult? Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult? Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult? Function(_UsersFetchError value)? usersFetchError,
  }) {
    return reposFetchEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchEmpty != null) {
      return reposFetchEmpty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReposFetchEmptyImplToJson(
      this,
    );
  }
}

abstract class _ReposFetchEmpty implements SearchState {
  const factory _ReposFetchEmpty() = _$ReposFetchEmptyImpl;

  factory _ReposFetchEmpty.fromJson(Map<String, dynamic> json) =
      _$ReposFetchEmptyImpl.fromJson;
}

/// @nodoc
abstract class _$$ReposFetchSuccessImplCopyWith<$Res> {
  factory _$$ReposFetchSuccessImplCopyWith(_$ReposFetchSuccessImpl value,
          $Res Function(_$ReposFetchSuccessImpl) then) =
      __$$ReposFetchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Repository> items, bool hasNextPage});
}

/// @nodoc
class __$$ReposFetchSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ReposFetchSuccessImpl>
    implements _$$ReposFetchSuccessImplCopyWith<$Res> {
  __$$ReposFetchSuccessImplCopyWithImpl(_$ReposFetchSuccessImpl _value,
      $Res Function(_$ReposFetchSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$ReposFetchSuccessImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReposFetchSuccessImpl
    with DiagnosticableTreeMixin
    implements _ReposFetchSuccess {
  const _$ReposFetchSuccessImpl(
      {required final List<Repository> items,
      required this.hasNextPage,
      final String? $type})
      : _items = items,
        $type = $type ?? 'reposFetchSuccess';

  factory _$ReposFetchSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReposFetchSuccessImplFromJson(json);

  final List<Repository> _items;
  @override
  List<Repository> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool hasNextPage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.reposFetchSuccess(items: $items, hasNextPage: $hasNextPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.reposFetchSuccess'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('hasNextPage', hasNextPage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReposFetchSuccessImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReposFetchSuccessImplCopyWith<_$ReposFetchSuccessImpl> get copyWith =>
      __$$ReposFetchSuccessImplCopyWithImpl<_$ReposFetchSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message, String? url) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<User> items, bool hasNextPage)
        usersFetchSuccess,
    required TResult Function(String? message, String? url) usersFetchError,
  }) {
    return reposFetchSuccess(items, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message, String? url)? reposFetchError,
    TResult? Function()? usersFetchInProgress,
    TResult? Function()? usersFetchEmpty,
    TResult? Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult? Function(String? message, String? url)? usersFetchError,
  }) {
    return reposFetchSuccess?.call(items, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message, String? url)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult Function(String? message, String? url)? usersFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchSuccess != null) {
      return reposFetchSuccess(items, hasNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReposFetchInProgress value) reposFetchInProgress,
    required TResult Function(_ReposFetchEmpty value) reposFetchEmpty,
    required TResult Function(_ReposFetchSuccess value) reposFetchSuccess,
    required TResult Function(_ReposFetchError value) reposFetchError,
    required TResult Function(_UsersFetchInProgress value) usersFetchInProgress,
    required TResult Function(_UsersFetchEmpty value) usersFetchEmpty,
    required TResult Function(_UsersFetchSuccess value) usersFetchSuccess,
    required TResult Function(_UsersFetchError value) usersFetchError,
  }) {
    return reposFetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult? Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult? Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult? Function(_ReposFetchError value)? reposFetchError,
    TResult? Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult? Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult? Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult? Function(_UsersFetchError value)? usersFetchError,
  }) {
    return reposFetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchSuccess != null) {
      return reposFetchSuccess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReposFetchSuccessImplToJson(
      this,
    );
  }
}

abstract class _ReposFetchSuccess implements SearchState {
  const factory _ReposFetchSuccess(
      {required final List<Repository> items,
      required final bool hasNextPage}) = _$ReposFetchSuccessImpl;

  factory _ReposFetchSuccess.fromJson(Map<String, dynamic> json) =
      _$ReposFetchSuccessImpl.fromJson;

  List<Repository> get items;
  bool get hasNextPage;
  @JsonKey(ignore: true)
  _$$ReposFetchSuccessImplCopyWith<_$ReposFetchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReposFetchErrorImplCopyWith<$Res> {
  factory _$$ReposFetchErrorImplCopyWith(_$ReposFetchErrorImpl value,
          $Res Function(_$ReposFetchErrorImpl) then) =
      __$$ReposFetchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, String? url});
}

/// @nodoc
class __$$ReposFetchErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ReposFetchErrorImpl>
    implements _$$ReposFetchErrorImplCopyWith<$Res> {
  __$$ReposFetchErrorImplCopyWithImpl(
      _$ReposFetchErrorImpl _value, $Res Function(_$ReposFetchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? url = freezed,
  }) {
    return _then(_$ReposFetchErrorImpl(
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
class _$ReposFetchErrorImpl
    with DiagnosticableTreeMixin
    implements _ReposFetchError {
  const _$ReposFetchErrorImpl({this.message, this.url, final String? $type})
      : $type = $type ?? 'reposFetchError';

  factory _$ReposFetchErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReposFetchErrorImplFromJson(json);

  @override
  final String? message;
  @override
  final String? url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.reposFetchError(message: $message, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.reposFetchError'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReposFetchErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReposFetchErrorImplCopyWith<_$ReposFetchErrorImpl> get copyWith =>
      __$$ReposFetchErrorImplCopyWithImpl<_$ReposFetchErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message, String? url) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<User> items, bool hasNextPage)
        usersFetchSuccess,
    required TResult Function(String? message, String? url) usersFetchError,
  }) {
    return reposFetchError(message, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message, String? url)? reposFetchError,
    TResult? Function()? usersFetchInProgress,
    TResult? Function()? usersFetchEmpty,
    TResult? Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult? Function(String? message, String? url)? usersFetchError,
  }) {
    return reposFetchError?.call(message, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message, String? url)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult Function(String? message, String? url)? usersFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchError != null) {
      return reposFetchError(message, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReposFetchInProgress value) reposFetchInProgress,
    required TResult Function(_ReposFetchEmpty value) reposFetchEmpty,
    required TResult Function(_ReposFetchSuccess value) reposFetchSuccess,
    required TResult Function(_ReposFetchError value) reposFetchError,
    required TResult Function(_UsersFetchInProgress value) usersFetchInProgress,
    required TResult Function(_UsersFetchEmpty value) usersFetchEmpty,
    required TResult Function(_UsersFetchSuccess value) usersFetchSuccess,
    required TResult Function(_UsersFetchError value) usersFetchError,
  }) {
    return reposFetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult? Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult? Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult? Function(_ReposFetchError value)? reposFetchError,
    TResult? Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult? Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult? Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult? Function(_UsersFetchError value)? usersFetchError,
  }) {
    return reposFetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchError != null) {
      return reposFetchError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReposFetchErrorImplToJson(
      this,
    );
  }
}

abstract class _ReposFetchError implements SearchState {
  const factory _ReposFetchError({final String? message, final String? url}) =
      _$ReposFetchErrorImpl;

  factory _ReposFetchError.fromJson(Map<String, dynamic> json) =
      _$ReposFetchErrorImpl.fromJson;

  String? get message;
  String? get url;
  @JsonKey(ignore: true)
  _$$ReposFetchErrorImplCopyWith<_$ReposFetchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersFetchInProgressImplCopyWith<$Res> {
  factory _$$UsersFetchInProgressImplCopyWith(_$UsersFetchInProgressImpl value,
          $Res Function(_$UsersFetchInProgressImpl) then) =
      __$$UsersFetchInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersFetchInProgressImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$UsersFetchInProgressImpl>
    implements _$$UsersFetchInProgressImplCopyWith<$Res> {
  __$$UsersFetchInProgressImplCopyWithImpl(_$UsersFetchInProgressImpl _value,
      $Res Function(_$UsersFetchInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UsersFetchInProgressImpl
    with DiagnosticableTreeMixin
    implements _UsersFetchInProgress {
  const _$UsersFetchInProgressImpl({final String? $type})
      : $type = $type ?? 'usersFetchInProgress';

  factory _$UsersFetchInProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersFetchInProgressImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.usersFetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SearchState.usersFetchInProgress'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersFetchInProgressImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message, String? url) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<User> items, bool hasNextPage)
        usersFetchSuccess,
    required TResult Function(String? message, String? url) usersFetchError,
  }) {
    return usersFetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message, String? url)? reposFetchError,
    TResult? Function()? usersFetchInProgress,
    TResult? Function()? usersFetchEmpty,
    TResult? Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult? Function(String? message, String? url)? usersFetchError,
  }) {
    return usersFetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message, String? url)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult Function(String? message, String? url)? usersFetchError,
    required TResult orElse(),
  }) {
    if (usersFetchInProgress != null) {
      return usersFetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReposFetchInProgress value) reposFetchInProgress,
    required TResult Function(_ReposFetchEmpty value) reposFetchEmpty,
    required TResult Function(_ReposFetchSuccess value) reposFetchSuccess,
    required TResult Function(_ReposFetchError value) reposFetchError,
    required TResult Function(_UsersFetchInProgress value) usersFetchInProgress,
    required TResult Function(_UsersFetchEmpty value) usersFetchEmpty,
    required TResult Function(_UsersFetchSuccess value) usersFetchSuccess,
    required TResult Function(_UsersFetchError value) usersFetchError,
  }) {
    return usersFetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult? Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult? Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult? Function(_ReposFetchError value)? reposFetchError,
    TResult? Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult? Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult? Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult? Function(_UsersFetchError value)? usersFetchError,
  }) {
    return usersFetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
    required TResult orElse(),
  }) {
    if (usersFetchInProgress != null) {
      return usersFetchInProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersFetchInProgressImplToJson(
      this,
    );
  }
}

abstract class _UsersFetchInProgress implements SearchState {
  const factory _UsersFetchInProgress() = _$UsersFetchInProgressImpl;

  factory _UsersFetchInProgress.fromJson(Map<String, dynamic> json) =
      _$UsersFetchInProgressImpl.fromJson;
}

/// @nodoc
abstract class _$$UsersFetchEmptyImplCopyWith<$Res> {
  factory _$$UsersFetchEmptyImplCopyWith(_$UsersFetchEmptyImpl value,
          $Res Function(_$UsersFetchEmptyImpl) then) =
      __$$UsersFetchEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersFetchEmptyImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$UsersFetchEmptyImpl>
    implements _$$UsersFetchEmptyImplCopyWith<$Res> {
  __$$UsersFetchEmptyImplCopyWithImpl(
      _$UsersFetchEmptyImpl _value, $Res Function(_$UsersFetchEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UsersFetchEmptyImpl
    with DiagnosticableTreeMixin
    implements _UsersFetchEmpty {
  const _$UsersFetchEmptyImpl({final String? $type})
      : $type = $type ?? 'usersFetchEmpty';

  factory _$UsersFetchEmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersFetchEmptyImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.usersFetchEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SearchState.usersFetchEmpty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsersFetchEmptyImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message, String? url) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<User> items, bool hasNextPage)
        usersFetchSuccess,
    required TResult Function(String? message, String? url) usersFetchError,
  }) {
    return usersFetchEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message, String? url)? reposFetchError,
    TResult? Function()? usersFetchInProgress,
    TResult? Function()? usersFetchEmpty,
    TResult? Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult? Function(String? message, String? url)? usersFetchError,
  }) {
    return usersFetchEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message, String? url)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult Function(String? message, String? url)? usersFetchError,
    required TResult orElse(),
  }) {
    if (usersFetchEmpty != null) {
      return usersFetchEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReposFetchInProgress value) reposFetchInProgress,
    required TResult Function(_ReposFetchEmpty value) reposFetchEmpty,
    required TResult Function(_ReposFetchSuccess value) reposFetchSuccess,
    required TResult Function(_ReposFetchError value) reposFetchError,
    required TResult Function(_UsersFetchInProgress value) usersFetchInProgress,
    required TResult Function(_UsersFetchEmpty value) usersFetchEmpty,
    required TResult Function(_UsersFetchSuccess value) usersFetchSuccess,
    required TResult Function(_UsersFetchError value) usersFetchError,
  }) {
    return usersFetchEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult? Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult? Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult? Function(_ReposFetchError value)? reposFetchError,
    TResult? Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult? Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult? Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult? Function(_UsersFetchError value)? usersFetchError,
  }) {
    return usersFetchEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
    required TResult orElse(),
  }) {
    if (usersFetchEmpty != null) {
      return usersFetchEmpty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersFetchEmptyImplToJson(
      this,
    );
  }
}

abstract class _UsersFetchEmpty implements SearchState {
  const factory _UsersFetchEmpty() = _$UsersFetchEmptyImpl;

  factory _UsersFetchEmpty.fromJson(Map<String, dynamic> json) =
      _$UsersFetchEmptyImpl.fromJson;
}

/// @nodoc
abstract class _$$UsersFetchSuccessImplCopyWith<$Res> {
  factory _$$UsersFetchSuccessImplCopyWith(_$UsersFetchSuccessImpl value,
          $Res Function(_$UsersFetchSuccessImpl) then) =
      __$$UsersFetchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> items, bool hasNextPage});
}

/// @nodoc
class __$$UsersFetchSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$UsersFetchSuccessImpl>
    implements _$$UsersFetchSuccessImplCopyWith<$Res> {
  __$$UsersFetchSuccessImplCopyWithImpl(_$UsersFetchSuccessImpl _value,
      $Res Function(_$UsersFetchSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$UsersFetchSuccessImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<User>,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersFetchSuccessImpl
    with DiagnosticableTreeMixin
    implements _UsersFetchSuccess {
  const _$UsersFetchSuccessImpl(
      {required final List<User> items,
      required this.hasNextPage,
      final String? $type})
      : _items = items,
        $type = $type ?? 'usersFetchSuccess';

  factory _$UsersFetchSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersFetchSuccessImplFromJson(json);

  final List<User> _items;
  @override
  List<User> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool hasNextPage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.usersFetchSuccess(items: $items, hasNextPage: $hasNextPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.usersFetchSuccess'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('hasNextPage', hasNextPage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersFetchSuccessImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersFetchSuccessImplCopyWith<_$UsersFetchSuccessImpl> get copyWith =>
      __$$UsersFetchSuccessImplCopyWithImpl<_$UsersFetchSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message, String? url) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<User> items, bool hasNextPage)
        usersFetchSuccess,
    required TResult Function(String? message, String? url) usersFetchError,
  }) {
    return usersFetchSuccess(items, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message, String? url)? reposFetchError,
    TResult? Function()? usersFetchInProgress,
    TResult? Function()? usersFetchEmpty,
    TResult? Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult? Function(String? message, String? url)? usersFetchError,
  }) {
    return usersFetchSuccess?.call(items, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message, String? url)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult Function(String? message, String? url)? usersFetchError,
    required TResult orElse(),
  }) {
    if (usersFetchSuccess != null) {
      return usersFetchSuccess(items, hasNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReposFetchInProgress value) reposFetchInProgress,
    required TResult Function(_ReposFetchEmpty value) reposFetchEmpty,
    required TResult Function(_ReposFetchSuccess value) reposFetchSuccess,
    required TResult Function(_ReposFetchError value) reposFetchError,
    required TResult Function(_UsersFetchInProgress value) usersFetchInProgress,
    required TResult Function(_UsersFetchEmpty value) usersFetchEmpty,
    required TResult Function(_UsersFetchSuccess value) usersFetchSuccess,
    required TResult Function(_UsersFetchError value) usersFetchError,
  }) {
    return usersFetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult? Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult? Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult? Function(_ReposFetchError value)? reposFetchError,
    TResult? Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult? Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult? Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult? Function(_UsersFetchError value)? usersFetchError,
  }) {
    return usersFetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
    required TResult orElse(),
  }) {
    if (usersFetchSuccess != null) {
      return usersFetchSuccess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersFetchSuccessImplToJson(
      this,
    );
  }
}

abstract class _UsersFetchSuccess implements SearchState {
  const factory _UsersFetchSuccess(
      {required final List<User> items,
      required final bool hasNextPage}) = _$UsersFetchSuccessImpl;

  factory _UsersFetchSuccess.fromJson(Map<String, dynamic> json) =
      _$UsersFetchSuccessImpl.fromJson;

  List<User> get items;
  bool get hasNextPage;
  @JsonKey(ignore: true)
  _$$UsersFetchSuccessImplCopyWith<_$UsersFetchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersFetchErrorImplCopyWith<$Res> {
  factory _$$UsersFetchErrorImplCopyWith(_$UsersFetchErrorImpl value,
          $Res Function(_$UsersFetchErrorImpl) then) =
      __$$UsersFetchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, String? url});
}

/// @nodoc
class __$$UsersFetchErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$UsersFetchErrorImpl>
    implements _$$UsersFetchErrorImplCopyWith<$Res> {
  __$$UsersFetchErrorImplCopyWithImpl(
      _$UsersFetchErrorImpl _value, $Res Function(_$UsersFetchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? url = freezed,
  }) {
    return _then(_$UsersFetchErrorImpl(
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
class _$UsersFetchErrorImpl
    with DiagnosticableTreeMixin
    implements _UsersFetchError {
  const _$UsersFetchErrorImpl({this.message, this.url, final String? $type})
      : $type = $type ?? 'usersFetchError';

  factory _$UsersFetchErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersFetchErrorImplFromJson(json);

  @override
  final String? message;
  @override
  final String? url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.usersFetchError(message: $message, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState.usersFetchError'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersFetchErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersFetchErrorImplCopyWith<_$UsersFetchErrorImpl> get copyWith =>
      __$$UsersFetchErrorImplCopyWithImpl<_$UsersFetchErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message, String? url) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<User> items, bool hasNextPage)
        usersFetchSuccess,
    required TResult Function(String? message, String? url) usersFetchError,
  }) {
    return usersFetchError(message, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message, String? url)? reposFetchError,
    TResult? Function()? usersFetchInProgress,
    TResult? Function()? usersFetchEmpty,
    TResult? Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult? Function(String? message, String? url)? usersFetchError,
  }) {
    return usersFetchError?.call(message, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message, String? url)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<User> items, bool hasNextPage)? usersFetchSuccess,
    TResult Function(String? message, String? url)? usersFetchError,
    required TResult orElse(),
  }) {
    if (usersFetchError != null) {
      return usersFetchError(message, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ReposFetchInProgress value) reposFetchInProgress,
    required TResult Function(_ReposFetchEmpty value) reposFetchEmpty,
    required TResult Function(_ReposFetchSuccess value) reposFetchSuccess,
    required TResult Function(_ReposFetchError value) reposFetchError,
    required TResult Function(_UsersFetchInProgress value) usersFetchInProgress,
    required TResult Function(_UsersFetchEmpty value) usersFetchEmpty,
    required TResult Function(_UsersFetchSuccess value) usersFetchSuccess,
    required TResult Function(_UsersFetchError value) usersFetchError,
  }) {
    return usersFetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult? Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult? Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult? Function(_ReposFetchError value)? reposFetchError,
    TResult? Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult? Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult? Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult? Function(_UsersFetchError value)? usersFetchError,
  }) {
    return usersFetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
    required TResult orElse(),
  }) {
    if (usersFetchError != null) {
      return usersFetchError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersFetchErrorImplToJson(
      this,
    );
  }
}

abstract class _UsersFetchError implements SearchState {
  const factory _UsersFetchError({final String? message, final String? url}) =
      _$UsersFetchErrorImpl;

  factory _UsersFetchError.fromJson(Map<String, dynamic> json) =
      _$UsersFetchErrorImpl.fromJson;

  String? get message;
  String? get url;
  @JsonKey(ignore: true)
  _$$UsersFetchErrorImplCopyWith<_$UsersFetchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
