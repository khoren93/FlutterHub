// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RepositoryLanguage _$RepositoryLanguageFromJson(Map<String, dynamic> json) {
  return _RepositoryLanguage.fromJson(json);
}

/// @nodoc
mixin _$RepositoryLanguage {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlParam')
  String? get urlParam => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryLanguageCopyWith<RepositoryLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryLanguageCopyWith<$Res> {
  factory $RepositoryLanguageCopyWith(
          RepositoryLanguage value, $Res Function(RepositoryLanguage) then) =
      _$RepositoryLanguageCopyWithImpl<$Res, RepositoryLanguage>;
  @useResult
  $Res call({String? name, @JsonKey(name: 'urlParam') String? urlParam});
}

/// @nodoc
class _$RepositoryLanguageCopyWithImpl<$Res, $Val extends RepositoryLanguage>
    implements $RepositoryLanguageCopyWith<$Res> {
  _$RepositoryLanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? urlParam = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      urlParam: freezed == urlParam
          ? _value.urlParam
          : urlParam // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryLanguageImplCopyWith<$Res>
    implements $RepositoryLanguageCopyWith<$Res> {
  factory _$$RepositoryLanguageImplCopyWith(_$RepositoryLanguageImpl value,
          $Res Function(_$RepositoryLanguageImpl) then) =
      __$$RepositoryLanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, @JsonKey(name: 'urlParam') String? urlParam});
}

/// @nodoc
class __$$RepositoryLanguageImplCopyWithImpl<$Res>
    extends _$RepositoryLanguageCopyWithImpl<$Res, _$RepositoryLanguageImpl>
    implements _$$RepositoryLanguageImplCopyWith<$Res> {
  __$$RepositoryLanguageImplCopyWithImpl(_$RepositoryLanguageImpl _value,
      $Res Function(_$RepositoryLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? urlParam = freezed,
  }) {
    return _then(_$RepositoryLanguageImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      urlParam: freezed == urlParam
          ? _value.urlParam
          : urlParam // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryLanguageImpl extends _RepositoryLanguage {
  const _$RepositoryLanguageImpl(
      {this.name, @JsonKey(name: 'urlParam') this.urlParam})
      : super._();

  factory _$RepositoryLanguageImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryLanguageImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'urlParam')
  final String? urlParam;

  @override
  String toString() {
    return 'RepositoryLanguage(name: $name, urlParam: $urlParam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryLanguageImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.urlParam, urlParam) ||
                other.urlParam == urlParam));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, urlParam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryLanguageImplCopyWith<_$RepositoryLanguageImpl> get copyWith =>
      __$$RepositoryLanguageImplCopyWithImpl<_$RepositoryLanguageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryLanguageImplToJson(
      this,
    );
  }
}

abstract class _RepositoryLanguage extends RepositoryLanguage {
  const factory _RepositoryLanguage(
          {final String? name,
          @JsonKey(name: 'urlParam') final String? urlParam}) =
      _$RepositoryLanguageImpl;
  const _RepositoryLanguage._() : super._();

  factory _RepositoryLanguage.fromJson(Map<String, dynamic> json) =
      _$RepositoryLanguageImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'urlParam')
  String? get urlParam;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryLanguageImplCopyWith<_$RepositoryLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RepositorySearch _$RepositorySearchFromJson(Map<String, dynamic> json) {
  return _RepositorySearch.fromJson(json);
}

/// @nodoc
mixin _$RepositorySearch {
  List<Repository>? get items => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  bool? get incompleteResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositorySearchCopyWith<RepositorySearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositorySearchCopyWith<$Res> {
  factory $RepositorySearchCopyWith(
          RepositorySearch value, $Res Function(RepositorySearch) then) =
      _$RepositorySearchCopyWithImpl<$Res, RepositorySearch>;
  @useResult
  $Res call(
      {List<Repository>? items, int? totalCount, bool? incompleteResults});
}

/// @nodoc
class _$RepositorySearchCopyWithImpl<$Res, $Val extends RepositorySearch>
    implements $RepositorySearchCopyWith<$Res> {
  _$RepositorySearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositorySearchImplCopyWith<$Res>
    implements $RepositorySearchCopyWith<$Res> {
  factory _$$RepositorySearchImplCopyWith(_$RepositorySearchImpl value,
          $Res Function(_$RepositorySearchImpl) then) =
      __$$RepositorySearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Repository>? items, int? totalCount, bool? incompleteResults});
}

/// @nodoc
class __$$RepositorySearchImplCopyWithImpl<$Res>
    extends _$RepositorySearchCopyWithImpl<$Res, _$RepositorySearchImpl>
    implements _$$RepositorySearchImplCopyWith<$Res> {
  __$$RepositorySearchImplCopyWithImpl(_$RepositorySearchImpl _value,
      $Res Function(_$RepositorySearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
  }) {
    return _then(_$RepositorySearchImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositorySearchImpl extends _RepositorySearch {
  const _$RepositorySearchImpl(
      {final List<Repository>? items, this.totalCount, this.incompleteResults})
      : _items = items,
        super._();

  factory _$RepositorySearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositorySearchImplFromJson(json);

  final List<Repository>? _items;
  @override
  List<Repository>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalCount;
  @override
  final bool? incompleteResults;

  @override
  String toString() {
    return 'RepositorySearch(items: $items, totalCount: $totalCount, incompleteResults: $incompleteResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositorySearchImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      totalCount,
      incompleteResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositorySearchImplCopyWith<_$RepositorySearchImpl> get copyWith =>
      __$$RepositorySearchImplCopyWithImpl<_$RepositorySearchImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositorySearchImplToJson(
      this,
    );
  }
}

abstract class _RepositorySearch extends RepositorySearch {
  const factory _RepositorySearch(
      {final List<Repository>? items,
      final int? totalCount,
      final bool? incompleteResults}) = _$RepositorySearchImpl;
  const _RepositorySearch._() : super._();

  factory _RepositorySearch.fromJson(Map<String, dynamic> json) =
      _$RepositorySearchImpl.fromJson;

  @override
  List<Repository>? get items;
  @override
  int? get totalCount;
  @override
  bool? get incompleteResults;
  @override
  @JsonKey(ignore: true)
  _$$RepositorySearchImplCopyWith<_$RepositorySearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
mixin _$Repository {
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  bool? get private => throw _privateConstructorUsedError;
  User? get owner => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get fork => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  double? get size => throw _privateConstructorUsedError;
  int? get stargazersCount => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get languageColor => throw _privateConstructorUsedError;
  int? get forksCount => throw _privateConstructorUsedError;
  bool? get archived => throw _privateConstructorUsedError;
  int? get openIssuesCount => throw _privateConstructorUsedError;
  List<String>? get topics => throw _privateConstructorUsedError;
  String? get defaultBranch => throw _privateConstructorUsedError;
  int? get subscribersCount => throw _privateConstructorUsedError;
  Repository? get parent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryCopyWith<Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res, Repository>;
  @useResult
  $Res call(
      {String? name,
      String? fullName,
      bool? private,
      User? owner,
      String? htmlUrl,
      String? description,
      bool? fork,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? homepage,
      double? size,
      int? stargazersCount,
      String? language,
      String? languageColor,
      int? forksCount,
      bool? archived,
      int? openIssuesCount,
      List<String>? topics,
      String? defaultBranch,
      int? subscribersCount,
      Repository? parent});

  $UserCopyWith<$Res>? get owner;
  $RepositoryCopyWith<$Res>? get parent;
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res, $Val extends Repository>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? private = freezed,
    Object? owner = freezed,
    Object? htmlUrl = freezed,
    Object? description = freezed,
    Object? fork = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? homepage = freezed,
    Object? size = freezed,
    Object? stargazersCount = freezed,
    Object? language = freezed,
    Object? languageColor = freezed,
    Object? forksCount = freezed,
    Object? archived = freezed,
    Object? openIssuesCount = freezed,
    Object? topics = freezed,
    Object? defaultBranch = freezed,
    Object? subscribersCount = freezed,
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      private: freezed == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: freezed == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languageColor: freezed == languageColor
          ? _value.languageColor
          : languageColor // ignore: cast_nullable_to_non_nullable
              as String?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool?,
      openIssuesCount: freezed == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      defaultBranch: freezed == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribersCount: freezed == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Repository?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $RepositoryCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryImplCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$RepositoryImplCopyWith(
          _$RepositoryImpl value, $Res Function(_$RepositoryImpl) then) =
      __$$RepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? fullName,
      bool? private,
      User? owner,
      String? htmlUrl,
      String? description,
      bool? fork,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? homepage,
      double? size,
      int? stargazersCount,
      String? language,
      String? languageColor,
      int? forksCount,
      bool? archived,
      int? openIssuesCount,
      List<String>? topics,
      String? defaultBranch,
      int? subscribersCount,
      Repository? parent});

  @override
  $UserCopyWith<$Res>? get owner;
  @override
  $RepositoryCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$RepositoryImplCopyWithImpl<$Res>
    extends _$RepositoryCopyWithImpl<$Res, _$RepositoryImpl>
    implements _$$RepositoryImplCopyWith<$Res> {
  __$$RepositoryImplCopyWithImpl(
      _$RepositoryImpl _value, $Res Function(_$RepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? private = freezed,
    Object? owner = freezed,
    Object? htmlUrl = freezed,
    Object? description = freezed,
    Object? fork = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? homepage = freezed,
    Object? size = freezed,
    Object? stargazersCount = freezed,
    Object? language = freezed,
    Object? languageColor = freezed,
    Object? forksCount = freezed,
    Object? archived = freezed,
    Object? openIssuesCount = freezed,
    Object? topics = freezed,
    Object? defaultBranch = freezed,
    Object? subscribersCount = freezed,
    Object? parent = freezed,
  }) {
    return _then(_$RepositoryImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      private: freezed == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: freezed == fork
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languageColor: freezed == languageColor
          ? _value.languageColor
          : languageColor // ignore: cast_nullable_to_non_nullable
              as String?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool?,
      openIssuesCount: freezed == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      defaultBranch: freezed == defaultBranch
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribersCount: freezed == subscribersCount
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Repository?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepositoryImpl extends _Repository {
  const _$RepositoryImpl(
      {this.name,
      this.fullName,
      this.private,
      this.owner,
      this.htmlUrl,
      this.description,
      this.fork,
      this.createdAt,
      this.updatedAt,
      this.homepage,
      this.size,
      this.stargazersCount,
      this.language,
      this.languageColor,
      this.forksCount,
      this.archived,
      this.openIssuesCount,
      final List<String>? topics,
      this.defaultBranch,
      this.subscribersCount,
      this.parent})
      : _topics = topics,
        super._();

  factory _$RepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepositoryImplFromJson(json);

  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final bool? private;
  @override
  final User? owner;
  @override
  final String? htmlUrl;
  @override
  final String? description;
  @override
  final bool? fork;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? homepage;
  @override
  final double? size;
  @override
  final int? stargazersCount;
  @override
  final String? language;
  @override
  final String? languageColor;
  @override
  final int? forksCount;
  @override
  final bool? archived;
  @override
  final int? openIssuesCount;
  final List<String>? _topics;
  @override
  List<String>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? defaultBranch;
  @override
  final int? subscribersCount;
  @override
  final Repository? parent;

  @override
  String toString() {
    return 'Repository(name: $name, fullName: $fullName, private: $private, owner: $owner, htmlUrl: $htmlUrl, description: $description, fork: $fork, createdAt: $createdAt, updatedAt: $updatedAt, homepage: $homepage, size: $size, stargazersCount: $stargazersCount, language: $language, languageColor: $languageColor, forksCount: $forksCount, archived: $archived, openIssuesCount: $openIssuesCount, topics: $topics, defaultBranch: $defaultBranch, subscribersCount: $subscribersCount, parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fork, fork) || other.fork == fork) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageColor, languageColor) ||
                other.languageColor == languageColor) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.defaultBranch, defaultBranch) ||
                other.defaultBranch == defaultBranch) &&
            (identical(other.subscribersCount, subscribersCount) ||
                other.subscribersCount == subscribersCount) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        fullName,
        private,
        owner,
        htmlUrl,
        description,
        fork,
        createdAt,
        updatedAt,
        homepage,
        size,
        stargazersCount,
        language,
        languageColor,
        forksCount,
        archived,
        openIssuesCount,
        const DeepCollectionEquality().hash(_topics),
        defaultBranch,
        subscribersCount,
        parent
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      __$$RepositoryImplCopyWithImpl<_$RepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepositoryImplToJson(
      this,
    );
  }
}

abstract class _Repository extends Repository {
  const factory _Repository(
      {final String? name,
      final String? fullName,
      final bool? private,
      final User? owner,
      final String? htmlUrl,
      final String? description,
      final bool? fork,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? homepage,
      final double? size,
      final int? stargazersCount,
      final String? language,
      final String? languageColor,
      final int? forksCount,
      final bool? archived,
      final int? openIssuesCount,
      final List<String>? topics,
      final String? defaultBranch,
      final int? subscribersCount,
      final Repository? parent}) = _$RepositoryImpl;
  const _Repository._() : super._();

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$RepositoryImpl.fromJson;

  @override
  String? get name;
  @override
  String? get fullName;
  @override
  bool? get private;
  @override
  User? get owner;
  @override
  String? get htmlUrl;
  @override
  String? get description;
  @override
  bool? get fork;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get homepage;
  @override
  double? get size;
  @override
  int? get stargazersCount;
  @override
  String? get language;
  @override
  String? get languageColor;
  @override
  int? get forksCount;
  @override
  bool? get archived;
  @override
  int? get openIssuesCount;
  @override
  List<String>? get topics;
  @override
  String? get defaultBranch;
  @override
  int? get subscribersCount;
  @override
  Repository? get parent;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryImplCopyWith<_$RepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
mixin _$Token {
  TokenType? get type => throw _privateConstructorUsedError;
  String? get basicToken => throw _privateConstructorUsedError;
  String? get personalToken => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get tokenType => throw _privateConstructorUsedError;
  String? get scope => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res, Token>;
  @useResult
  $Res call(
      {TokenType? type,
      String? basicToken,
      String? personalToken,
      String? accessToken,
      String? tokenType,
      String? scope});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res, $Val extends Token>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? basicToken = freezed,
    Object? personalToken = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TokenType?,
      basicToken: freezed == basicToken
          ? _value.basicToken
          : basicToken // ignore: cast_nullable_to_non_nullable
              as String?,
      personalToken: freezed == personalToken
          ? _value.personalToken
          : personalToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenImplCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$TokenImplCopyWith(
          _$TokenImpl value, $Res Function(_$TokenImpl) then) =
      __$$TokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TokenType? type,
      String? basicToken,
      String? personalToken,
      String? accessToken,
      String? tokenType,
      String? scope});
}

/// @nodoc
class __$$TokenImplCopyWithImpl<$Res>
    extends _$TokenCopyWithImpl<$Res, _$TokenImpl>
    implements _$$TokenImplCopyWith<$Res> {
  __$$TokenImplCopyWithImpl(
      _$TokenImpl _value, $Res Function(_$TokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? basicToken = freezed,
    Object? personalToken = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? scope = freezed,
  }) {
    return _then(_$TokenImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TokenType?,
      basicToken: freezed == basicToken
          ? _value.basicToken
          : basicToken // ignore: cast_nullable_to_non_nullable
              as String?,
      personalToken: freezed == personalToken
          ? _value.personalToken
          : personalToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenImpl extends _Token {
  const _$TokenImpl(
      {this.type,
      this.basicToken,
      this.personalToken,
      this.accessToken,
      this.tokenType,
      this.scope})
      : super._();

  factory _$TokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenImplFromJson(json);

  @override
  final TokenType? type;
  @override
  final String? basicToken;
  @override
  final String? personalToken;
  @override
  final String? accessToken;
  @override
  final String? tokenType;
  @override
  final String? scope;

  @override
  String toString() {
    return 'Token(type: $type, basicToken: $basicToken, personalToken: $personalToken, accessToken: $accessToken, tokenType: $tokenType, scope: $scope)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.basicToken, basicToken) ||
                other.basicToken == basicToken) &&
            (identical(other.personalToken, personalToken) ||
                other.personalToken == personalToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.scope, scope) || other.scope == scope));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, basicToken, personalToken,
      accessToken, tokenType, scope);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      __$$TokenImplCopyWithImpl<_$TokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenImplToJson(
      this,
    );
  }
}

abstract class _Token extends Token {
  const factory _Token(
      {final TokenType? type,
      final String? basicToken,
      final String? personalToken,
      final String? accessToken,
      final String? tokenType,
      final String? scope}) = _$TokenImpl;
  const _Token._() : super._();

  factory _Token.fromJson(Map<String, dynamic> json) = _$TokenImpl.fromJson;

  @override
  TokenType? get type;
  @override
  String? get basicToken;
  @override
  String? get personalToken;
  @override
  String? get accessToken;
  @override
  String? get tokenType;
  @override
  String? get scope;
  @override
  @JsonKey(ignore: true)
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendingRepository _$TrendingRepositoryFromJson(Map<String, dynamic> json) {
  return _TrendingRepository.fromJson(json);
}

/// @nodoc
mixin _$TrendingRepository {
  String? get author => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'languageColor')
  String? get languageColor => throw _privateConstructorUsedError;
  int? get stars => throw _privateConstructorUsedError;
  int? get forks => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPeriodStars')
  int? get currentPeriodStars => throw _privateConstructorUsedError;
  @JsonKey(name: 'builtBy')
  List<TrendingUser>? get builtBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingRepositoryCopyWith<TrendingRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingRepositoryCopyWith<$Res> {
  factory $TrendingRepositoryCopyWith(
          TrendingRepository value, $Res Function(TrendingRepository) then) =
      _$TrendingRepositoryCopyWithImpl<$Res, TrendingRepository>;
  @useResult
  $Res call(
      {String? author,
      String? name,
      String? avatar,
      String? url,
      String? description,
      String? language,
      @JsonKey(name: 'languageColor') String? languageColor,
      int? stars,
      int? forks,
      @JsonKey(name: 'currentPeriodStars') int? currentPeriodStars,
      @JsonKey(name: 'builtBy') List<TrendingUser>? builtBy});
}

/// @nodoc
class _$TrendingRepositoryCopyWithImpl<$Res, $Val extends TrendingRepository>
    implements $TrendingRepositoryCopyWith<$Res> {
  _$TrendingRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? language = freezed,
    Object? languageColor = freezed,
    Object? stars = freezed,
    Object? forks = freezed,
    Object? currentPeriodStars = freezed,
    Object? builtBy = freezed,
  }) {
    return _then(_value.copyWith(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languageColor: freezed == languageColor
          ? _value.languageColor
          : languageColor // ignore: cast_nullable_to_non_nullable
              as String?,
      stars: freezed == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int?,
      forks: freezed == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPeriodStars: freezed == currentPeriodStars
          ? _value.currentPeriodStars
          : currentPeriodStars // ignore: cast_nullable_to_non_nullable
              as int?,
      builtBy: freezed == builtBy
          ? _value.builtBy
          : builtBy // ignore: cast_nullable_to_non_nullable
              as List<TrendingUser>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingRepositoryImplCopyWith<$Res>
    implements $TrendingRepositoryCopyWith<$Res> {
  factory _$$TrendingRepositoryImplCopyWith(_$TrendingRepositoryImpl value,
          $Res Function(_$TrendingRepositoryImpl) then) =
      __$$TrendingRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? author,
      String? name,
      String? avatar,
      String? url,
      String? description,
      String? language,
      @JsonKey(name: 'languageColor') String? languageColor,
      int? stars,
      int? forks,
      @JsonKey(name: 'currentPeriodStars') int? currentPeriodStars,
      @JsonKey(name: 'builtBy') List<TrendingUser>? builtBy});
}

/// @nodoc
class __$$TrendingRepositoryImplCopyWithImpl<$Res>
    extends _$TrendingRepositoryCopyWithImpl<$Res, _$TrendingRepositoryImpl>
    implements _$$TrendingRepositoryImplCopyWith<$Res> {
  __$$TrendingRepositoryImplCopyWithImpl(_$TrendingRepositoryImpl _value,
      $Res Function(_$TrendingRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? language = freezed,
    Object? languageColor = freezed,
    Object? stars = freezed,
    Object? forks = freezed,
    Object? currentPeriodStars = freezed,
    Object? builtBy = freezed,
  }) {
    return _then(_$TrendingRepositoryImpl(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languageColor: freezed == languageColor
          ? _value.languageColor
          : languageColor // ignore: cast_nullable_to_non_nullable
              as String?,
      stars: freezed == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int?,
      forks: freezed == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPeriodStars: freezed == currentPeriodStars
          ? _value.currentPeriodStars
          : currentPeriodStars // ignore: cast_nullable_to_non_nullable
              as int?,
      builtBy: freezed == builtBy
          ? _value._builtBy
          : builtBy // ignore: cast_nullable_to_non_nullable
              as List<TrendingUser>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingRepositoryImpl extends _TrendingRepository {
  const _$TrendingRepositoryImpl(
      {this.author,
      this.name,
      this.avatar,
      this.url,
      this.description,
      this.language,
      @JsonKey(name: 'languageColor') this.languageColor,
      this.stars,
      this.forks,
      @JsonKey(name: 'currentPeriodStars') this.currentPeriodStars,
      @JsonKey(name: 'builtBy') final List<TrendingUser>? builtBy})
      : _builtBy = builtBy,
        super._();

  factory _$TrendingRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingRepositoryImplFromJson(json);

  @override
  final String? author;
  @override
  final String? name;
  @override
  final String? avatar;
  @override
  final String? url;
  @override
  final String? description;
  @override
  final String? language;
  @override
  @JsonKey(name: 'languageColor')
  final String? languageColor;
  @override
  final int? stars;
  @override
  final int? forks;
  @override
  @JsonKey(name: 'currentPeriodStars')
  final int? currentPeriodStars;
  final List<TrendingUser>? _builtBy;
  @override
  @JsonKey(name: 'builtBy')
  List<TrendingUser>? get builtBy {
    final value = _builtBy;
    if (value == null) return null;
    if (_builtBy is EqualUnmodifiableListView) return _builtBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrendingRepository(author: $author, name: $name, avatar: $avatar, url: $url, description: $description, language: $language, languageColor: $languageColor, stars: $stars, forks: $forks, currentPeriodStars: $currentPeriodStars, builtBy: $builtBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingRepositoryImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageColor, languageColor) ||
                other.languageColor == languageColor) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.currentPeriodStars, currentPeriodStars) ||
                other.currentPeriodStars == currentPeriodStars) &&
            const DeepCollectionEquality().equals(other._builtBy, _builtBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      author,
      name,
      avatar,
      url,
      description,
      language,
      languageColor,
      stars,
      forks,
      currentPeriodStars,
      const DeepCollectionEquality().hash(_builtBy));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingRepositoryImplCopyWith<_$TrendingRepositoryImpl> get copyWith =>
      __$$TrendingRepositoryImplCopyWithImpl<_$TrendingRepositoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingRepositoryImplToJson(
      this,
    );
  }
}

abstract class _TrendingRepository extends TrendingRepository {
  const factory _TrendingRepository(
          {final String? author,
          final String? name,
          final String? avatar,
          final String? url,
          final String? description,
          final String? language,
          @JsonKey(name: 'languageColor') final String? languageColor,
          final int? stars,
          final int? forks,
          @JsonKey(name: 'currentPeriodStars') final int? currentPeriodStars,
          @JsonKey(name: 'builtBy') final List<TrendingUser>? builtBy}) =
      _$TrendingRepositoryImpl;
  const _TrendingRepository._() : super._();

  factory _TrendingRepository.fromJson(Map<String, dynamic> json) =
      _$TrendingRepositoryImpl.fromJson;

  @override
  String? get author;
  @override
  String? get name;
  @override
  String? get avatar;
  @override
  String? get url;
  @override
  String? get description;
  @override
  String? get language;
  @override
  @JsonKey(name: 'languageColor')
  String? get languageColor;
  @override
  int? get stars;
  @override
  int? get forks;
  @override
  @JsonKey(name: 'currentPeriodStars')
  int? get currentPeriodStars;
  @override
  @JsonKey(name: 'builtBy')
  List<TrendingUser>? get builtBy;
  @override
  @JsonKey(ignore: true)
  _$$TrendingRepositoryImplCopyWith<_$TrendingRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TrendingUser _$TrendingUserFromJson(Map<String, dynamic> json) {
  return _TrendingUser.fromJson(json);
}

/// @nodoc
mixin _$TrendingUser {
  String? get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  TrendingRepository? get repo => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingUserCopyWith<TrendingUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingUserCopyWith<$Res> {
  factory $TrendingUserCopyWith(
          TrendingUser value, $Res Function(TrendingUser) then) =
      _$TrendingUserCopyWithImpl<$Res, TrendingUser>;
  @useResult
  $Res call(
      {String? username,
      String? name,
      String? url,
      String? avatar,
      TrendingRepository? repo,
      String? type});

  $TrendingRepositoryCopyWith<$Res>? get repo;
}

/// @nodoc
class _$TrendingUserCopyWithImpl<$Res, $Val extends TrendingUser>
    implements $TrendingUserCopyWith<$Res> {
  _$TrendingUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? avatar = freezed,
    Object? repo = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      repo: freezed == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as TrendingRepository?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrendingRepositoryCopyWith<$Res>? get repo {
    if (_value.repo == null) {
      return null;
    }

    return $TrendingRepositoryCopyWith<$Res>(_value.repo!, (value) {
      return _then(_value.copyWith(repo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrendingUserImplCopyWith<$Res>
    implements $TrendingUserCopyWith<$Res> {
  factory _$$TrendingUserImplCopyWith(
          _$TrendingUserImpl value, $Res Function(_$TrendingUserImpl) then) =
      __$$TrendingUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      String? name,
      String? url,
      String? avatar,
      TrendingRepository? repo,
      String? type});

  @override
  $TrendingRepositoryCopyWith<$Res>? get repo;
}

/// @nodoc
class __$$TrendingUserImplCopyWithImpl<$Res>
    extends _$TrendingUserCopyWithImpl<$Res, _$TrendingUserImpl>
    implements _$$TrendingUserImplCopyWith<$Res> {
  __$$TrendingUserImplCopyWithImpl(
      _$TrendingUserImpl _value, $Res Function(_$TrendingUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? avatar = freezed,
    Object? repo = freezed,
    Object? type = freezed,
  }) {
    return _then(_$TrendingUserImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      repo: freezed == repo
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as TrendingRepository?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingUserImpl extends _TrendingUser {
  const _$TrendingUserImpl(
      {this.username, this.name, this.url, this.avatar, this.repo, this.type})
      : super._();

  factory _$TrendingUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingUserImplFromJson(json);

  @override
  final String? username;
  @override
  final String? name;
  @override
  final String? url;
  @override
  final String? avatar;
  @override
  final TrendingRepository? repo;
  @override
  final String? type;

  @override
  String toString() {
    return 'TrendingUser(username: $username, name: $name, url: $url, avatar: $avatar, repo: $repo, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingUserImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.repo, repo) || other.repo == repo) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, name, url, avatar, repo, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingUserImplCopyWith<_$TrendingUserImpl> get copyWith =>
      __$$TrendingUserImplCopyWithImpl<_$TrendingUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingUserImplToJson(
      this,
    );
  }
}

abstract class _TrendingUser extends TrendingUser {
  const factory _TrendingUser(
      {final String? username,
      final String? name,
      final String? url,
      final String? avatar,
      final TrendingRepository? repo,
      final String? type}) = _$TrendingUserImpl;
  const _TrendingUser._() : super._();

  factory _TrendingUser.fromJson(Map<String, dynamic> json) =
      _$TrendingUserImpl.fromJson;

  @override
  String? get username;
  @override
  String? get name;
  @override
  String? get url;
  @override
  String? get avatar;
  @override
  TrendingRepository? get repo;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$TrendingUserImplCopyWith<_$TrendingUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserSearch _$UserSearchFromJson(Map<String, dynamic> json) {
  return _UserSearch.fromJson(json);
}

/// @nodoc
mixin _$UserSearch {
  List<User>? get items => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  bool? get incompleteResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSearchCopyWith<UserSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchCopyWith<$Res> {
  factory $UserSearchCopyWith(
          UserSearch value, $Res Function(UserSearch) then) =
      _$UserSearchCopyWithImpl<$Res, UserSearch>;
  @useResult
  $Res call({List<User>? items, int? totalCount, bool? incompleteResults});
}

/// @nodoc
class _$UserSearchCopyWithImpl<$Res, $Val extends UserSearch>
    implements $UserSearchCopyWith<$Res> {
  _$UserSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSearchImplCopyWith<$Res>
    implements $UserSearchCopyWith<$Res> {
  factory _$$UserSearchImplCopyWith(
          _$UserSearchImpl value, $Res Function(_$UserSearchImpl) then) =
      __$$UserSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User>? items, int? totalCount, bool? incompleteResults});
}

/// @nodoc
class __$$UserSearchImplCopyWithImpl<$Res>
    extends _$UserSearchCopyWithImpl<$Res, _$UserSearchImpl>
    implements _$$UserSearchImplCopyWith<$Res> {
  __$$UserSearchImplCopyWithImpl(
      _$UserSearchImpl _value, $Res Function(_$UserSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
  }) {
    return _then(_$UserSearchImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSearchImpl extends _UserSearch {
  const _$UserSearchImpl(
      {final List<User>? items, this.totalCount, this.incompleteResults})
      : _items = items,
        super._();

  factory _$UserSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSearchImplFromJson(json);

  final List<User>? _items;
  @override
  List<User>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalCount;
  @override
  final bool? incompleteResults;

  @override
  String toString() {
    return 'UserSearch(items: $items, totalCount: $totalCount, incompleteResults: $incompleteResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSearchImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      totalCount,
      incompleteResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSearchImplCopyWith<_$UserSearchImpl> get copyWith =>
      __$$UserSearchImplCopyWithImpl<_$UserSearchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSearchImplToJson(
      this,
    );
  }
}

abstract class _UserSearch extends UserSearch {
  const factory _UserSearch(
      {final List<User>? items,
      final int? totalCount,
      final bool? incompleteResults}) = _$UserSearchImpl;
  const _UserSearch._() : super._();

  factory _UserSearch.fromJson(Map<String, dynamic> json) =
      _$UserSearchImpl.fromJson;

  @override
  List<User>? get items;
  @override
  int? get totalCount;
  @override
  bool? get incompleteResults;
  @override
  @JsonKey(ignore: true)
  _$$UserSearchImplCopyWith<_$UserSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get login => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get htmlUrl => throw _privateConstructorUsedError;
  UserType? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get blog => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  int? get publicRepos => throw _privateConstructorUsedError;
  int? get publicGists => throw _privateConstructorUsedError;
  int? get followers => throw _privateConstructorUsedError;
  int? get following => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get starredRepositoriesCount => throw _privateConstructorUsedError;
  int? get repositoriesCount => throw _privateConstructorUsedError;
  int? get issuesCount => throw _privateConstructorUsedError;
  int? get watchingCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? login,
      String? avatarUrl,
      String? htmlUrl,
      UserType? type,
      String? name,
      String? company,
      String? blog,
      String? location,
      String? email,
      String? bio,
      int? publicRepos,
      int? publicGists,
      int? followers,
      int? following,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? starredRepositoriesCount,
      int? repositoriesCount,
      int? issuesCount,
      int? watchingCount});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? avatarUrl = freezed,
    Object? htmlUrl = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? company = freezed,
    Object? blog = freezed,
    Object? location = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? publicRepos = freezed,
    Object? publicGists = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? starredRepositoriesCount = freezed,
    Object? repositoriesCount = freezed,
    Object? issuesCount = freezed,
    Object? watchingCount = freezed,
  }) {
    return _then(_value.copyWith(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: freezed == publicRepos
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      publicGists: freezed == publicGists
          ? _value.publicGists
          : publicGists // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      starredRepositoriesCount: freezed == starredRepositoriesCount
          ? _value.starredRepositoriesCount
          : starredRepositoriesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      repositoriesCount: freezed == repositoriesCount
          ? _value.repositoriesCount
          : repositoriesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      issuesCount: freezed == issuesCount
          ? _value.issuesCount
          : issuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      watchingCount: freezed == watchingCount
          ? _value.watchingCount
          : watchingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? login,
      String? avatarUrl,
      String? htmlUrl,
      UserType? type,
      String? name,
      String? company,
      String? blog,
      String? location,
      String? email,
      String? bio,
      int? publicRepos,
      int? publicGists,
      int? followers,
      int? following,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? starredRepositoriesCount,
      int? repositoriesCount,
      int? issuesCount,
      int? watchingCount});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? avatarUrl = freezed,
    Object? htmlUrl = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? company = freezed,
    Object? blog = freezed,
    Object? location = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? publicRepos = freezed,
    Object? publicGists = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? starredRepositoriesCount = freezed,
    Object? repositoriesCount = freezed,
    Object? issuesCount = freezed,
    Object? watchingCount = freezed,
  }) {
    return _then(_$UserImpl(
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: freezed == publicRepos
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      publicGists: freezed == publicGists
          ? _value.publicGists
          : publicGists // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      starredRepositoriesCount: freezed == starredRepositoriesCount
          ? _value.starredRepositoriesCount
          : starredRepositoriesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      repositoriesCount: freezed == repositoriesCount
          ? _value.repositoriesCount
          : repositoriesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      issuesCount: freezed == issuesCount
          ? _value.issuesCount
          : issuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      watchingCount: freezed == watchingCount
          ? _value.watchingCount
          : watchingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User {
  const _$UserImpl(
      {this.login,
      this.avatarUrl,
      this.htmlUrl,
      this.type,
      this.name,
      this.company,
      this.blog,
      this.location,
      this.email,
      this.bio,
      this.publicRepos,
      this.publicGists,
      this.followers,
      this.following,
      this.createdAt,
      this.updatedAt,
      this.starredRepositoriesCount,
      this.repositoriesCount,
      this.issuesCount,
      this.watchingCount})
      : super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? login;
  @override
  final String? avatarUrl;
  @override
  final String? htmlUrl;
  @override
  final UserType? type;
  @override
  final String? name;
  @override
  final String? company;
  @override
  final String? blog;
  @override
  final String? location;
  @override
  final String? email;
  @override
  final String? bio;
  @override
  final int? publicRepos;
  @override
  final int? publicGists;
  @override
  final int? followers;
  @override
  final int? following;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? starredRepositoriesCount;
  @override
  final int? repositoriesCount;
  @override
  final int? issuesCount;
  @override
  final int? watchingCount;

  @override
  String toString() {
    return 'User(login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, type: $type, name: $name, company: $company, blog: $blog, location: $location, email: $email, bio: $bio, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following, createdAt: $createdAt, updatedAt: $updatedAt, starredRepositoriesCount: $starredRepositoriesCount, repositoriesCount: $repositoriesCount, issuesCount: $issuesCount, watchingCount: $watchingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.blog, blog) || other.blog == blog) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.publicRepos, publicRepos) ||
                other.publicRepos == publicRepos) &&
            (identical(other.publicGists, publicGists) ||
                other.publicGists == publicGists) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(
                    other.starredRepositoriesCount, starredRepositoriesCount) ||
                other.starredRepositoriesCount == starredRepositoriesCount) &&
            (identical(other.repositoriesCount, repositoriesCount) ||
                other.repositoriesCount == repositoriesCount) &&
            (identical(other.issuesCount, issuesCount) ||
                other.issuesCount == issuesCount) &&
            (identical(other.watchingCount, watchingCount) ||
                other.watchingCount == watchingCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        login,
        avatarUrl,
        htmlUrl,
        type,
        name,
        company,
        blog,
        location,
        email,
        bio,
        publicRepos,
        publicGists,
        followers,
        following,
        createdAt,
        updatedAt,
        starredRepositoriesCount,
        repositoriesCount,
        issuesCount,
        watchingCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {final String? login,
      final String? avatarUrl,
      final String? htmlUrl,
      final UserType? type,
      final String? name,
      final String? company,
      final String? blog,
      final String? location,
      final String? email,
      final String? bio,
      final int? publicRepos,
      final int? publicGists,
      final int? followers,
      final int? following,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? starredRepositoriesCount,
      final int? repositoriesCount,
      final int? issuesCount,
      final int? watchingCount}) = _$UserImpl;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get login;
  @override
  String? get avatarUrl;
  @override
  String? get htmlUrl;
  @override
  UserType? get type;
  @override
  String? get name;
  @override
  String? get company;
  @override
  String? get blog;
  @override
  String? get location;
  @override
  String? get email;
  @override
  String? get bio;
  @override
  int? get publicRepos;
  @override
  int? get publicGists;
  @override
  int? get followers;
  @override
  int? get following;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get starredRepositoriesCount;
  @override
  int? get repositoriesCount;
  @override
  int? get issuesCount;
  @override
  int? get watchingCount;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
