import 'package:blochub/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../usecase.dart';
import 'auth_user_param.dart';

@lazySingleton
class FirebaseSignUpUseCase
    implements UseCaseFirestore<void, ParamEmailPassword> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseSignUpUseCase({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<void> call(ParamEmailPassword params) async {
    return await firebaseAuthUserRepository.signUp(
        email: params.email, password: params.password);
  }
}
