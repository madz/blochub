import 'package:blochub/core/repositories/user/firestore_user_repository.dart';
import 'package:blochub/core/usecases/use_case_param/use_case_user_param_uid.dart';
import 'package:injectable/injectable.dart';

import 'usecase.dart';

@lazySingleton
class FirestoreDeleteUserUseCase
    implements UseCaseFirestore<void, UseCaseUserParamUid> {
  final FirestoreUserRepository firestoreUserRepository;

  FirestoreDeleteUserUseCase({this.firestoreUserRepository});
  @override
  Future<void> call(UseCaseUserParamUid params) async {
    await firestoreUserRepository.deleteUser(params.uid);
  }
}
