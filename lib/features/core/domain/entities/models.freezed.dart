// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$RepositoryLanguageCopyWithImpl<$Res>;
  $Res call({String? name, @JsonKey(name: 'urlParam') String? urlParam});
}

/// @nodoc
class _$RepositoryLanguageCopyWithImpl<$Res>
    implements $RepositoryLanguageCopyWith<$Res> {
  _$RepositoryLanguageCopyWithImpl(this._value, this._then);

  final RepositoryLanguage _value;
  // ignore: unused_field
  final $Res Function(RepositoryLanguage) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? urlParam = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      urlParam: urlParam == freezed
          ? _value.urlParam
          : urlParam // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RepositoryLanguageCopyWith<$Res>
    implements $RepositoryLanguageCopyWith<$Res> {
  factory _$$_RepositoryLanguageCopyWith(_$_RepositoryLanguage value,
          $Res Function(_$_RepositoryLanguage) then) =
      __$$_RepositoryLanguageCopyWithImpl<$Res>;
  @override
  $Res call({String? name, @JsonKey(name: 'urlParam') String? urlParam});
}

/// @nodoc
class __$$_RepositoryLanguageCopyWithImpl<$Res>
    extends _$RepositoryLanguageCopyWithImpl<$Res>
    implements _$$_RepositoryLanguageCopyWith<$Res> {
  __$$_RepositoryLanguageCopyWithImpl(
      _$_RepositoryLanguage _value, $Res Function(_$_RepositoryLanguage) _then)
      : super(_value, (v) => _then(v as _$_RepositoryLanguage));

  @override
  _$_RepositoryLanguage get _value => super._value as _$_RepositoryLanguage;

  @override
  $Res call({
    Object? name = freezed,
    Object? urlParam = freezed,
  }) {
    return _then(_$_RepositoryLanguage(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      urlParam: urlParam == freezed
          ? _value.urlParam
          : urlParam // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositoryLanguage extends _RepositoryLanguage {
  const _$_RepositoryLanguage(
      {this.name, @JsonKey(name: 'urlParam') this.urlParam})
      : super._();

  factory _$_RepositoryLanguage.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryLanguageFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepositoryLanguage &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.urlParam, urlParam));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(urlParam));

  @JsonKey(ignore: true)
  @override
  _$$_RepositoryLanguageCopyWith<_$_RepositoryLanguage> get copyWith =>
      __$$_RepositoryLanguageCopyWithImpl<_$_RepositoryLanguage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryLanguageToJson(
      this,
    );
  }
}

abstract class _RepositoryLanguage extends RepositoryLanguage {
  const factory _RepositoryLanguage(
          {final String? name,
          @JsonKey(name: 'urlParam') final String? urlParam}) =
      _$_RepositoryLanguage;
  const _RepositoryLanguage._() : super._();

  factory _RepositoryLanguage.fromJson(Map<String, dynamic> json) =
      _$_RepositoryLanguage.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'urlParam')
  String? get urlParam;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoryLanguageCopyWith<_$_RepositoryLanguage> get copyWith =>
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
      _$RepositorySearchCopyWithImpl<$Res>;
  $Res call(
      {List<Repository>? items, int? totalCount, bool? incompleteResults});
}

/// @nodoc
class _$RepositorySearchCopyWithImpl<$Res>
    implements $RepositorySearchCopyWith<$Res> {
  _$RepositorySearchCopyWithImpl(this._value, this._then);

  final RepositorySearch _value;
  // ignore: unused_field
  final $Res Function(RepositorySearch) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>?,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: incompleteResults == freezed
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_RepositorySearchCopyWith<$Res>
    implements $RepositorySearchCopyWith<$Res> {
  factory _$$_RepositorySearchCopyWith(
          _$_RepositorySearch value, $Res Function(_$_RepositorySearch) then) =
      __$$_RepositorySearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Repository>? items, int? totalCount, bool? incompleteResults});
}

/// @nodoc
class __$$_RepositorySearchCopyWithImpl<$Res>
    extends _$RepositorySearchCopyWithImpl<$Res>
    implements _$$_RepositorySearchCopyWith<$Res> {
  __$$_RepositorySearchCopyWithImpl(
      _$_RepositorySearch _value, $Res Function(_$_RepositorySearch) _then)
      : super(_value, (v) => _then(v as _$_RepositorySearch));

  @override
  _$_RepositorySearch get _value => super._value as _$_RepositorySearch;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
  }) {
    return _then(_$_RepositorySearch(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Repository>?,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: incompleteResults == freezed
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositorySearch extends _RepositorySearch {
  const _$_RepositorySearch(
      {final List<Repository>? items, this.totalCount, this.incompleteResults})
      : _items = items,
        super._();

  factory _$_RepositorySearch.fromJson(Map<String, dynamic> json) =>
      _$$_RepositorySearchFromJson(json);

  final List<Repository>? _items;
  @override
  List<Repository>? get items {
    final value = _items;
    if (value == null) return null;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepositorySearch &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.incompleteResults, incompleteResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(incompleteResults));

  @JsonKey(ignore: true)
  @override
  _$$_RepositorySearchCopyWith<_$_RepositorySearch> get copyWith =>
      __$$_RepositorySearchCopyWithImpl<_$_RepositorySearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositorySearchToJson(
      this,
    );
  }
}

abstract class _RepositorySearch extends RepositorySearch {
  const factory _RepositorySearch(
      {final List<Repository>? items,
      final int? totalCount,
      final bool? incompleteResults}) = _$_RepositorySearch;
  const _RepositorySearch._() : super._();

  factory _RepositorySearch.fromJson(Map<String, dynamic> json) =
      _$_RepositorySearch.fromJson;

  @override
  List<Repository>? get items;
  @override
  int? get totalCount;
  @override
  bool? get incompleteResults;
  @override
  @JsonKey(ignore: true)
  _$$_RepositorySearchCopyWith<_$_RepositorySearch> get copyWith =>
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
      _$RepositoryCopyWithImpl<$Res>;
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
class _$RepositoryCopyWithImpl<$Res> implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  final Repository _value;
  // ignore: unused_field
  final $Res Function(Repository) _then;

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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: fork == freezed
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languageColor: languageColor == freezed
          ? _value.languageColor
          : languageColor // ignore: cast_nullable_to_non_nullable
              as String?,
      forksCount: forksCount == freezed
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      archived: archived == freezed
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool?,
      openIssuesCount: openIssuesCount == freezed
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      defaultBranch: defaultBranch == freezed
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Repository?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }

  @override
  $RepositoryCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $RepositoryCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value));
    });
  }
}

/// @nodoc
abstract class _$$_RepositoryCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$_RepositoryCopyWith(
          _$_Repository value, $Res Function(_$_Repository) then) =
      __$$_RepositoryCopyWithImpl<$Res>;
  @override
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
class __$$_RepositoryCopyWithImpl<$Res> extends _$RepositoryCopyWithImpl<$Res>
    implements _$$_RepositoryCopyWith<$Res> {
  __$$_RepositoryCopyWithImpl(
      _$_Repository _value, $Res Function(_$_Repository) _then)
      : super(_value, (v) => _then(v as _$_Repository));

  @override
  _$_Repository get _value => super._value as _$_Repository;

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
    return _then(_$_Repository(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fork: fork == freezed
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languageColor: languageColor == freezed
          ? _value.languageColor
          : languageColor // ignore: cast_nullable_to_non_nullable
              as String?,
      forksCount: forksCount == freezed
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      archived: archived == freezed
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool?,
      openIssuesCount: openIssuesCount == freezed
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      topics: topics == freezed
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      defaultBranch: defaultBranch == freezed
          ? _value.defaultBranch
          : defaultBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Repository?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repository extends _Repository {
  const _$_Repository(
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

  factory _$_Repository.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repository &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.private, private) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.fork, fork) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.homepage, homepage) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.stargazersCount, stargazersCount) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.languageColor, languageColor) &&
            const DeepCollectionEquality()
                .equals(other.forksCount, forksCount) &&
            const DeepCollectionEquality().equals(other.archived, archived) &&
            const DeepCollectionEquality()
                .equals(other.openIssuesCount, openIssuesCount) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality()
                .equals(other.defaultBranch, defaultBranch) &&
            const DeepCollectionEquality()
                .equals(other.subscribersCount, subscribersCount) &&
            const DeepCollectionEquality().equals(other.parent, parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(fullName),
        const DeepCollectionEquality().hash(private),
        const DeepCollectionEquality().hash(owner),
        const DeepCollectionEquality().hash(htmlUrl),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(fork),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(homepage),
        const DeepCollectionEquality().hash(size),
        const DeepCollectionEquality().hash(stargazersCount),
        const DeepCollectionEquality().hash(language),
        const DeepCollectionEquality().hash(languageColor),
        const DeepCollectionEquality().hash(forksCount),
        const DeepCollectionEquality().hash(archived),
        const DeepCollectionEquality().hash(openIssuesCount),
        const DeepCollectionEquality().hash(_topics),
        const DeepCollectionEquality().hash(defaultBranch),
        const DeepCollectionEquality().hash(subscribersCount),
        const DeepCollectionEquality().hash(parent)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_RepositoryCopyWith<_$_Repository> get copyWith =>
      __$$_RepositoryCopyWithImpl<_$_Repository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryToJson(
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
      final Repository? parent}) = _$_Repository;
  const _Repository._() : super._();

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$_Repository.fromJson;

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
  _$$_RepositoryCopyWith<_$_Repository> get copyWith =>
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
      _$TokenCopyWithImpl<$Res>;
  $Res call(
      {TokenType? type,
      String? basicToken,
      String? personalToken,
      String? accessToken,
      String? tokenType,
      String? scope});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res> implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  final Token _value;
  // ignore: unused_field
  final $Res Function(Token) _then;

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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TokenType?,
      basicToken: basicToken == freezed
          ? _value.basicToken
          : basicToken // ignore: cast_nullable_to_non_nullable
              as String?,
      personalToken: personalToken == freezed
          ? _value.personalToken
          : personalToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$_TokenCopyWith(_$_Token value, $Res Function(_$_Token) then) =
      __$$_TokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {TokenType? type,
      String? basicToken,
      String? personalToken,
      String? accessToken,
      String? tokenType,
      String? scope});
}

/// @nodoc
class __$$_TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$$_TokenCopyWith<$Res> {
  __$$_TokenCopyWithImpl(_$_Token _value, $Res Function(_$_Token) _then)
      : super(_value, (v) => _then(v as _$_Token));

  @override
  _$_Token get _value => super._value as _$_Token;

  @override
  $Res call({
    Object? type = freezed,
    Object? basicToken = freezed,
    Object? personalToken = freezed,
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? scope = freezed,
  }) {
    return _then(_$_Token(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TokenType?,
      basicToken: basicToken == freezed
          ? _value.basicToken
          : basicToken // ignore: cast_nullable_to_non_nullable
              as String?,
      personalToken: personalToken == freezed
          ? _value.personalToken
          : personalToken // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Token extends _Token {
  const _$_Token(
      {this.type,
      this.basicToken,
      this.personalToken,
      this.accessToken,
      this.tokenType,
      this.scope})
      : super._();

  factory _$_Token.fromJson(Map<String, dynamic> json) =>
      _$$_TokenFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Token &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.basicToken, basicToken) &&
            const DeepCollectionEquality()
                .equals(other.personalToken, personalToken) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType) &&
            const DeepCollectionEquality().equals(other.scope, scope));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(basicToken),
      const DeepCollectionEquality().hash(personalToken),
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(tokenType),
      const DeepCollectionEquality().hash(scope));

  @JsonKey(ignore: true)
  @override
  _$$_TokenCopyWith<_$_Token> get copyWith =>
      __$$_TokenCopyWithImpl<_$_Token>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenToJson(
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
      final String? scope}) = _$_Token;
  const _Token._() : super._();

  factory _Token.fromJson(Map<String, dynamic> json) = _$_Token.fromJson;

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
  _$$_TokenCopyWith<_$_Token> get copyWith =>
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
      _$TrendingRepositoryCopyWithImpl<$Res>;
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
class _$TrendingRepositoryCopyWithImpl<$Res>
    implements $TrendingRepositoryCopyWith<$Res> {
  _$TrendingRepositoryCopyWithImpl(this._value, this._then);

  final TrendingRepository _value;
  // ignore: unused_field
  final $Res Function(TrendingRepository) _then;

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
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languageColor: languageColor == freezed
          ? _value.languageColor
          : languageColor // ignore: cast_nullable_to_non_nullable
              as String?,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int?,
      forks: forks == freezed
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPeriodStars: currentPeriodStars == freezed
          ? _value.currentPeriodStars
          : currentPeriodStars // ignore: cast_nullable_to_non_nullable
              as int?,
      builtBy: builtBy == freezed
          ? _value.builtBy
          : builtBy // ignore: cast_nullable_to_non_nullable
              as List<TrendingUser>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TrendingRepositoryCopyWith<$Res>
    implements $TrendingRepositoryCopyWith<$Res> {
  factory _$$_TrendingRepositoryCopyWith(_$_TrendingRepository value,
          $Res Function(_$_TrendingRepository) then) =
      __$$_TrendingRepositoryCopyWithImpl<$Res>;
  @override
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
class __$$_TrendingRepositoryCopyWithImpl<$Res>
    extends _$TrendingRepositoryCopyWithImpl<$Res>
    implements _$$_TrendingRepositoryCopyWith<$Res> {
  __$$_TrendingRepositoryCopyWithImpl(
      _$_TrendingRepository _value, $Res Function(_$_TrendingRepository) _then)
      : super(_value, (v) => _then(v as _$_TrendingRepository));

  @override
  _$_TrendingRepository get _value => super._value as _$_TrendingRepository;

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
    return _then(_$_TrendingRepository(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      languageColor: languageColor == freezed
          ? _value.languageColor
          : languageColor // ignore: cast_nullable_to_non_nullable
              as String?,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int?,
      forks: forks == freezed
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPeriodStars: currentPeriodStars == freezed
          ? _value.currentPeriodStars
          : currentPeriodStars // ignore: cast_nullable_to_non_nullable
              as int?,
      builtBy: builtBy == freezed
          ? _value._builtBy
          : builtBy // ignore: cast_nullable_to_non_nullable
              as List<TrendingUser>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrendingRepository extends _TrendingRepository {
  const _$_TrendingRepository(
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

  factory _$_TrendingRepository.fromJson(Map<String, dynamic> json) =>
      _$$_TrendingRepositoryFromJson(json);

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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrendingRepository(author: $author, name: $name, avatar: $avatar, url: $url, description: $description, language: $language, languageColor: $languageColor, stars: $stars, forks: $forks, currentPeriodStars: $currentPeriodStars, builtBy: $builtBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingRepository &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.languageColor, languageColor) &&
            const DeepCollectionEquality().equals(other.stars, stars) &&
            const DeepCollectionEquality().equals(other.forks, forks) &&
            const DeepCollectionEquality()
                .equals(other.currentPeriodStars, currentPeriodStars) &&
            const DeepCollectionEquality().equals(other._builtBy, _builtBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(languageColor),
      const DeepCollectionEquality().hash(stars),
      const DeepCollectionEquality().hash(forks),
      const DeepCollectionEquality().hash(currentPeriodStars),
      const DeepCollectionEquality().hash(_builtBy));

  @JsonKey(ignore: true)
  @override
  _$$_TrendingRepositoryCopyWith<_$_TrendingRepository> get copyWith =>
      __$$_TrendingRepositoryCopyWithImpl<_$_TrendingRepository>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrendingRepositoryToJson(
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
      _$_TrendingRepository;
  const _TrendingRepository._() : super._();

  factory _TrendingRepository.fromJson(Map<String, dynamic> json) =
      _$_TrendingRepository.fromJson;

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
  _$$_TrendingRepositoryCopyWith<_$_TrendingRepository> get copyWith =>
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
      _$TrendingUserCopyWithImpl<$Res>;
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
class _$TrendingUserCopyWithImpl<$Res> implements $TrendingUserCopyWith<$Res> {
  _$TrendingUserCopyWithImpl(this._value, this._then);

  final TrendingUser _value;
  // ignore: unused_field
  final $Res Function(TrendingUser) _then;

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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      repo: repo == freezed
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as TrendingRepository?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $TrendingRepositoryCopyWith<$Res>? get repo {
    if (_value.repo == null) {
      return null;
    }

    return $TrendingRepositoryCopyWith<$Res>(_value.repo!, (value) {
      return _then(_value.copyWith(repo: value));
    });
  }
}

/// @nodoc
abstract class _$$_TrendingUserCopyWith<$Res>
    implements $TrendingUserCopyWith<$Res> {
  factory _$$_TrendingUserCopyWith(
          _$_TrendingUser value, $Res Function(_$_TrendingUser) then) =
      __$$_TrendingUserCopyWithImpl<$Res>;
  @override
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
class __$$_TrendingUserCopyWithImpl<$Res>
    extends _$TrendingUserCopyWithImpl<$Res>
    implements _$$_TrendingUserCopyWith<$Res> {
  __$$_TrendingUserCopyWithImpl(
      _$_TrendingUser _value, $Res Function(_$_TrendingUser) _then)
      : super(_value, (v) => _then(v as _$_TrendingUser));

  @override
  _$_TrendingUser get _value => super._value as _$_TrendingUser;

  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? avatar = freezed,
    Object? repo = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_TrendingUser(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      repo: repo == freezed
          ? _value.repo
          : repo // ignore: cast_nullable_to_non_nullable
              as TrendingRepository?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrendingUser extends _TrendingUser {
  const _$_TrendingUser(
      {this.username, this.name, this.url, this.avatar, this.repo, this.type})
      : super._();

  factory _$_TrendingUser.fromJson(Map<String, dynamic> json) =>
      _$$_TrendingUserFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrendingUser &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.repo, repo) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(repo),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_TrendingUserCopyWith<_$_TrendingUser> get copyWith =>
      __$$_TrendingUserCopyWithImpl<_$_TrendingUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrendingUserToJson(
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
      final String? type}) = _$_TrendingUser;
  const _TrendingUser._() : super._();

  factory _TrendingUser.fromJson(Map<String, dynamic> json) =
      _$_TrendingUser.fromJson;

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
  _$$_TrendingUserCopyWith<_$_TrendingUser> get copyWith =>
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
      _$UserSearchCopyWithImpl<$Res>;
  $Res call({List<User>? items, int? totalCount, bool? incompleteResults});
}

/// @nodoc
class _$UserSearchCopyWithImpl<$Res> implements $UserSearchCopyWith<$Res> {
  _$UserSearchCopyWithImpl(this._value, this._then);

  final UserSearch _value;
  // ignore: unused_field
  final $Res Function(UserSearch) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: incompleteResults == freezed
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserSearchCopyWith<$Res>
    implements $UserSearchCopyWith<$Res> {
  factory _$$_UserSearchCopyWith(
          _$_UserSearch value, $Res Function(_$_UserSearch) then) =
      __$$_UserSearchCopyWithImpl<$Res>;
  @override
  $Res call({List<User>? items, int? totalCount, bool? incompleteResults});
}

/// @nodoc
class __$$_UserSearchCopyWithImpl<$Res> extends _$UserSearchCopyWithImpl<$Res>
    implements _$$_UserSearchCopyWith<$Res> {
  __$$_UserSearchCopyWithImpl(
      _$_UserSearch _value, $Res Function(_$_UserSearch) _then)
      : super(_value, (v) => _then(v as _$_UserSearch));

  @override
  _$_UserSearch get _value => super._value as _$_UserSearch;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
  }) {
    return _then(_$_UserSearch(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      incompleteResults: incompleteResults == freezed
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSearch extends _UserSearch {
  const _$_UserSearch(
      {final List<User>? items, this.totalCount, this.incompleteResults})
      : _items = items,
        super._();

  factory _$_UserSearch.fromJson(Map<String, dynamic> json) =>
      _$$_UserSearchFromJson(json);

  final List<User>? _items;
  @override
  List<User>? get items {
    final value = _items;
    if (value == null) return null;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSearch &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.incompleteResults, incompleteResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(incompleteResults));

  @JsonKey(ignore: true)
  @override
  _$$_UserSearchCopyWith<_$_UserSearch> get copyWith =>
      __$$_UserSearchCopyWithImpl<_$_UserSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSearchToJson(
      this,
    );
  }
}

abstract class _UserSearch extends UserSearch {
  const factory _UserSearch(
      {final List<User>? items,
      final int? totalCount,
      final bool? incompleteResults}) = _$_UserSearch;
  const _UserSearch._() : super._();

  factory _UserSearch.fromJson(Map<String, dynamic> json) =
      _$_UserSearch.fromJson;

  @override
  List<User>? get items;
  @override
  int? get totalCount;
  @override
  bool? get incompleteResults;
  @override
  @JsonKey(ignore: true)
  _$$_UserSearchCopyWith<_$_UserSearch> get copyWith =>
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
      _$UserCopyWithImpl<$Res>;
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
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

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
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: publicRepos == freezed
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      publicGists: publicGists == freezed
          ? _value.publicGists
          : publicGists // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      starredRepositoriesCount: starredRepositoriesCount == freezed
          ? _value.starredRepositoriesCount
          : starredRepositoriesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      repositoriesCount: repositoriesCount == freezed
          ? _value.repositoriesCount
          : repositoriesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      issuesCount: issuesCount == freezed
          ? _value.issuesCount
          : issuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      watchingCount: watchingCount == freezed
          ? _value.watchingCount
          : watchingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
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
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

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
    return _then(_$_User(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: publicRepos == freezed
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      publicGists: publicGists == freezed
          ? _value.publicGists
          : publicGists // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: followers == freezed
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: following == freezed
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      starredRepositoriesCount: starredRepositoriesCount == freezed
          ? _value.starredRepositoriesCount
          : starredRepositoriesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      repositoriesCount: repositoriesCount == freezed
          ? _value.repositoriesCount
          : repositoriesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      issuesCount: issuesCount == freezed
          ? _value.issuesCount
          : issuesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      watchingCount: watchingCount == freezed
          ? _value.watchingCount
          : watchingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  const _$_User(
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

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl) &&
            const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.blog, blog) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality()
                .equals(other.publicRepos, publicRepos) &&
            const DeepCollectionEquality()
                .equals(other.publicGists, publicGists) &&
            const DeepCollectionEquality().equals(other.followers, followers) &&
            const DeepCollectionEquality().equals(other.following, following) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(
                other.starredRepositoriesCount, starredRepositoriesCount) &&
            const DeepCollectionEquality()
                .equals(other.repositoriesCount, repositoriesCount) &&
            const DeepCollectionEquality()
                .equals(other.issuesCount, issuesCount) &&
            const DeepCollectionEquality()
                .equals(other.watchingCount, watchingCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(login),
        const DeepCollectionEquality().hash(avatarUrl),
        const DeepCollectionEquality().hash(htmlUrl),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(company),
        const DeepCollectionEquality().hash(blog),
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(bio),
        const DeepCollectionEquality().hash(publicRepos),
        const DeepCollectionEquality().hash(publicGists),
        const DeepCollectionEquality().hash(followers),
        const DeepCollectionEquality().hash(following),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(starredRepositoriesCount),
        const DeepCollectionEquality().hash(repositoriesCount),
        const DeepCollectionEquality().hash(issuesCount),
        const DeepCollectionEquality().hash(watchingCount)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
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
      final int? watchingCount}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

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
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
