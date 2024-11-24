import 'dart:io';

// ignore: one_member_abstracts
abstract interface class FileRepository {
  Future<List<File>?> pickImages();
  Future<List<String>> getUploadedImageUrls({required List<File> files});
}
