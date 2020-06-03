import 'package:blochub/core/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FirestoreUserRepository {
  Future<void> createUser(UserModel user);
  Future<void> updateUser(UserModel user);
  Future<void> deleteUser(String id);
  Future<UserModel> getUserUsingUid(String id);
}

@Injectable(as: FirestoreUserRepository)
@lazySingleton
class FirestoreUserRepositoryImpl extends FirestoreUserRepository {
  final Firestore firestore;
  final String userCollection = 'user';

  FirestoreUserRepositoryImpl({@required this.firestore});
  @override
  Future<void> createUser(UserModel user) async {
    await firestore
        .collection(userCollection)
        .document(user.uid)
        .setData(user.toJson());
  }

  @override
  Future<void> updateUser(UserModel user) async {
    await firestore
        .collection(userCollection)
        .document(user.uid)
        .updateData(user.toJson());
  }

  @override
  Future<void> deleteUser(String uid) async {
    await firestore.collection(userCollection).document(uid).delete();
  }

  @override
  Future<UserModel> getUserUsingUid(String uid) async {
    final userData =
        await firestore.collection(userCollection).document(uid).get();
    if (userData.exists) {
      return UserModel.fromJson(userData.data);
    }
    return null;
  }
}
