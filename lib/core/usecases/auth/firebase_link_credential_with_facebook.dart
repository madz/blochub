import 'package:blochub/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../user/usecase.dart';

@lazySingleton
class FirebaseLinkCredentialWithFacebook
    implements UseCaseFirestore<void, NoParams> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseLinkCredentialWithFacebook({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<void> call(NoParams params) async {
    return await firebaseAuthUserRepository.linkCredentialWithFacebook();
  }
}
