import 'package:blochub/core/repositories/user/firestore_user_repository.dart';
import 'package:blochub/core/usecases/use_case_param/use_case_user_param_user_model.dart';
import 'package:injectable/injectable.dart';

import 'usecase.dart';

@lazySingleton
class FirestoreCreateUserUseCase
    implements UseCaseFirestore<void, UseCaseUserParamModel> {
  final FirestoreUserRepository firestoreUserRepository;

  FirestoreCreateUserUseCase({this.firestoreUserRepository});

  @override
  Future<void> call(UseCaseUserParamModel params) async {
    await firestoreUserRepository.createUser(params.userModel);
  }
}
