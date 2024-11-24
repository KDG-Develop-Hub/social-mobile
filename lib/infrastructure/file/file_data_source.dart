import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/file/file_repository.dart';
import 'package:social_mobile/domain/user/user.dart';
import 'package:social_mobile/infrastructure/firebase/firebase_instances.dart';
import 'package:social_mobile/presentation/provider/user_authentication.dart';
import 'package:social_mobile/utils/helpers/random_string.dart';

part 'file_data_source.g.dart';

@riverpod
class FileDataSource extends _$FileDataSource implements FileRepository {
  FirebaseStorage get _storage => ref.read(getStorageInstanceProvider);
  ImagePicker get _imagePicker => ImagePicker();
  User get currentUser => ref.read(userAuthenticationProvider);

  @override
  void build() {
    return;
  }

  @override
  Future<List<File>?> pickImages() async {
    final images = await _imagePicker.pickMultiImage(limit: 4);
    return images.map((image) => File(image.path)).toList();
  }

  @override
  Future<List<String>> getUploadedImageUrls({required List<File> files}) async {
    final uid = currentUser.id;
    final imageUrls = <String>[];
    for (final file in files) {
      final fileName = returnJpgFileName();
      final storageRef =
          _storage.ref().child('users').child(uid).child(fileName);
      await storageRef.putFile(file);
      final imageUrl = await storageRef.getDownloadURL();
      imageUrls.add(imageUrl);
    }
    return imageUrls;
  }
}
