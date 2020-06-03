import 'package:blochub/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../usecase.dart';

@lazySingleton
class FirebaseFetchCredentialProviderListUseCase
    implements UseCaseFirebase<List<String>, NoParams> {
  final FirebaseAuthUserRepository firebaseAuthUserRepository;

  FirebaseFetchCredentialProviderListUseCase({
    @required this.firebaseAuthUserRepository,
  });

  @override
  Future<List<String>> call(NoParams params) async {
    return await firebaseAuthUserRepository.fetchCredentialProviderList();
  }
}
