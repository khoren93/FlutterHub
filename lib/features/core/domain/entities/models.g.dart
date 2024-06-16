// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryLanguageImpl _$$RepositoryLanguageImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryLanguageImpl(
      name: json['name'] as String?,
      urlParam: json['urlParam'] as String?,
    );

Map<String, dynamic> _$$RepositoryLanguageImplToJson(
        _$RepositoryLanguageImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'urlParam': instance.urlParam,
    };

_$RepositorySearchImpl _$$RepositorySearchImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositorySearchImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Repository.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['total_count'] as num?)?.toInt(),
      incompleteResults: json['incomplete_results'] as bool?,
    );

Map<String, dynamic> _$$RepositorySearchImplToJson(
        _$RepositorySearchImpl instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
    };

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
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
      stargazersCount: (json['stargazers_count'] as num?)?.toInt(),
      language: json['language'] as String?,
      languageColor: json['language_color'] as String?,
      forksCount: (json['forks_count'] as num?)?.toInt(),
      archived: json['archived'] as bool?,
      openIssuesCount: (json['open_issues_count'] as num?)?.toInt(),
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      defaultBranch: json['default_branch'] as String?,
      subscribersCount: (json['subscribers_count'] as num?)?.toInt(),
      parent: json['parent'] == null
          ? null
          : Repository.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
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

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      type: $enumDecodeNullable(_$TokenTypeEnumMap, json['type']),
      basicToken: json['basic_token'] as String?,
      personalToken: json['personal_token'] as String?,
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
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

_$TrendingRepositoryImpl _$$TrendingRepositoryImplFromJson(
        Map<String, dynamic> json) =>
    _$TrendingRepositoryImpl(
      author: json['author'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      url: json['url'] as String?,
      description: json['description'] as String?,
      language: json['language'] as String?,
      languageColor: json['languageColor'] as String?,
      stars: (json['stars'] as num?)?.toInt(),
      forks: (json['forks'] as num?)?.toInt(),
      currentPeriodStars: (json['currentPeriodStars'] as num?)?.toInt(),
      builtBy: (json['builtBy'] as List<dynamic>?)
          ?.map((e) => TrendingUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrendingRepositoryImplToJson(
        _$TrendingRepositoryImpl instance) =>
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

_$TrendingUserImpl _$$TrendingUserImplFromJson(Map<String, dynamic> json) =>
    _$TrendingUserImpl(
      username: json['username'] as String?,
      name: json['name'] as String?,
      url: json['url'] as String?,
      avatar: json['avatar'] as String?,
      repo: json['repo'] == null
          ? null
          : TrendingRepository.fromJson(json['repo'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$TrendingUserImplToJson(_$TrendingUserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'url': instance.url,
      'avatar': instance.avatar,
      'repo': instance.repo?.toJson(),
      'type': instance.type,
    };

_$UserSearchImpl _$$UserSearchImplFromJson(Map<String, dynamic> json) =>
    _$UserSearchImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['total_count'] as num?)?.toInt(),
      incompleteResults: json['incomplete_results'] as bool?,
    );

Map<String, dynamic> _$$UserSearchImplToJson(_$UserSearchImpl instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
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
      publicRepos: (json['public_repos'] as num?)?.toInt(),
      publicGists: (json['public_gists'] as num?)?.toInt(),
      followers: (json['followers'] as num?)?.toInt(),
      following: (json['following'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      starredRepositoriesCount:
          (json['starred_repositories_count'] as num?)?.toInt(),
      repositoriesCount: (json['repositories_count'] as num?)?.toInt(),
      issuesCount: (json['issues_count'] as num?)?.toInt(),
      watchingCount: (json['watching_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
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
