// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trending_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrendingState _$TrendingStateFromJson(Map<String, dynamic> json) {
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
      throw CheckedFromJsonException(json, 'runtimeType', 'TrendingState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TrendingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<TrendingRepository> items) reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<TrendingUser> items) usersFetchSuccess,
    required TResult Function(String? message) usersFetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
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
abstract class $TrendingStateCopyWith<$Res> {
  factory $TrendingStateCopyWith(
          TrendingState value, $Res Function(TrendingState) then) =
      _$TrendingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrendingStateCopyWithImpl<$Res>
    implements $TrendingStateCopyWith<$Res> {
  _$TrendingStateCopyWithImpl(this._value, this._then);

  final TrendingState _value;
  // ignore: unused_field
  final $Res Function(TrendingState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc
@JsonSerializable()
class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial({final String? $type}) : $type = $type ?? 'initial';

  factory _$_Initial.fromJson(Map<String, dynamic> json) =>
      _$$_InitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TrendingState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
    required TResult Function(List<TrendingRepository> items) reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<TrendingUser> items) usersFetchSuccess,
    required TResult Function(String? message) usersFetchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
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
    return _$$_InitialToJson(this);
  }
}

abstract class _Initial implements TrendingState {
  const factory _Initial() = _$_Initial;

  factory _Initial.fromJson(Map<String, dynamic> json) = _$_Initial.fromJson;
}

/// @nodoc
abstract class _$$_ReposFetchInProgressCopyWith<$Res> {
  factory _$$_ReposFetchInProgressCopyWith(_$_ReposFetchInProgress value,
          $Res Function(_$_ReposFetchInProgress) then) =
      __$$_ReposFetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReposFetchInProgressCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_ReposFetchInProgressCopyWith<$Res> {
  __$$_ReposFetchInProgressCopyWithImpl(_$_ReposFetchInProgress _value,
      $Res Function(_$_ReposFetchInProgress) _then)
      : super(_value, (v) => _then(v as _$_ReposFetchInProgress));

  @override
  _$_ReposFetchInProgress get _value => super._value as _$_ReposFetchInProgress;
}

/// @nodoc
@JsonSerializable()
class _$_ReposFetchInProgress
    with DiagnosticableTreeMixin
    implements _ReposFetchInProgress {
  const _$_ReposFetchInProgress({final String? $type})
      : $type = $type ?? 'reposFetchInProgress';

  factory _$_ReposFetchInProgress.fromJson(Map<String, dynamic> json) =>
      _$$_ReposFetchInProgressFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingState.reposFetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TrendingState.reposFetchInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReposFetchInProgress);
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
    required TResult Function(List<TrendingRepository> items) reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<TrendingUser> items) usersFetchSuccess,
    required TResult Function(String? message) usersFetchError,
  }) {
    return reposFetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
  }) {
    return reposFetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
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
    return _$$_ReposFetchInProgressToJson(this);
  }
}

abstract class _ReposFetchInProgress implements TrendingState {
  const factory _ReposFetchInProgress() = _$_ReposFetchInProgress;

  factory _ReposFetchInProgress.fromJson(Map<String, dynamic> json) =
      _$_ReposFetchInProgress.fromJson;
}

/// @nodoc
abstract class _$$_ReposFetchEmptyCopyWith<$Res> {
  factory _$$_ReposFetchEmptyCopyWith(
          _$_ReposFetchEmpty value, $Res Function(_$_ReposFetchEmpty) then) =
      __$$_ReposFetchEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReposFetchEmptyCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_ReposFetchEmptyCopyWith<$Res> {
  __$$_ReposFetchEmptyCopyWithImpl(
      _$_ReposFetchEmpty _value, $Res Function(_$_ReposFetchEmpty) _then)
      : super(_value, (v) => _then(v as _$_ReposFetchEmpty));

  @override
  _$_ReposFetchEmpty get _value => super._value as _$_ReposFetchEmpty;
}

/// @nodoc
@JsonSerializable()
class _$_ReposFetchEmpty
    with DiagnosticableTreeMixin
    implements _ReposFetchEmpty {
  const _$_ReposFetchEmpty({final String? $type})
      : $type = $type ?? 'reposFetchEmpty';

  factory _$_ReposFetchEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_ReposFetchEmptyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingState.reposFetchEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TrendingState.reposFetchEmpty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReposFetchEmpty);
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
    required TResult Function(List<TrendingRepository> items) reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<TrendingUser> items) usersFetchSuccess,
    required TResult Function(String? message) usersFetchError,
  }) {
    return reposFetchEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
  }) {
    return reposFetchEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
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
    return _$$_ReposFetchEmptyToJson(this);
  }
}

abstract class _ReposFetchEmpty implements TrendingState {
  const factory _ReposFetchEmpty() = _$_ReposFetchEmpty;

  factory _ReposFetchEmpty.fromJson(Map<String, dynamic> json) =
      _$_ReposFetchEmpty.fromJson;
}

/// @nodoc
abstract class _$$_ReposFetchSuccessCopyWith<$Res> {
  factory _$$_ReposFetchSuccessCopyWith(_$_ReposFetchSuccess value,
          $Res Function(_$_ReposFetchSuccess) then) =
      __$$_ReposFetchSuccessCopyWithImpl<$Res>;
  $Res call({List<TrendingRepository> items});
}

/// @nodoc
class __$$_ReposFetchSuccessCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_ReposFetchSuccessCopyWith<$Res> {
  __$$_ReposFetchSuccessCopyWithImpl(
      _$_ReposFetchSuccess _value, $Res Function(_$_ReposFetchSuccess) _then)
      : super(_value, (v) => _then(v as _$_ReposFetchSuccess));

  @override
  _$_ReposFetchSuccess get _value => super._value as _$_ReposFetchSuccess;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_ReposFetchSuccess(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TrendingRepository>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReposFetchSuccess
    with DiagnosticableTreeMixin
    implements _ReposFetchSuccess {
  const _$_ReposFetchSuccess(
      {required final List<TrendingRepository> items, final String? $type})
      : _items = items,
        $type = $type ?? 'reposFetchSuccess';

  factory _$_ReposFetchSuccess.fromJson(Map<String, dynamic> json) =>
      _$$_ReposFetchSuccessFromJson(json);

  final List<TrendingRepository> _items;
  @override
  List<TrendingRepository> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingState.reposFetchSuccess(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrendingState.reposFetchSuccess'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReposFetchSuccess &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_ReposFetchSuccessCopyWith<_$_ReposFetchSuccess> get copyWith =>
      __$$_ReposFetchSuccessCopyWithImpl<_$_ReposFetchSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<TrendingRepository> items) reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<TrendingUser> items) usersFetchSuccess,
    required TResult Function(String? message) usersFetchError,
  }) {
    return reposFetchSuccess(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
  }) {
    return reposFetchSuccess?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchSuccess != null) {
      return reposFetchSuccess(items);
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
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
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
    return _$$_ReposFetchSuccessToJson(this);
  }
}

abstract class _ReposFetchSuccess implements TrendingState {
  const factory _ReposFetchSuccess(
      {required final List<TrendingRepository> items}) = _$_ReposFetchSuccess;

  factory _ReposFetchSuccess.fromJson(Map<String, dynamic> json) =
      _$_ReposFetchSuccess.fromJson;

  List<TrendingRepository> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ReposFetchSuccessCopyWith<_$_ReposFetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReposFetchErrorCopyWith<$Res> {
  factory _$$_ReposFetchErrorCopyWith(
          _$_ReposFetchError value, $Res Function(_$_ReposFetchError) then) =
      __$$_ReposFetchErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$_ReposFetchErrorCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_ReposFetchErrorCopyWith<$Res> {
  __$$_ReposFetchErrorCopyWithImpl(
      _$_ReposFetchError _value, $Res Function(_$_ReposFetchError) _then)
      : super(_value, (v) => _then(v as _$_ReposFetchError));

  @override
  _$_ReposFetchError get _value => super._value as _$_ReposFetchError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ReposFetchError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReposFetchError
    with DiagnosticableTreeMixin
    implements _ReposFetchError {
  const _$_ReposFetchError({this.message, final String? $type})
      : $type = $type ?? 'reposFetchError';

  factory _$_ReposFetchError.fromJson(Map<String, dynamic> json) =>
      _$$_ReposFetchErrorFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingState.reposFetchError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrendingState.reposFetchError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReposFetchError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ReposFetchErrorCopyWith<_$_ReposFetchError> get copyWith =>
      __$$_ReposFetchErrorCopyWithImpl<_$_ReposFetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<TrendingRepository> items) reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<TrendingUser> items) usersFetchSuccess,
    required TResult Function(String? message) usersFetchError,
  }) {
    return reposFetchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
  }) {
    return reposFetchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchError != null) {
      return reposFetchError(message);
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
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
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
    return _$$_ReposFetchErrorToJson(this);
  }
}

abstract class _ReposFetchError implements TrendingState {
  const factory _ReposFetchError({final String? message}) = _$_ReposFetchError;

  factory _ReposFetchError.fromJson(Map<String, dynamic> json) =
      _$_ReposFetchError.fromJson;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ReposFetchErrorCopyWith<_$_ReposFetchError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UsersFetchInProgressCopyWith<$Res> {
  factory _$$_UsersFetchInProgressCopyWith(_$_UsersFetchInProgress value,
          $Res Function(_$_UsersFetchInProgress) then) =
      __$$_UsersFetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UsersFetchInProgressCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_UsersFetchInProgressCopyWith<$Res> {
  __$$_UsersFetchInProgressCopyWithImpl(_$_UsersFetchInProgress _value,
      $Res Function(_$_UsersFetchInProgress) _then)
      : super(_value, (v) => _then(v as _$_UsersFetchInProgress));

  @override
  _$_UsersFetchInProgress get _value => super._value as _$_UsersFetchInProgress;
}

/// @nodoc
@JsonSerializable()
class _$_UsersFetchInProgress
    with DiagnosticableTreeMixin
    implements _UsersFetchInProgress {
  const _$_UsersFetchInProgress({final String? $type})
      : $type = $type ?? 'usersFetchInProgress';

  factory _$_UsersFetchInProgress.fromJson(Map<String, dynamic> json) =>
      _$$_UsersFetchInProgressFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingState.usersFetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TrendingState.usersFetchInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UsersFetchInProgress);
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
    required TResult Function(List<TrendingRepository> items) reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<TrendingUser> items) usersFetchSuccess,
    required TResult Function(String? message) usersFetchError,
  }) {
    return usersFetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
  }) {
    return usersFetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
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
    return _$$_UsersFetchInProgressToJson(this);
  }
}

abstract class _UsersFetchInProgress implements TrendingState {
  const factory _UsersFetchInProgress() = _$_UsersFetchInProgress;

  factory _UsersFetchInProgress.fromJson(Map<String, dynamic> json) =
      _$_UsersFetchInProgress.fromJson;
}

/// @nodoc
abstract class _$$_UsersFetchEmptyCopyWith<$Res> {
  factory _$$_UsersFetchEmptyCopyWith(
          _$_UsersFetchEmpty value, $Res Function(_$_UsersFetchEmpty) then) =
      __$$_UsersFetchEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UsersFetchEmptyCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_UsersFetchEmptyCopyWith<$Res> {
  __$$_UsersFetchEmptyCopyWithImpl(
      _$_UsersFetchEmpty _value, $Res Function(_$_UsersFetchEmpty) _then)
      : super(_value, (v) => _then(v as _$_UsersFetchEmpty));

  @override
  _$_UsersFetchEmpty get _value => super._value as _$_UsersFetchEmpty;
}

/// @nodoc
@JsonSerializable()
class _$_UsersFetchEmpty
    with DiagnosticableTreeMixin
    implements _UsersFetchEmpty {
  const _$_UsersFetchEmpty({final String? $type})
      : $type = $type ?? 'usersFetchEmpty';

  factory _$_UsersFetchEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_UsersFetchEmptyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingState.usersFetchEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TrendingState.usersFetchEmpty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UsersFetchEmpty);
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
    required TResult Function(List<TrendingRepository> items) reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<TrendingUser> items) usersFetchSuccess,
    required TResult Function(String? message) usersFetchError,
  }) {
    return usersFetchEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
  }) {
    return usersFetchEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
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
    return _$$_UsersFetchEmptyToJson(this);
  }
}

abstract class _UsersFetchEmpty implements TrendingState {
  const factory _UsersFetchEmpty() = _$_UsersFetchEmpty;

  factory _UsersFetchEmpty.fromJson(Map<String, dynamic> json) =
      _$_UsersFetchEmpty.fromJson;
}

/// @nodoc
abstract class _$$_UsersFetchSuccessCopyWith<$Res> {
  factory _$$_UsersFetchSuccessCopyWith(_$_UsersFetchSuccess value,
          $Res Function(_$_UsersFetchSuccess) then) =
      __$$_UsersFetchSuccessCopyWithImpl<$Res>;
  $Res call({List<TrendingUser> items});
}

/// @nodoc
class __$$_UsersFetchSuccessCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_UsersFetchSuccessCopyWith<$Res> {
  __$$_UsersFetchSuccessCopyWithImpl(
      _$_UsersFetchSuccess _value, $Res Function(_$_UsersFetchSuccess) _then)
      : super(_value, (v) => _then(v as _$_UsersFetchSuccess));

  @override
  _$_UsersFetchSuccess get _value => super._value as _$_UsersFetchSuccess;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_UsersFetchSuccess(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TrendingUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersFetchSuccess
    with DiagnosticableTreeMixin
    implements _UsersFetchSuccess {
  const _$_UsersFetchSuccess(
      {required final List<TrendingUser> items, final String? $type})
      : _items = items,
        $type = $type ?? 'usersFetchSuccess';

  factory _$_UsersFetchSuccess.fromJson(Map<String, dynamic> json) =>
      _$$_UsersFetchSuccessFromJson(json);

  final List<TrendingUser> _items;
  @override
  List<TrendingUser> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingState.usersFetchSuccess(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrendingState.usersFetchSuccess'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersFetchSuccess &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_UsersFetchSuccessCopyWith<_$_UsersFetchSuccess> get copyWith =>
      __$$_UsersFetchSuccessCopyWithImpl<_$_UsersFetchSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<TrendingRepository> items) reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<TrendingUser> items) usersFetchSuccess,
    required TResult Function(String? message) usersFetchError,
  }) {
    return usersFetchSuccess(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
  }) {
    return usersFetchSuccess?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
    required TResult orElse(),
  }) {
    if (usersFetchSuccess != null) {
      return usersFetchSuccess(items);
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
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
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
    return _$$_UsersFetchSuccessToJson(this);
  }
}

abstract class _UsersFetchSuccess implements TrendingState {
  const factory _UsersFetchSuccess({required final List<TrendingUser> items}) =
      _$_UsersFetchSuccess;

  factory _UsersFetchSuccess.fromJson(Map<String, dynamic> json) =
      _$_UsersFetchSuccess.fromJson;

  List<TrendingUser> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UsersFetchSuccessCopyWith<_$_UsersFetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UsersFetchErrorCopyWith<$Res> {
  factory _$$_UsersFetchErrorCopyWith(
          _$_UsersFetchError value, $Res Function(_$_UsersFetchError) then) =
      __$$_UsersFetchErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$_UsersFetchErrorCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res>
    implements _$$_UsersFetchErrorCopyWith<$Res> {
  __$$_UsersFetchErrorCopyWithImpl(
      _$_UsersFetchError _value, $Res Function(_$_UsersFetchError) _then)
      : super(_value, (v) => _then(v as _$_UsersFetchError));

  @override
  _$_UsersFetchError get _value => super._value as _$_UsersFetchError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_UsersFetchError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersFetchError
    with DiagnosticableTreeMixin
    implements _UsersFetchError {
  const _$_UsersFetchError({this.message, final String? $type})
      : $type = $type ?? 'usersFetchError';

  factory _$_UsersFetchError.fromJson(Map<String, dynamic> json) =>
      _$$_UsersFetchErrorFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrendingState.usersFetchError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrendingState.usersFetchError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersFetchError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_UsersFetchErrorCopyWith<_$_UsersFetchError> get copyWith =>
      __$$_UsersFetchErrorCopyWithImpl<_$_UsersFetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<TrendingRepository> items) reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
    required TResult Function() usersFetchInProgress,
    required TResult Function() usersFetchEmpty,
    required TResult Function(List<TrendingUser> items) usersFetchSuccess,
    required TResult Function(String? message) usersFetchError,
  }) {
    return usersFetchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
  }) {
    return usersFetchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<TrendingRepository> items)? reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    TResult Function()? usersFetchInProgress,
    TResult Function()? usersFetchEmpty,
    TResult Function(List<TrendingUser> items)? usersFetchSuccess,
    TResult Function(String? message)? usersFetchError,
    required TResult orElse(),
  }) {
    if (usersFetchError != null) {
      return usersFetchError(message);
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
    TResult Function(_Initial value)? initial,
    TResult Function(_ReposFetchInProgress value)? reposFetchInProgress,
    TResult Function(_ReposFetchEmpty value)? reposFetchEmpty,
    TResult Function(_ReposFetchSuccess value)? reposFetchSuccess,
    TResult Function(_ReposFetchError value)? reposFetchError,
    TResult Function(_UsersFetchInProgress value)? usersFetchInProgress,
    TResult Function(_UsersFetchEmpty value)? usersFetchEmpty,
    TResult Function(_UsersFetchSuccess value)? usersFetchSuccess,
    TResult Function(_UsersFetchError value)? usersFetchError,
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
    return _$$_UsersFetchErrorToJson(this);
  }
}

abstract class _UsersFetchError implements TrendingState {
  const factory _UsersFetchError({final String? message}) = _$_UsersFetchError;

  factory _UsersFetchError.fromJson(Map<String, dynamic> json) =
      _$_UsersFetchError.fromJson;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UsersFetchErrorCopyWith<_$_UsersFetchError> get copyWith =>
      throw _privateConstructorUsedError;
}
