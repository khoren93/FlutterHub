// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repositories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepositoriesState _$RepositoriesStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _Initial.fromJson(json);
    case 'reposFetchInProgress':
      return _FetchInProgress.fromJson(json);
    case 'reposFetchEmpty':
      return _FetchEmpty.fromJson(json);
    case 'reposFetchSuccess':
      return _FetchSuccess.fromJson(json);
    case 'reposFetchError':
      return _FetchError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RepositoriesState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RepositoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message)? reposFetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) reposFetchInProgress,
    required TResult Function(_FetchEmpty value) reposFetchEmpty,
    required TResult Function(_FetchSuccess value) reposFetchSuccess,
    required TResult Function(_FetchError value) reposFetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchInProgress value)? reposFetchInProgress,
    TResult? Function(_FetchEmpty value)? reposFetchEmpty,
    TResult? Function(_FetchSuccess value)? reposFetchSuccess,
    TResult? Function(_FetchError value)? reposFetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? reposFetchInProgress,
    TResult Function(_FetchEmpty value)? reposFetchEmpty,
    TResult Function(_FetchSuccess value)? reposFetchSuccess,
    TResult Function(_FetchError value)? reposFetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoriesStateCopyWith<$Res> {
  factory $RepositoriesStateCopyWith(
          RepositoriesState value, $Res Function(RepositoriesState) then) =
      _$RepositoriesStateCopyWithImpl<$Res, RepositoriesState>;
}

/// @nodoc
class _$RepositoriesStateCopyWithImpl<$Res, $Val extends RepositoriesState>
    implements $RepositoriesStateCopyWith<$Res> {
  _$RepositoriesStateCopyWithImpl(this._value, this._then);

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
    extends _$RepositoriesStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RepositoriesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RepositoriesState.initial'));
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
    required TResult Function(String? message) reposFetchError,
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
    TResult? Function(String? message)? reposFetchError,
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
    TResult Function(String? message)? reposFetchError,
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
    required TResult Function(_FetchInProgress value) reposFetchInProgress,
    required TResult Function(_FetchEmpty value) reposFetchEmpty,
    required TResult Function(_FetchSuccess value) reposFetchSuccess,
    required TResult Function(_FetchError value) reposFetchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchInProgress value)? reposFetchInProgress,
    TResult? Function(_FetchEmpty value)? reposFetchEmpty,
    TResult? Function(_FetchSuccess value)? reposFetchSuccess,
    TResult? Function(_FetchError value)? reposFetchError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? reposFetchInProgress,
    TResult Function(_FetchEmpty value)? reposFetchEmpty,
    TResult Function(_FetchSuccess value)? reposFetchSuccess,
    TResult Function(_FetchError value)? reposFetchError,
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

abstract class _Initial implements RepositoriesState {
  const factory _Initial() = _$InitialImpl;

  factory _Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;
}

/// @nodoc
abstract class _$$FetchInProgressImplCopyWith<$Res> {
  factory _$$FetchInProgressImplCopyWith(_$FetchInProgressImpl value,
          $Res Function(_$FetchInProgressImpl) then) =
      __$$FetchInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchInProgressImplCopyWithImpl<$Res>
    extends _$RepositoriesStateCopyWithImpl<$Res, _$FetchInProgressImpl>
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
      : $type = $type ?? 'reposFetchInProgress';

  factory _$FetchInProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchInProgressImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepositoriesState.reposFetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RepositoriesState.reposFetchInProgress'));
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
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
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
    TResult? Function(String? message)? reposFetchError,
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
    TResult Function(String? message)? reposFetchError,
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
    required TResult Function(_FetchInProgress value) reposFetchInProgress,
    required TResult Function(_FetchEmpty value) reposFetchEmpty,
    required TResult Function(_FetchSuccess value) reposFetchSuccess,
    required TResult Function(_FetchError value) reposFetchError,
  }) {
    return reposFetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchInProgress value)? reposFetchInProgress,
    TResult? Function(_FetchEmpty value)? reposFetchEmpty,
    TResult? Function(_FetchSuccess value)? reposFetchSuccess,
    TResult? Function(_FetchError value)? reposFetchError,
  }) {
    return reposFetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? reposFetchInProgress,
    TResult Function(_FetchEmpty value)? reposFetchEmpty,
    TResult Function(_FetchSuccess value)? reposFetchSuccess,
    TResult Function(_FetchError value)? reposFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchInProgress != null) {
      return reposFetchInProgress(this);
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

abstract class _FetchInProgress implements RepositoriesState {
  const factory _FetchInProgress() = _$FetchInProgressImpl;

  factory _FetchInProgress.fromJson(Map<String, dynamic> json) =
      _$FetchInProgressImpl.fromJson;
}

/// @nodoc
abstract class _$$FetchEmptyImplCopyWith<$Res> {
  factory _$$FetchEmptyImplCopyWith(
          _$FetchEmptyImpl value, $Res Function(_$FetchEmptyImpl) then) =
      __$$FetchEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchEmptyImplCopyWithImpl<$Res>
    extends _$RepositoriesStateCopyWithImpl<$Res, _$FetchEmptyImpl>
    implements _$$FetchEmptyImplCopyWith<$Res> {
  __$$FetchEmptyImplCopyWithImpl(
      _$FetchEmptyImpl _value, $Res Function(_$FetchEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$FetchEmptyImpl with DiagnosticableTreeMixin implements _FetchEmpty {
  const _$FetchEmptyImpl({final String? $type})
      : $type = $type ?? 'reposFetchEmpty';

  factory _$FetchEmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchEmptyImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepositoriesState.reposFetchEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'RepositoriesState.reposFetchEmpty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchEmptyImpl);
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
    required TResult Function(String? message) reposFetchError,
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
    TResult? Function(String? message)? reposFetchError,
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
    TResult Function(String? message)? reposFetchError,
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
    required TResult Function(_FetchInProgress value) reposFetchInProgress,
    required TResult Function(_FetchEmpty value) reposFetchEmpty,
    required TResult Function(_FetchSuccess value) reposFetchSuccess,
    required TResult Function(_FetchError value) reposFetchError,
  }) {
    return reposFetchEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchInProgress value)? reposFetchInProgress,
    TResult? Function(_FetchEmpty value)? reposFetchEmpty,
    TResult? Function(_FetchSuccess value)? reposFetchSuccess,
    TResult? Function(_FetchError value)? reposFetchError,
  }) {
    return reposFetchEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? reposFetchInProgress,
    TResult Function(_FetchEmpty value)? reposFetchEmpty,
    TResult Function(_FetchSuccess value)? reposFetchSuccess,
    TResult Function(_FetchError value)? reposFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchEmpty != null) {
      return reposFetchEmpty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchEmptyImplToJson(
      this,
    );
  }
}

abstract class _FetchEmpty implements RepositoriesState {
  const factory _FetchEmpty() = _$FetchEmptyImpl;

  factory _FetchEmpty.fromJson(Map<String, dynamic> json) =
      _$FetchEmptyImpl.fromJson;
}

/// @nodoc
abstract class _$$FetchSuccessImplCopyWith<$Res> {
  factory _$$FetchSuccessImplCopyWith(
          _$FetchSuccessImpl value, $Res Function(_$FetchSuccessImpl) then) =
      __$$FetchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Repository> items, bool hasNextPage});
}

/// @nodoc
class __$$FetchSuccessImplCopyWithImpl<$Res>
    extends _$RepositoriesStateCopyWithImpl<$Res, _$FetchSuccessImpl>
    implements _$$FetchSuccessImplCopyWith<$Res> {
  __$$FetchSuccessImplCopyWithImpl(
      _$FetchSuccessImpl _value, $Res Function(_$FetchSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$FetchSuccessImpl(
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
class _$FetchSuccessImpl with DiagnosticableTreeMixin implements _FetchSuccess {
  const _$FetchSuccessImpl(
      {required final List<Repository> items,
      required this.hasNextPage,
      final String? $type})
      : _items = items,
        $type = $type ?? 'reposFetchSuccess';

  factory _$FetchSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchSuccessImplFromJson(json);

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
    return 'RepositoriesState.reposFetchSuccess(items: $items, hasNextPage: $hasNextPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepositoriesState.reposFetchSuccess'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('hasNextPage', hasNextPage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSuccessImpl &&
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
  _$$FetchSuccessImplCopyWith<_$FetchSuccessImpl> get copyWith =>
      __$$FetchSuccessImplCopyWithImpl<_$FetchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
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
    TResult? Function(String? message)? reposFetchError,
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
    TResult Function(String? message)? reposFetchError,
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
    required TResult Function(_FetchInProgress value) reposFetchInProgress,
    required TResult Function(_FetchEmpty value) reposFetchEmpty,
    required TResult Function(_FetchSuccess value) reposFetchSuccess,
    required TResult Function(_FetchError value) reposFetchError,
  }) {
    return reposFetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchInProgress value)? reposFetchInProgress,
    TResult? Function(_FetchEmpty value)? reposFetchEmpty,
    TResult? Function(_FetchSuccess value)? reposFetchSuccess,
    TResult? Function(_FetchError value)? reposFetchError,
  }) {
    return reposFetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? reposFetchInProgress,
    TResult Function(_FetchEmpty value)? reposFetchEmpty,
    TResult Function(_FetchSuccess value)? reposFetchSuccess,
    TResult Function(_FetchError value)? reposFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchSuccess != null) {
      return reposFetchSuccess(this);
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

abstract class _FetchSuccess implements RepositoriesState {
  const factory _FetchSuccess(
      {required final List<Repository> items,
      required final bool hasNextPage}) = _$FetchSuccessImpl;

  factory _FetchSuccess.fromJson(Map<String, dynamic> json) =
      _$FetchSuccessImpl.fromJson;

  List<Repository> get items;
  bool get hasNextPage;
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
  $Res call({String? message});
}

/// @nodoc
class __$$FetchErrorImplCopyWithImpl<$Res>
    extends _$RepositoriesStateCopyWithImpl<$Res, _$FetchErrorImpl>
    implements _$$FetchErrorImplCopyWith<$Res> {
  __$$FetchErrorImplCopyWithImpl(
      _$FetchErrorImpl _value, $Res Function(_$FetchErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FetchErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchErrorImpl with DiagnosticableTreeMixin implements _FetchError {
  const _$FetchErrorImpl({this.message, final String? $type})
      : $type = $type ?? 'reposFetchError';

  factory _$FetchErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchErrorImplFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RepositoriesState.reposFetchError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RepositoriesState.reposFetchError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchErrorImplCopyWith<_$FetchErrorImpl> get copyWith =>
      __$$FetchErrorImplCopyWithImpl<_$FetchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reposFetchInProgress,
    required TResult Function() reposFetchEmpty,
    required TResult Function(List<Repository> items, bool hasNextPage)
        reposFetchSuccess,
    required TResult Function(String? message) reposFetchError,
  }) {
    return reposFetchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reposFetchInProgress,
    TResult? Function()? reposFetchEmpty,
    TResult? Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult? Function(String? message)? reposFetchError,
  }) {
    return reposFetchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reposFetchInProgress,
    TResult Function()? reposFetchEmpty,
    TResult Function(List<Repository> items, bool hasNextPage)?
        reposFetchSuccess,
    TResult Function(String? message)? reposFetchError,
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
    required TResult Function(_FetchInProgress value) reposFetchInProgress,
    required TResult Function(_FetchEmpty value) reposFetchEmpty,
    required TResult Function(_FetchSuccess value) reposFetchSuccess,
    required TResult Function(_FetchError value) reposFetchError,
  }) {
    return reposFetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchInProgress value)? reposFetchInProgress,
    TResult? Function(_FetchEmpty value)? reposFetchEmpty,
    TResult? Function(_FetchSuccess value)? reposFetchSuccess,
    TResult? Function(_FetchError value)? reposFetchError,
  }) {
    return reposFetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? reposFetchInProgress,
    TResult Function(_FetchEmpty value)? reposFetchEmpty,
    TResult Function(_FetchSuccess value)? reposFetchSuccess,
    TResult Function(_FetchError value)? reposFetchError,
    required TResult orElse(),
  }) {
    if (reposFetchError != null) {
      return reposFetchError(this);
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

abstract class _FetchError implements RepositoriesState {
  const factory _FetchError({final String? message}) = _$FetchErrorImpl;

  factory _FetchError.fromJson(Map<String, dynamic> json) =
      _$FetchErrorImpl.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$FetchErrorImplCopyWith<_$FetchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
