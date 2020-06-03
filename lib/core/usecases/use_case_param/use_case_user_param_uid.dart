import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_user_param_uid.freezed.dart';

@freezed
abstract class UseCaseUserParamUid with _$UseCaseUserParamUid {
  const factory UseCaseUserParamUid.init(String uid) = UseCaseUserParamUidInit;
}
