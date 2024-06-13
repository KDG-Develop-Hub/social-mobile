import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_notifier.g.dart';

@riverpod
class UpdateNotifier extends _$UpdateNotifier {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }
}
