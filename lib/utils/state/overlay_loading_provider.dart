import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'overlay_loading_provider.g.dart';


/// アプリ全体に二度押し防止のローディングを重ねるかどうかを管理するStateProvider
@Riverpod(keepAlive: true)
bool overlayLoading(OverlayLoadingRef ref) {
  return false;
}
