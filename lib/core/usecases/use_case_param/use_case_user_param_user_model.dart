import 'package:blochub/core/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_user_param_user_model.freezed.dart';

@freezed
abstract class UseCaseUserParamModel with _$UseCaseUserParamModel {
  const factory UseCaseUserParamModel.init(UserModel userModel) =
      UseCaseUserParamModelInit;
}
