import 'package:hooks_riverpod/hooks_riverpod.dart';

/// アプリ全体に二度押し防止のローディングを重ねるかどうかを管理するStateProvider
final overlayLoadingProvider = StateProvider<bool>((ref) => false);
