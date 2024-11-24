import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/domain/user/user.dart';
import 'package:social_mobile/infrastructure/file/file_data_source.dart';
import 'package:social_mobile/infrastructure/post/remote/post_data_source.dart';
import 'package:social_mobile/presentation/provider/overlay_loading_provider.dart';
import 'package:social_mobile/presentation/provider/user_authentication.dart';
import 'package:social_mobile/utils/helpers/scaffold_messenger.dart';
import 'package:uuid/uuid.dart';

part 'post_screen_notifier.g.dart';

@riverpod
class PostScreenNotifier extends _$PostScreenNotifier {
  PostDataSource get postDataSource =>
      ref.read(postDataSourceProvider.notifier);
  FileDataSource get fileDataSource =>
      ref.read(fileDataSourceProvider.notifier);
  User get _user => ref.read(userAuthenticationProvider);

  @override
  List<File>? build() {
    return null;
  }

  Future<void> createPost({
    required String content,
    required Future<void> Function() onSuccess,
  }) async {
    ref.read(overlayLoadingProvider.notifier).state = true;
    try {
      final post = Post(
        id: const Uuid().v4(),
        userId: const Uuid().v4(),
        userName: _user.name,
        userImageUrl: _user.imageUrl,
        content: content,
        imageUrls: await _getUploadedImageUrls(),
        bookmarkedUserIds: [],
        createdAt: DateTime.now(),
      );
      await postDataSource.createPost(post: post);
      await onSuccess();
    } on Exception catch (e) {
      debugPrint(e.toString());
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar('エラーが発生しました。通信環境を確認してください。');
    } finally {
      ref.read(overlayLoadingProvider.notifier).state = false;
    }
  }

  Future<void> pickImages() async {
    ref.read(overlayLoadingProvider.notifier).state = true;
    try {
      final pickedImageFiles = await fileDataSource.pickImages();
      if (pickedImageFiles != null && pickedImageFiles.isNotEmpty) {
        state = pickedImageFiles;
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar('エラーが発生しました。通信環境を確認してください。');
    } finally {
      ref.read(overlayLoadingProvider.notifier).state = false;
    }
  }

  Future<List<String>?> _getUploadedImageUrls() async {
    if (state == null || state!.isEmpty) {
      return null;
    }
    try {
      final urls = await fileDataSource.getUploadedImageUrls(files: state!);
      return urls;
    } on Exception catch (e) {
      debugPrint(e.toString());
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar('エラーが発生しました。通信環境を確認してください。');
    }

    return null;
  }
}
