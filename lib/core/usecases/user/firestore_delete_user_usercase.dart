import 'package:blochub/core/repositories/user/firestore_user_repository.dart';
import 'package:injectable/injectable.dart';

import '../usecase.dart';
import 'user_usecase_param.dart';

@lazySingleton
class FirestoreDeleteUserUseCase implements UseCaseFirestore<void, ParamUid> {
  final FirestoreUserRepository firestoreUserRepository;

  FirestoreDeleteUserUseCase({this.firestoreUserRepository});
  @override
  Future<void> call(ParamUid params) async {
    await firestoreUserRepository.deleteUser(params.uid);
  }
}
