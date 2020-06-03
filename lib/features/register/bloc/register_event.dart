part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.emailChanged({String email}) =
      RegisterEventEmailChanged;

  const factory RegisterEvent.passwordChanged({String password}) =
      RegisterEventPasswordChanged;

  const factory RegisterEvent.firstNameChanged({String firstName}) =
      RegisterEventFirstNameChanged;

  const factory RegisterEvent.lastNameChanged({String lastName}) =
      RegisterEventLastNameChanged;

  const factory RegisterEvent.phoneNumberChanged({String phoneNumber}) =
      RegisterEventPhoneNumberChanged;

  const factory RegisterEvent.submitted(
      {String email,
      String password,
      String firstName,
      String lastName,
      String phoneNo}) = RegisterEventSubmitted;
}
