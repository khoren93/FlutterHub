// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'languages_cubit.dart';

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

_$_FetchInProgress _$$_FetchInProgressFromJson(Map<String, dynamic> json) =>
    _$_FetchInProgress(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FetchInProgressToJson(_$_FetchInProgress instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_FetchEmpty _$$_FetchEmptyFromJson(Map<String, dynamic> json) =>
    _$_FetchEmpty(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FetchEmptyToJson(_$_FetchEmpty instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_FetchSuccess _$$_FetchSuccessFromJson(Map<String, dynamic> json) =>
    _$_FetchSuccess(
      items: (json['items'] as List<dynamic>)
          .map((e) => RepositoryLanguage.fromJson(e as Map<String, dynamic>))
          .toList(),
      selected: json['selected'] == null
          ? null
          : RepositoryLanguage.fromJson(
              json['selected'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FetchSuccessToJson(_$_FetchSuccess instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'selected': instance.selected?.toJson(),
      'runtimeType': instance.$type,
    };

_$_FetchError _$$_FetchErrorFromJson(Map<String, dynamic> json) =>
    _$_FetchError(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_FetchErrorToJson(_$_FetchError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
