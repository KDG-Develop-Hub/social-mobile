// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      userImageUrl: json['userImageUrl'] as String,
      content: json['content'] as String,
      bookmarkedUserIds: (json['bookmarkedUserIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      reactions: (json['reactions'] as List<dynamic>?)
          ?.map((e) => Reaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updatedAt'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'userImageUrl': instance.userImageUrl,
      'content': instance.content,
      'bookmarkedUserIds': instance.bookmarkedUserIds,
      'reactions': instance.reactions,
      'imageUrls': instance.imageUrls,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'updatedAt': _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
