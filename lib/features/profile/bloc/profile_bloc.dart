import 'package:bloc/bloc.dart';
import 'package:blochub/core/usecases/auth/auth_user_param.dart';
import 'package:blochub/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_link_credential_with_facebook.dart';
import 'package:blochub/core/usecases/auth/firebase_link_credential_with_google.dart';
import 'package:blochub/core/usecases/auth/firebase_unlink_provider.dart';
import 'package:blochub/core/usecases/usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

///bloc for profile screen
@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FirebaseLinkCredentialWithGoogle linkCredentialWithGoogle;
  final FirebaseLinkCredentialWithFacebook linkCredentialWithFacebook;
  final FirebaseUnlinkProvider firebaseUnlinkProvider;
  final FirebaseGetUserUseCase firebaseGetUserUseCase;

  ProfileBloc({
    @required this.linkCredentialWithGoogle,
    @required this.linkCredentialWithFacebook,
    @required this.firebaseUnlinkProvider,
    @required this.firebaseGetUserUseCase,
  })  : assert(linkCredentialWithGoogle != null),
        assert(linkCredentialWithFacebook != null),
        assert(firebaseUnlinkProvider != null),
        assert(firebaseGetUserUseCase != null);

  @override
  ProfileState get initialState => ProfileState.initial();

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    yield* event.map(
      linkCredentialsWithGooglePressed: (e) async* {
        yield ProfileState.loading();
        try {
          await linkCredentialWithGoogle.call(NoParams());

          yield ProfileState.loaded();
        } on PlatformException catch (platformException) {
          yield ProfileState.error(platformException.message);
        }
      },
      linkCredentialsWithFacebookPressed: (e) async* {
        yield ProfileState.loading();
        try {
          await linkCredentialWithFacebook.call(NoParams());

          yield ProfileState.loaded();
        } on PlatformException catch (platformException) {
          yield ProfileState.error(platformException.message);
        }
      },
      unlinkCredentialsWithGooglePressed: (e) async* {
        yield ProfileState.loading();
        try {
          await firebaseUnlinkProvider.call(ParamProviderId(
            providerId: GoogleAuthProvider.providerId,
          ));

          yield ProfileState.loaded();
        } on PlatformException catch (platformException) {
          yield ProfileState.error(platformException.message);
        }
      },
      unlinkCredentialsWithFacebookPressed: (e) async* {
        yield ProfileState.loading();
        try {
          await firebaseUnlinkProvider.call(ParamProviderId(
            providerId: FacebookAuthProvider.providerId,
          ));

          yield ProfileState.loaded();
        } on PlatformException catch (platformException) {
          yield ProfileState.error(platformException.message);
        }
      },
    );
  }
}
