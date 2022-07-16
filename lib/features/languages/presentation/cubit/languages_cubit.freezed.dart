// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'languages_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguagesState _$LanguagesStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _Initial.fromJson(json);
    case 'fetchInProgress':
      return _FetchInProgress.fromJson(json);
    case 'fetchEmpty':
      return _FetchEmpty.fromJson(json);
    case 'fetchSuccess':
      return _FetchSuccess.fromJson(json);
    case 'fetchError':
      return _FetchError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LanguagesState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LanguagesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() fetchEmpty,
    required TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)
        fetchSuccess,
    required TResult Function(String? message) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchEmpty value) fetchEmpty,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguagesStateCopyWith<$Res> {
  factory $LanguagesStateCopyWith(
          LanguagesState value, $Res Function(LanguagesState) then) =
      _$LanguagesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LanguagesStateCopyWithImpl<$Res>
    implements $LanguagesStateCopyWith<$Res> {
  _$LanguagesStateCopyWithImpl(this._value, this._then);

  final LanguagesState _value;
  // ignore: unused_field
  final $Res Function(LanguagesState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$LanguagesStateCopyWithImpl<$Res>
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
    return 'LanguagesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LanguagesState.initial'));
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
    required TResult Function() fetchInProgress,
    required TResult Function() fetchEmpty,
    required TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)
        fetchSuccess,
    required TResult Function(String? message) fetchError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
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
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchEmpty value) fetchEmpty,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitialToJson(
      this,
    );
  }
}

abstract class _Initial implements LanguagesState {
  const factory _Initial() = _$_Initial;

  factory _Initial.fromJson(Map<String, dynamic> json) = _$_Initial.fromJson;
}

/// @nodoc
abstract class _$$_FetchInProgressCopyWith<$Res> {
  factory _$$_FetchInProgressCopyWith(
          _$_FetchInProgress value, $Res Function(_$_FetchInProgress) then) =
      __$$_FetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchInProgressCopyWithImpl<$Res>
    extends _$LanguagesStateCopyWithImpl<$Res>
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
    return 'LanguagesState.fetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LanguagesState.fetchInProgress'));
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
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() fetchEmpty,
    required TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)
        fetchSuccess,
    required TResult Function(String? message) fetchError,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
  }) {
    return fetchInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchEmpty value) fetchEmpty,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return fetchInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
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

abstract class _FetchInProgress implements LanguagesState {
  const factory _FetchInProgress() = _$_FetchInProgress;

  factory _FetchInProgress.fromJson(Map<String, dynamic> json) =
      _$_FetchInProgress.fromJson;
}

/// @nodoc
abstract class _$$_FetchEmptyCopyWith<$Res> {
  factory _$$_FetchEmptyCopyWith(
          _$_FetchEmpty value, $Res Function(_$_FetchEmpty) then) =
      __$$_FetchEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchEmptyCopyWithImpl<$Res>
    extends _$LanguagesStateCopyWithImpl<$Res>
    implements _$$_FetchEmptyCopyWith<$Res> {
  __$$_FetchEmptyCopyWithImpl(
      _$_FetchEmpty _value, $Res Function(_$_FetchEmpty) _then)
      : super(_value, (v) => _then(v as _$_FetchEmpty));

  @override
  _$_FetchEmpty get _value => super._value as _$_FetchEmpty;
}

/// @nodoc
@JsonSerializable()
class _$_FetchEmpty with DiagnosticableTreeMixin implements _FetchEmpty {
  const _$_FetchEmpty({final String? $type}) : $type = $type ?? 'fetchEmpty';

  factory _$_FetchEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_FetchEmptyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LanguagesState.fetchEmpty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LanguagesState.fetchEmpty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() fetchEmpty,
    required TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)
        fetchSuccess,
    required TResult Function(String? message) fetchError,
  }) {
    return fetchEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
  }) {
    return fetchEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchEmpty != null) {
      return fetchEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchEmpty value) fetchEmpty,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return fetchEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchEmpty != null) {
      return fetchEmpty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchEmptyToJson(
      this,
    );
  }
}

abstract class _FetchEmpty implements LanguagesState {
  const factory _FetchEmpty() = _$_FetchEmpty;

  factory _FetchEmpty.fromJson(Map<String, dynamic> json) =
      _$_FetchEmpty.fromJson;
}

/// @nodoc
abstract class _$$_FetchSuccessCopyWith<$Res> {
  factory _$$_FetchSuccessCopyWith(
          _$_FetchSuccess value, $Res Function(_$_FetchSuccess) then) =
      __$$_FetchSuccessCopyWithImpl<$Res>;
  $Res call({List<RepositoryLanguage> items, RepositoryLanguage? selected});

  $RepositoryLanguageCopyWith<$Res>? get selected;
}

/// @nodoc
class __$$_FetchSuccessCopyWithImpl<$Res>
    extends _$LanguagesStateCopyWithImpl<$Res>
    implements _$$_FetchSuccessCopyWith<$Res> {
  __$$_FetchSuccessCopyWithImpl(
      _$_FetchSuccess _value, $Res Function(_$_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _$_FetchSuccess));

  @override
  _$_FetchSuccess get _value => super._value as _$_FetchSuccess;

  @override
  $Res call({
    Object? items = freezed,
    Object? selected = freezed,
  }) {
    return _then(_$_FetchSuccess(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RepositoryLanguage>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as RepositoryLanguage?,
    ));
  }

  @override
  $RepositoryLanguageCopyWith<$Res>? get selected {
    if (_value.selected == null) {
      return null;
    }

    return $RepositoryLanguageCopyWith<$Res>(_value.selected!, (value) {
      return _then(_value.copyWith(selected: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchSuccess with DiagnosticableTreeMixin implements _FetchSuccess {
  const _$_FetchSuccess(
      {required final List<RepositoryLanguage> items,
      required this.selected,
      final String? $type})
      : _items = items,
        $type = $type ?? 'fetchSuccess';

  factory _$_FetchSuccess.fromJson(Map<String, dynamic> json) =>
      _$$_FetchSuccessFromJson(json);

  final List<RepositoryLanguage> _items;
  @override
  List<RepositoryLanguage> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final RepositoryLanguage? selected;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LanguagesState.fetchSuccess(items: $items, selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LanguagesState.fetchSuccess'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchSuccess &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$$_FetchSuccessCopyWith<_$_FetchSuccess> get copyWith =>
      __$$_FetchSuccessCopyWithImpl<_$_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() fetchEmpty,
    required TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)
        fetchSuccess,
    required TResult Function(String? message) fetchError,
  }) {
    return fetchSuccess(items, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
  }) {
    return fetchSuccess?.call(items, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(items, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchEmpty value) fetchEmpty,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return fetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
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

abstract class _FetchSuccess implements LanguagesState {
  const factory _FetchSuccess(
      {required final List<RepositoryLanguage> items,
      required final RepositoryLanguage? selected}) = _$_FetchSuccess;

  factory _FetchSuccess.fromJson(Map<String, dynamic> json) =
      _$_FetchSuccess.fromJson;

  List<RepositoryLanguage> get items;
  RepositoryLanguage? get selected;
  @JsonKey(ignore: true)
  _$$_FetchSuccessCopyWith<_$_FetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchErrorCopyWith<$Res> {
  factory _$$_FetchErrorCopyWith(
          _$_FetchError value, $Res Function(_$_FetchError) then) =
      __$$_FetchErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$_FetchErrorCopyWithImpl<$Res>
    extends _$LanguagesStateCopyWithImpl<$Res>
    implements _$$_FetchErrorCopyWith<$Res> {
  __$$_FetchErrorCopyWithImpl(
      _$_FetchError _value, $Res Function(_$_FetchError) _then)
      : super(_value, (v) => _then(v as _$_FetchError));

  @override
  _$_FetchError get _value => super._value as _$_FetchError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_FetchError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchError with DiagnosticableTreeMixin implements _FetchError {
  const _$_FetchError({this.message, final String? $type})
      : $type = $type ?? 'fetchError';

  factory _$_FetchError.fromJson(Map<String, dynamic> json) =>
      _$$_FetchErrorFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LanguagesState.fetchError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LanguagesState.fetchError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_FetchErrorCopyWith<_$_FetchError> get copyWith =>
      __$$_FetchErrorCopyWithImpl<_$_FetchError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function() fetchEmpty,
    required TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)
        fetchSuccess,
    required TResult Function(String? message) fetchError,
  }) {
    return fetchError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
  }) {
    return fetchError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function()? fetchEmpty,
    TResult Function(
            List<RepositoryLanguage> items, RepositoryLanguage? selected)?
        fetchSuccess,
    TResult Function(String? message)? fetchError,
    required TResult orElse(),
  }) {
    if (fetchError != null) {
      return fetchError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchEmpty value) fetchEmpty,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_FetchError value) fetchError,
  }) {
    return fetchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_FetchError value)? fetchError,
  }) {
    return fetchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchEmpty value)? fetchEmpty,
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

abstract class _FetchError implements LanguagesState {
  const factory _FetchError({final String? message}) = _$_FetchError;

  factory _FetchError.fromJson(Map<String, dynamic> json) =
      _$_FetchError.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FetchErrorCopyWith<_$_FetchError> get copyWith =>
      throw _privateConstructorUsedError;
}
