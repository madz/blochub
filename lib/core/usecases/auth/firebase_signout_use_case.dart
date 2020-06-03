import 'package:blochub/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../usecase.dart';

@lazySingleton
class FirebaseSignOutUserUseCase implements UseCaseFirebase<void, NoParams> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseSignOutUserUseCase({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<void> call(NoParams params) async {
    return await firebaseAuthUserRepository.signOut();
  }
}
