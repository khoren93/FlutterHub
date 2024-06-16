// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialImpl _$$InitialImplFromJson(Map<String, dynamic> json) =>
    _$InitialImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialImplToJson(_$InitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ReposFetchInProgressImpl _$$ReposFetchInProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$ReposFetchInProgressImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReposFetchInProgressImplToJson(
        _$ReposFetchInProgressImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ReposFetchEmptyImpl _$$ReposFetchEmptyImplFromJson(
        Map<String, dynamic> json) =>
    _$ReposFetchEmptyImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReposFetchEmptyImplToJson(
        _$ReposFetchEmptyImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ReposFetchSuccessImpl _$$ReposFetchSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$ReposFetchSuccessImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => Repository.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasNextPage: json['has_next_page'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReposFetchSuccessImplToJson(
        _$ReposFetchSuccessImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'has_next_page': instance.hasNextPage,
      'runtimeType': instance.$type,
    };

_$ReposFetchErrorImpl _$$ReposFetchErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$ReposFetchErrorImpl(
      message: json['message'] as String?,
      url: json['url'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReposFetchErrorImplToJson(
        _$ReposFetchErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'url': instance.url,
      'runtimeType': instance.$type,
    };

_$UsersFetchInProgressImpl _$$UsersFetchInProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersFetchInProgressImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UsersFetchInProgressImplToJson(
        _$UsersFetchInProgressImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UsersFetchEmptyImpl _$$UsersFetchEmptyImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersFetchEmptyImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UsersFetchEmptyImplToJson(
        _$UsersFetchEmptyImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UsersFetchSuccessImpl _$$UsersFetchSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersFetchSuccessImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasNextPage: json['has_next_page'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UsersFetchSuccessImplToJson(
        _$UsersFetchSuccessImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'has_next_page': instance.hasNextPage,
      'runtimeType': instance.$type,
    };

_$UsersFetchErrorImpl _$$UsersFetchErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersFetchErrorImpl(
      message: json['message'] as String?,
      url: json['url'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UsersFetchErrorImplToJson(
        _$UsersFetchErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'url': instance.url,
      'runtimeType': instance.$type,
    };
