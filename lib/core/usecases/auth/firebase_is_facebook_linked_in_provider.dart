import 'package:blochub/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../user/usecase.dart';

@lazySingleton
class FirebaseIsFacebookLinkedInProvider
    implements UseCaseFirestore<bool, NoParams> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseIsFacebookLinkedInProvider({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<bool> call(NoParams params) async {
    return await firebaseAuthUserRepository.isFacebookLinkedInProvider();
  }
}
