import 'package:blochub/core/models/user_model.dart';
import 'package:blochub/core/repositories/user/firestore_user_repository.dart';
import 'package:blochub/core/usecases/use_case_param/use_case_user_param_uid.dart';
import 'package:injectable/injectable.dart';

import 'usecase.dart';

@lazySingleton
class FirestoreGetUserUseCase
    implements UseCaseFirestore<UserModel, UseCaseUserParamUid> {
  final FirestoreUserRepository firestoreUserRepository;

  FirestoreGetUserUseCase({this.firestoreUserRepository});
  @override
  Future<UserModel> call(UseCaseUserParamUid params) async {
    return await firestoreUserRepository.getUserUsingUid(params.uid);
  }
}
