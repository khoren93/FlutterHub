// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerFailureImpl _$$ServerFailureImplFromJson(Map<String, dynamic> json) =>
    _$ServerFailureImpl(
      message: json['message'] as String?,
      documentationUrl: json['documentation_url'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ServerError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServerFailureImplToJson(_$ServerFailureImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'documentation_url': instance.documentationUrl,
      'errors': instance.errors?.map((e) => e.toJson()).toList(),
    };

_$ServerErrorImpl _$$ServerErrorImplFromJson(Map<String, dynamic> json) =>
    _$ServerErrorImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      field: json['field'] as String?,
      resource: json['resource'] as String?,
    );

Map<String, dynamic> _$$ServerErrorImplToJson(_$ServerErrorImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'field': instance.field,
      'resource': instance.resource,
    };
