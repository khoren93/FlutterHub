// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchInProgress _$$_FetchInProgressFromJson(Map<String, dynamic> json) =>
    _$_FetchInProgress(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FetchInProgressToJson(_$_FetchInProgress instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_FetchSuccess _$$_FetchSuccessFromJson(Map<String, dynamic> json) =>
    _$_FetchSuccess(
      item: User.fromJson(json['item'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FetchSuccessToJson(_$_FetchSuccess instance) =>
    <String, dynamic>{
      'item': instance.item.toJson(),
      'runtimeType': instance.$type,
    };

_$_fetchError _$$_fetchErrorFromJson(Map<String, dynamic> json) =>
    _$_fetchError(
      message: json['message'] as String?,
      url: json['url'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_fetchErrorToJson(_$_fetchError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'url': instance.url,
      'runtimeType': instance.$type,
    };
