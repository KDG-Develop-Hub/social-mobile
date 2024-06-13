import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }
}
