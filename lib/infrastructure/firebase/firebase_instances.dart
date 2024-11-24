import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_instances.g.dart';

@Riverpod(keepAlive: true)
FirebaseFirestore getFirestoreInstance(GetFirestoreInstanceRef ref) {
  return FirebaseFirestore.instance;
}

@Riverpod(keepAlive: true)
FirebaseStorage getStorageInstance(GetStorageInstanceRef ref) {
  return FirebaseStorage.instance;
}
