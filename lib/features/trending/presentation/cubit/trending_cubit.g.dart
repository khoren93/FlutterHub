// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Initial _$$_InitialFromJson(Map<String, dynamic> json) => _$_Initial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_InitialToJson(_$_Initial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_ReposFetchInProgress _$$_ReposFetchInProgressFromJson(
        Map<String, dynamic> json) =>
    _$_ReposFetchInProgress(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ReposFetchInProgressToJson(
        _$_ReposFetchInProgress instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_ReposFetchEmpty _$$_ReposFetchEmptyFromJson(Map<String, dynamic> json) =>
    _$_ReposFetchEmpty(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ReposFetchEmptyToJson(_$_ReposFetchEmpty instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_ReposFetchSuccess _$$_ReposFetchSuccessFromJson(Map<String, dynamic> json) =>
    _$_ReposFetchSuccess(
      items: (json['items'] as List<dynamic>)
          .map((e) => TrendingRepository.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ReposFetchSuccessToJson(
        _$_ReposFetchSuccess instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$_ReposFetchError _$$_ReposFetchErrorFromJson(Map<String, dynamic> json) =>
    _$_ReposFetchError(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ReposFetchErrorToJson(_$_ReposFetchError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$_UsersFetchInProgress _$$_UsersFetchInProgressFromJson(
        Map<String, dynamic> json) =>
    _$_UsersFetchInProgress(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UsersFetchInProgressToJson(
        _$_UsersFetchInProgress instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_UsersFetchEmpty _$$_UsersFetchEmptyFromJson(Map<String, dynamic> json) =>
    _$_UsersFetchEmpty(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UsersFetchEmptyToJson(_$_UsersFetchEmpty instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_UsersFetchSuccess _$$_UsersFetchSuccessFromJson(Map<String, dynamic> json) =>
    _$_UsersFetchSuccess(
      items: (json['items'] as List<dynamic>)
          .map((e) => TrendingUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UsersFetchSuccessToJson(
        _$_UsersFetchSuccess instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$_UsersFetchError _$$_UsersFetchErrorFromJson(Map<String, dynamic> json) =>
    _$_UsersFetchError(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UsersFetchErrorToJson(_$_UsersFetchError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
