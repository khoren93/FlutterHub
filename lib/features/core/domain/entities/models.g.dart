// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoryLanguage _$$_RepositoryLanguageFromJson(
        Map<String, dynamic> json) =>
    _$_RepositoryLanguage(
      name: json['name'] as String?,
      urlParam: json['urlParam'] as String?,
    );

Map<String, dynamic> _$$_RepositoryLanguageToJson(
        _$_RepositoryLanguage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'urlParam': instance.urlParam,
    };

_$_RepositorySearch _$$_RepositorySearchFromJson(Map<String, dynamic> json) =>
    _$_RepositorySearch(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Repository.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['total_count'] as int?,
      incompleteResults: json['incomplete_results'] as bool?,
    );

Map<String, dynamic> _$$_RepositorySearchToJson(_$_RepositorySearch instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
    };

_$_Repository _$$_RepositoryFromJson(Map<String, dynamic> json) =>
    _$_Repository(
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      private: json['private'] as bool?,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String?,
      description: json['description'] as String?,
      fork: json['fork'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      homepage: json['homepage'] as String?,
      size: (json['size'] as num?)?.toDouble(),
      stargazersCount: json['stargazers_count'] as int?,
      language: json['language'] as String?,
      languageColor: json['language_color'] as String?,
      forksCount: json['forks_count'] as int?,
      archived: json['archived'] as bool?,
      openIssuesCount: json['open_issues_count'] as int?,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      defaultBranch: json['default_branch'] as String?,
      subscribersCount: json['subscribers_count'] as int?,
      parent: json['parent'] == null
          ? null
          : Repository.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RepositoryToJson(_$_Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'private': instance.private,
      'owner': instance.owner?.toJson(),
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'fork': instance.fork,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'homepage': instance.homepage,
      'size': instance.size,
      'stargazers_count': instance.stargazersCount,
      'language': instance.language,
      'language_color': instance.languageColor,
      'forks_count': instance.forksCount,
      'archived': instance.archived,
      'open_issues_count': instance.openIssuesCount,
      'topics': instance.topics,
      'default_branch': instance.defaultBranch,
      'subscribers_count': instance.subscribersCount,
      'parent': instance.parent?.toJson(),
    };

_$_Token _$$_TokenFromJson(Map<String, dynamic> json) => _$_Token(
      type: $enumDecodeNullable(_$TokenTypeEnumMap, json['type']),
      basicToken: json['basic_token'] as String?,
      personalToken: json['personal_token'] as String?,
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'type': _$TokenTypeEnumMap[instance.type],
      'basic_token': instance.basicToken,
      'personal_token': instance.personalToken,
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'scope': instance.scope,
    };

const _$TokenTypeEnumMap = {
  TokenType.oauth: 'oauth',
  TokenType.personal: 'personal',
  TokenType.basic: 'basic',
};

_$_TrendingRepository _$$_TrendingRepositoryFromJson(
        Map<String, dynamic> json) =>
    _$_TrendingRepository(
      author: json['author'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      url: json['url'] as String?,
      description: json['description'] as String?,
      language: json['language'] as String?,
      languageColor: json['languageColor'] as String?,
      stars: json['stars'] as int?,
      forks: json['forks'] as int?,
      currentPeriodStars: json['currentPeriodStars'] as int?,
      builtBy: (json['builtBy'] as List<dynamic>?)
          ?.map((e) => TrendingUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TrendingRepositoryToJson(
        _$_TrendingRepository instance) =>
    <String, dynamic>{
      'author': instance.author,
      'name': instance.name,
      'avatar': instance.avatar,
      'url': instance.url,
      'description': instance.description,
      'language': instance.language,
      'languageColor': instance.languageColor,
      'stars': instance.stars,
      'forks': instance.forks,
      'currentPeriodStars': instance.currentPeriodStars,
      'builtBy': instance.builtBy?.map((e) => e.toJson()).toList(),
    };

_$_TrendingUser _$$_TrendingUserFromJson(Map<String, dynamic> json) =>
    _$_TrendingUser(
      username: json['username'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      avatar: json['avatar'] as String?,
      repo: json['repo'] == null
          ? null
          : TrendingRepository.fromJson(json['repo'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_TrendingUserToJson(_$_TrendingUser instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'url': instance.url,
      'avatar': instance.avatar,
      'repo': instance.repo?.toJson(),
      'type': instance.type,
    };

_$_UserSearch _$$_UserSearchFromJson(Map<String, dynamic> json) =>
    _$_UserSearch(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['total_count'] as int?,
      incompleteResults: json['incomplete_results'] as bool?,
    );

Map<String, dynamic> _$$_UserSearchToJson(_$_UserSearch instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      login: json['login'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      htmlUrl: json['html_url'] as String?,
      type: $enumDecodeNullable(_$UserTypeEnumMap, json['type']),
      name: json['name'] as String?,
      company: json['company'] as String?,
      blog: json['blog'] as String?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      publicRepos: json['public_repos'] as int?,
      publicGists: json['public_gists'] as int?,
      followers: json['followers'] as int?,
      following: json['following'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      starredRepositoriesCount: json['starred_repositories_count'] as int?,
      repositoriesCount: json['repositories_count'] as int?,
      issuesCount: json['issues_count'] as int?,
      watchingCount: json['watching_count'] as int?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
      'type': _$UserTypeEnumMap[instance.type],
      'name': instance.name,
      'company': instance.company,
      'blog': instance.blog,
      'location': instance.location,
      'email': instance.email,
      'bio': instance.bio,
      'public_repos': instance.publicRepos,
      'public_gists': instance.publicGists,
      'followers': instance.followers,
      'following': instance.following,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'starred_repositories_count': instance.starredRepositoriesCount,
      'repositories_count': instance.repositoriesCount,
      'issues_count': instance.issuesCount,
      'watching_count': instance.watchingCount,
    };

const _$UserTypeEnumMap = {
  UserType.user: 'User',
  UserType.organization: 'Organization',
};
