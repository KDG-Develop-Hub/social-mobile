// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      displayName: json['displayName'] as String,
      imageUrl: json['imageUrl'] as String,
      bio: json['bio'] as String,
      emailAddress: json['emailAddress'] as String,
      socialLinks: (json['socialLinks'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$SocialLinkTypeEnumMap, k), Uri.parse(e as String)),
      ),
      bookmarkPostIds: (json['bookmarkPostIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updatedAt'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'displayName': instance.displayName,
      'imageUrl': instance.imageUrl,
      'bio': instance.bio,
      'emailAddress': instance.emailAddress,
      'socialLinks': instance.socialLinks
          .map((k, e) => MapEntry(_$SocialLinkTypeEnumMap[k]!, e.toString())),
      'bookmarkPostIds': instance.bookmarkPostIds,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'updatedAt': _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeConverter().toJson),
    };

const _$SocialLinkTypeEnumMap = {
  SocialLinkType.twitter: 'twitter',
  SocialLinkType.instagram: 'instagram',
  SocialLinkType.github: 'github',
  SocialLinkType.other: 'other',
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
