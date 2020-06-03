part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.authCheckRequested() =
      AuthenticationEventAuthCheckRequested;
  const factory AuthenticationEvent.loggedIn() = AuthenticationEventLoggedIn;
  const factory AuthenticationEvent.loggedOut() = AuthenticationEventLoggedOut;
}
