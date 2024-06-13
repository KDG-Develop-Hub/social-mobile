import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navigation_notifier.g.dart';

@riverpod
class BottomNavigationNotifier extends _$BottomNavigationNotifier {
  @override
  int build() {
    return 0;
  }

  // ignore: use_setters_to_change_properties
  void setIndex(int newIndex) {
    state = newIndex;
  }
}
