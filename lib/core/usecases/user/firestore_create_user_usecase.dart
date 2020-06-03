import 'package:blochub/core/repositories/user/firestore_user_repository.dart';
import 'package:injectable/injectable.dart';

import '../usecase.dart';
import 'user_usecase_param.dart';

@lazySingleton
class FirestoreCreateUserUseCase
    implements UseCaseFirestore<void, ParamUserModel> {
  final FirestoreUserRepository firestoreUserRepository;

  FirestoreCreateUserUseCase({this.firestoreUserRepository});

  @override
  Future<void> call(ParamUserModel params) async {
    await firestoreUserRepository.createUser(params.userModel);
  }
}
