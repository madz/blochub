import 'package:blochub/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../usecase.dart';

@lazySingleton
class FirebaseIsSignedInUserUseCase implements UseCaseFirebase<bool, NoParams> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseIsSignedInUserUseCase({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<bool> call(NoParams params) async {
    return await firebaseAuthUserRepository.isSignedIn();
  }
}
