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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositorySearch _$RepositorySearchFromJson(Map<String, dynamic> json) {
  return _RepositorySearch.fromJson(json);
}

/// @nodoc
class _$RepositorySearchTearOff {
  const _$RepositorySearchTearOff();

  _RepositorySearch call(
      {List<Repository>? items,
      int? totalCount,
      bool? incompleteResults,
      bool? hasNextPage}) {
    return _RepositorySearch(
      items: items,
      totalCount: totalCount,
      incompleteResults: incompleteResults,
      hasNextPage: hasNextPage,
    );
  }

  RepositorySearch fromJson(Map<String, Object?> json) {
    return RepositorySearch.fromJson(json);
  }
}

/// @nodoc
const $RepositorySearch = _$RepositorySearchTearOff();

/// @nodoc
mixin _$RepositorySearch {
  List<Repository>? get items => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  bool? get incompleteResults => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;

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
      {List<Repository>? items,
      int? totalCount,
      bool? incompleteResults,
      bool? hasNextPage});
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
    Object? hasNextPage = freezed,
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
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$RepositorySearchCopyWith<$Res>
    implements $RepositorySearchCopyWith<$Res> {
  factory _$RepositorySearchCopyWith(
          _RepositorySearch value, $Res Function(_RepositorySearch) then) =
      __$RepositorySearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Repository>? items,
      int? totalCount,
      bool? incompleteResults,
      bool? hasNextPage});
}

/// @nodoc
class __$RepositorySearchCopyWithImpl<$Res>
    extends _$RepositorySearchCopyWithImpl<$Res>
    implements _$RepositorySearchCopyWith<$Res> {
  __$RepositorySearchCopyWithImpl(
      _RepositorySearch _value, $Res Function(_RepositorySearch) _then)
      : super(_value, (v) => _then(v as _RepositorySearch));

  @override
  _RepositorySearch get _value => super._value as _RepositorySearch;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_RepositorySearch(
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
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositorySearch extends _RepositorySearch {
  const _$_RepositorySearch(
      {this.items, this.totalCount, this.incompleteResults, this.hasNextPage})
      : super._();

  factory _$_RepositorySearch.fromJson(Map<String, dynamic> json) =>
      _$$_RepositorySearchFromJson(json);

  @override
  final List<Repository>? items;
  @override
  final int? totalCount;
  @override
  final bool? incompleteResults;
  @override
  final bool? hasNextPage;

  @override
  String toString() {
    return 'RepositorySearch(items: $items, totalCount: $totalCount, incompleteResults: $incompleteResults, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepositorySearch &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.incompleteResults, incompleteResults) &&
            const DeepCollectionEquality()
                .equals(other.hasNextPage, hasNextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(incompleteResults),
      const DeepCollectionEquality().hash(hasNextPage));

  @JsonKey(ignore: true)
  @override
  _$RepositorySearchCopyWith<_RepositorySearch> get copyWith =>
      __$RepositorySearchCopyWithImpl<_RepositorySearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositorySearchToJson(this);
  }
}

abstract class _RepositorySearch extends RepositorySearch {
  const factory _RepositorySearch(
      {List<Repository>? items,
      int? totalCount,
      bool? incompleteResults,
      bool? hasNextPage}) = _$_RepositorySearch;
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
  bool? get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$RepositorySearchCopyWith<_RepositorySearch> get copyWith =>
      throw _privateConstructorUsedError;
}

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
class _$RepositoryTearOff {
  const _$RepositoryTearOff();

  _Repository call(
      {String? name,
      String? fullName,
      String? description,
      String? url,
      User? owner}) {
    return _Repository(
      name: name,
      fullName: fullName,
      description: description,
      url: url,
      owner: owner,
    );
  }

  Repository fromJson(Map<String, Object?> json) {
    return Repository.fromJson(json);
  }
}

/// @nodoc
const $Repository = _$RepositoryTearOff();

/// @nodoc
mixin _$Repository {
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  User? get owner => throw _privateConstructorUsedError;

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
      String? description,
      String? url,
      User? owner});

  $UserCopyWith<$Res>? get owner;
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
    Object? description = freezed,
    Object? url = freezed,
    Object? owner = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
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
}

/// @nodoc
abstract class _$RepositoryCopyWith<$Res> implements $RepositoryCopyWith<$Res> {
  factory _$RepositoryCopyWith(
          _Repository value, $Res Function(_Repository) then) =
      __$RepositoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? fullName,
      String? description,
      String? url,
      User? owner});

  @override
  $UserCopyWith<$Res>? get owner;
}

/// @nodoc
class __$RepositoryCopyWithImpl<$Res> extends _$RepositoryCopyWithImpl<$Res>
    implements _$RepositoryCopyWith<$Res> {
  __$RepositoryCopyWithImpl(
      _Repository _value, $Res Function(_Repository) _then)
      : super(_value, (v) => _then(v as _Repository));

  @override
  _Repository get _value => super._value as _Repository;

  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? owner = freezed,
  }) {
    return _then(_Repository(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repository extends _Repository {
  const _$_Repository(
      {this.name, this.fullName, this.description, this.url, this.owner})
      : super._();

  factory _$_Repository.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryFromJson(json);

  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final User? owner;

  @override
  String toString() {
    return 'Repository(name: $name, fullName: $fullName, description: $description, url: $url, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Repository &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$RepositoryCopyWith<_Repository> get copyWith =>
      __$RepositoryCopyWithImpl<_Repository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryToJson(this);
  }
}

abstract class _Repository extends Repository {
  const factory _Repository(
      {String? name,
      String? fullName,
      String? description,
      String? url,
      User? owner}) = _$_Repository;
  const _Repository._() : super._();

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$_Repository.fromJson;

  @override
  String? get name;
  @override
  String? get fullName;
  @override
  String? get description;
  @override
  String? get url;
  @override
  User? get owner;
  @override
  @JsonKey(ignore: true)
  _$RepositoryCopyWith<_Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

UserSearch _$UserSearchFromJson(Map<String, dynamic> json) {
  return _UserSearch.fromJson(json);
}

/// @nodoc
class _$UserSearchTearOff {
  const _$UserSearchTearOff();

  _UserSearch call(
      {List<User>? items,
      int? totalCount,
      bool? incompleteResults,
      bool? hasNextPage}) {
    return _UserSearch(
      items: items,
      totalCount: totalCount,
      incompleteResults: incompleteResults,
      hasNextPage: hasNextPage,
    );
  }

  UserSearch fromJson(Map<String, Object?> json) {
    return UserSearch.fromJson(json);
  }
}

/// @nodoc
const $UserSearch = _$UserSearchTearOff();

/// @nodoc
mixin _$UserSearch {
  List<User>? get items => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  bool? get incompleteResults => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;

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
  $Res call(
      {List<User>? items,
      int? totalCount,
      bool? incompleteResults,
      bool? hasNextPage});
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
    Object? hasNextPage = freezed,
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
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$UserSearchCopyWith<$Res> implements $UserSearchCopyWith<$Res> {
  factory _$UserSearchCopyWith(
          _UserSearch value, $Res Function(_UserSearch) then) =
      __$UserSearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<User>? items,
      int? totalCount,
      bool? incompleteResults,
      bool? hasNextPage});
}

/// @nodoc
class __$UserSearchCopyWithImpl<$Res> extends _$UserSearchCopyWithImpl<$Res>
    implements _$UserSearchCopyWith<$Res> {
  __$UserSearchCopyWithImpl(
      _UserSearch _value, $Res Function(_UserSearch) _then)
      : super(_value, (v) => _then(v as _UserSearch));

  @override
  _UserSearch get _value => super._value as _UserSearch;

  @override
  $Res call({
    Object? items = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_UserSearch(
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
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSearch extends _UserSearch {
  const _$_UserSearch(
      {this.items, this.totalCount, this.incompleteResults, this.hasNextPage})
      : super._();

  factory _$_UserSearch.fromJson(Map<String, dynamic> json) =>
      _$$_UserSearchFromJson(json);

  @override
  final List<User>? items;
  @override
  final int? totalCount;
  @override
  final bool? incompleteResults;
  @override
  final bool? hasNextPage;

  @override
  String toString() {
    return 'UserSearch(items: $items, totalCount: $totalCount, incompleteResults: $incompleteResults, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSearch &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.incompleteResults, incompleteResults) &&
            const DeepCollectionEquality()
                .equals(other.hasNextPage, hasNextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(incompleteResults),
      const DeepCollectionEquality().hash(hasNextPage));

  @JsonKey(ignore: true)
  @override
  _$UserSearchCopyWith<_UserSearch> get copyWith =>
      __$UserSearchCopyWithImpl<_UserSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSearchToJson(this);
  }
}

abstract class _UserSearch extends UserSearch {
  const factory _UserSearch(
      {List<User>? items,
      int? totalCount,
      bool? incompleteResults,
      bool? hasNextPage}) = _$_UserSearch;
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
  bool? get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$UserSearchCopyWith<_UserSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call({String? login, String? name, String? avatarUrl}) {
    return _User(
      login: login,
      name: name,
      avatarUrl: avatarUrl,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String? get login => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String? login, String? name, String? avatarUrl});
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
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String? login, String? name, String? avatarUrl});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? login = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_User(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  const _$_User({this.login, this.name, this.avatarUrl}) : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? login;
  @override
  final String? name;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'User(login: $login, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(avatarUrl));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User extends User {
  const factory _User({String? login, String? name, String? avatarUrl}) =
      _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get login;
  @override
  String? get name;
  @override
  String? get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
