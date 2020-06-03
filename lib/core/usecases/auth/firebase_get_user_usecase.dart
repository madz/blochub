import 'package:blochub/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../usecase.dart';

@lazySingleton
class FirebaseGetUserUseCase
    implements UseCaseFirebase<FirebaseUser, NoParams> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseGetUserUseCase({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<FirebaseUser> call(NoParams params) async {
    return await firebaseAuthUserRepository.getUser();
  }
}
