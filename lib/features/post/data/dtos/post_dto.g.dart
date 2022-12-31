// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDto _$$_PostDtoFromJson(Map<String, dynamic> json) => _$_PostDto(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
