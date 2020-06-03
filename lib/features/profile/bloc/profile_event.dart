part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.linkCredentialsWithGooglePressed() =
      ProfileEventLinkCredentialsWithGooglePressed;
  const factory ProfileEvent.linkCredentialsWithFacebookPressed() =
      ProfileEventLinkCredentialsWithFacebookPressed;
  const factory ProfileEvent.unlinkCredentialsWithGooglePressed() =
      ProfileEventUnlinkCredentialsWithGooglePressed;
  const factory ProfileEvent.unlinkCredentialsWithFacebookPressed() =
      ProfileEventUnlinkCredentialsWithFacebookPressed;
}
