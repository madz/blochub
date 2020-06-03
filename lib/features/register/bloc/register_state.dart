part of 'register_bloc.dart';

@freezed
abstract class RegisterState implements _$RegisterState {
  const RegisterState._();

  const factory RegisterState({
    @required bool isEmailValid,
    @required bool isPasswordValid,
    @required bool isFirstNameValid,
    @required bool isLastNameValid,
    @required bool isPhoneNumberValid,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _RegisterState;

  factory RegisterState.empty() => RegisterState(
        isEmailValid: true,
        isPasswordValid: true,
        isFirstNameValid: true,
        isLastNameValid: true,
        isPhoneNumberValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory RegisterState.loading() => RegisterState(
        isEmailValid: true,
        isPasswordValid: true,
        isFirstNameValid: true,
        isLastNameValid: true,
        isPhoneNumberValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory RegisterState.failure({@required String info}) => RegisterState(
        isEmailValid: true,
        isPasswordValid: true,
        isFirstNameValid: true,
        isLastNameValid: true,
        isPhoneNumberValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory RegisterState.success({@required String info}) => RegisterState(
        isEmailValid: true,
        isPasswordValid: true,
        isFirstNameValid: true,
        isLastNameValid: true,
        isPhoneNumberValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );

  /// check if is registration form is valid
  bool get isFormValid =>
      isEmailValid &&
      isPasswordValid &&
      isFirstNameValid &&
      isLastNameValid &&
      isPhoneNumberValid;
}
