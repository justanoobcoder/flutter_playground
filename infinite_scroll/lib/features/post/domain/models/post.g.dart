// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as int,
      authorName: json['authorName'] as String,
      authorAvatar: json['authorAvatar'] as String,
      postedAt: DateTime.parse(json['postedAt'] as String),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'authorName': instance.authorName,
      'authorAvatar': instance.authorAvatar,
      'postedAt': instance.postedAt.toIso8601String(),
      'content': instance.content,
    };
