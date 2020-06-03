import 'package:blochub/core/models/user_model.dart';
import 'package:blochub/core/repositories/user/firestore_user_repository.dart';
import 'package:injectable/injectable.dart';

import '../usecase.dart';
import 'user_usecase_param.dart';

@lazySingleton
class FirestoreGetUserUseCase implements UseCaseFirestore<UserModel, ParamUid> {
  final FirestoreUserRepository firestoreUserRepository;

  FirestoreGetUserUseCase({this.firestoreUserRepository});
  @override
  Future<UserModel> call(ParamUid params) async {
    return await firestoreUserRepository.getUserUsingUid(params.uid);
  }
}
