part of 'login_bloc.dart';

@freezed
abstract class LoginState implements _$LoginState {
  const LoginState._();

  const factory LoginState({
    @required bool isEmailValid,
    @required bool isPasswordValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _LoginState;

  factory LoginState.empty() => LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory LoginState.loading() => LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory LoginState.failure({@required String info}) => LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory LoginState.success({@required String info}) => LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );

  /// check if is login form is valid
  bool get isFormValid => isEmailValid && isPasswordValid;
}
