// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositorySearch _$$_RepositorySearchFromJson(Map<String, dynamic> json) =>
    _$_RepositorySearch(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Repository.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['total_count'] as int?,
      incompleteResults: json['incomplete_results'] as bool?,
      hasNextPage: json['has_next_page'] as bool?,
    );

Map<String, dynamic> _$$_RepositorySearchToJson(_$_RepositorySearch instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'has_next_page': instance.hasNextPage,
    };

_$_Repository _$$_RepositoryFromJson(Map<String, dynamic> json) =>
    _$_Repository(
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RepositoryToJson(_$_Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'description': instance.description,
      'url': instance.url,
      'owner': instance.owner?.toJson(),
    };

_$_UserSearch _$$_UserSearchFromJson(Map<String, dynamic> json) =>
    _$_UserSearch(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['total_count'] as int?,
      incompleteResults: json['incomplete_results'] as bool?,
      hasNextPage: json['has_next_page'] as bool?,
    );

Map<String, dynamic> _$$_UserSearchToJson(_$_UserSearch instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'has_next_page': instance.hasNextPage,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      login: json['login'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'login': instance.login,
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
    };
