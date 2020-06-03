part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged({String email}) =
      LoginEventEmailChanged;

  const factory LoginEvent.passwordChanged({String password}) =
      LoginEventPasswordChanged;

  const factory LoginEvent.loginWithGooglePressed() =
      LoginEventLoginWithGooglePressed;

  const factory LoginEvent.loginWithFacebookPressed() =
      LoginEventLoginWithFacebookPressed;

  const factory LoginEvent.loginWithEmailPasswordPressed(
      {String email, String password}) = LoginEventEmailPasswordPressed;
}
