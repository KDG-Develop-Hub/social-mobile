import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_mobile/domain/post/post.dart';

part 'home_screen_state.freezed.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required List<Post> posts,
    @Default(false) bool isLoadingMore,
  }) = _HomeScreenState;
}
