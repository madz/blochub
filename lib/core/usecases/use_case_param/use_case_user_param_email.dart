import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_user_param_email.freezed.dart';

@freezed
abstract class UseCaseUserParamEmail with _$UseCaseUserParamEmail {
  const factory UseCaseUserParamEmail.init(String email) =
      UseCaseUserParamEmailInit;
}
