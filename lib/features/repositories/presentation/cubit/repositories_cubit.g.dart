// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_cubit.dart';

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

_$FetchInProgressImpl _$$FetchInProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchInProgressImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FetchInProgressImplToJson(
        _$FetchInProgressImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$FetchEmptyImpl _$$FetchEmptyImplFromJson(Map<String, dynamic> json) =>
    _$FetchEmptyImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FetchEmptyImplToJson(_$FetchEmptyImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$FetchSuccessImpl _$$FetchSuccessImplFromJson(Map<String, dynamic> json) =>
    _$FetchSuccessImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => Repository.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasNextPage: json['has_next_page'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FetchSuccessImplToJson(_$FetchSuccessImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'has_next_page': instance.hasNextPage,
      'runtimeType': instance.$type,
    };

_$FetchErrorImpl _$$FetchErrorImplFromJson(Map<String, dynamic> json) =>
    _$FetchErrorImpl(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FetchErrorImplToJson(_$FetchErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
