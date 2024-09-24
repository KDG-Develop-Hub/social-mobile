// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get userImageUrl => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String>? get imageUrls => throw _privateConstructorUsedError;
  List<Reaction>? get reactions => throw _privateConstructorUsedError;
  List<String>? get replyIds => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String userImageUrl,
      String content,
      List<String>? imageUrls,
      List<Reaction>? reactions,
      List<String>? replyIds,
      @DateTimeConverter() DateTime createdAt,
      @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? userImageUrl = null,
    Object? content = null,
    Object? imageUrls = freezed,
    Object? reactions = freezed,
    Object? replyIds = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: null == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: freezed == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reactions: freezed == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<Reaction>?,
      replyIds: freezed == replyIds
          ? _value.replyIds
          : replyIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String userImageUrl,
      String content,
      List<String>? imageUrls,
      List<Reaction>? reactions,
      List<String>? replyIds,
      @DateTimeConverter() DateTime createdAt,
      @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? userImageUrl = null,
    Object? content = null,
    Object? imageUrls = freezed,
    Object? reactions = freezed,
    Object? replyIds = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: null == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: freezed == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reactions: freezed == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<Reaction>?,
      replyIds: freezed == replyIds
          ? _value._replyIds
          : replyIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {required this.id,
      required this.userId,
      required this.userName,
      required this.userImageUrl,
      required this.content,
      final List<String>? imageUrls,
      final List<Reaction>? reactions,
      final List<String>? replyIds,
      @DateTimeConverter() required this.createdAt,
      @DateTimeConverter() this.updatedAt})
      : _imageUrls = imageUrls,
        _reactions = reactions,
        _replyIds = replyIds;

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userImageUrl;
  @override
  final String content;
  final List<String>? _imageUrls;
  @override
  List<String>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reaction>? _reactions;
  @override
  List<Reaction>? get reactions {
    final value = _reactions;
    if (value == null) return null;
    if (_reactions is EqualUnmodifiableListView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _replyIds;
  @override
  List<String>? get replyIds {
    final value = _replyIds;
    if (value == null) return null;
    if (_replyIds is EqualUnmodifiableListView) return _replyIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @DateTimeConverter()
  final DateTime createdAt;
  @override
  @DateTimeConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Post(id: $id, userId: $userId, userName: $userName, userImageUrl: $userImageUrl, content: $content, imageUrls: $imageUrls, reactions: $reactions, replyIds: $replyIds, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions) &&
            const DeepCollectionEquality().equals(other._replyIds, _replyIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      userName,
      userImageUrl,
      content,
      const DeepCollectionEquality().hash(_imageUrls),
      const DeepCollectionEquality().hash(_reactions),
      const DeepCollectionEquality().hash(_replyIds),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {required final String id,
      required final String userId,
      required final String userName,
      required final String userImageUrl,
      required final String content,
      final List<String>? imageUrls,
      final List<Reaction>? reactions,
      final List<String>? replyIds,
      @DateTimeConverter() required final DateTime createdAt,
      @DateTimeConverter() final DateTime? updatedAt}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String get userImageUrl;
  @override
  String get content;
  @override
  List<String>? get imageUrls;
  @override
  List<Reaction>? get reactions;
  @override
  List<String>? get replyIds;
  @override
  @DateTimeConverter()
  DateTime get createdAt;
  @override
  @DateTimeConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
