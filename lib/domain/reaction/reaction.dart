import 'package:freezed_annotation/freezed_annotation.dart';

part 'reaction.freezed.dart';
part 'reaction.g.dart';

@freezed
abstract class Reaction with _$Reaction {
  const factory Reaction({
    required String id,
    required String postId,
    required List<String> userIds,
    required String emoji,
}) = _Reaction;

factory Reaction.fromJson(Map<String, dynamic> json) =>_$ReactionFromJson(json);
}
