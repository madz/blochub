import 'package:blochub/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../usecase.dart';
import 'auth_user_param.dart';

@lazySingleton
class FirebaseUnlinkProvider
    implements UseCaseFirestore<void, ParamProviderId> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseUnlinkProvider({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<void> call(ParamProviderId params) async {
    return await firebaseAuthUserRepository.unlinkProvider(
        providerId: params.providerId);
  }
}
