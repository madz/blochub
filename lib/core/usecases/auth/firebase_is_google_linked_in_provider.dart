import 'package:blochub/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../usecase.dart';

@lazySingleton
class FirebaseIsGoogleLinkedInProvider
    implements UseCaseFirestore<bool, NoParams> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseIsGoogleLinkedInProvider({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<bool> call(NoParams params) async {
    return await firebaseAuthUserRepository.isGoogleLinkedInProvider();
  }
}
