// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReactionImpl _$$ReactionImplFromJson(Map<String, dynamic> json) =>
    _$ReactionImpl(
      id: json['id'] as String,
      postId: json['postId'] as String,
      userIds:
          (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
      emoji: json['emoji'] as String,
    );

Map<String, dynamic> _$$ReactionImplToJson(_$ReactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userIds': instance.userIds,
      'emoji': instance.emoji,
    };
