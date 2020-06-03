// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:blochub/features/explore/bloc/explore_bloc.dart';
import 'package:blochub/core/di/module_injector.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:blochub/core/repositories/user/firestore_user_repository.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:blochub/features/navigation/bloc/navigation_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:blochub/shared/util/validators.dart';
import 'package:blochub/features/contribute/bloc/contribute_bloc.dart';
import 'package:blochub/core/repositories/auth/firebase_auth_user_repository.dart';
import 'package:blochub/core/usecases/auth/firebase_fetch_credential_provider_list_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_is_facebook_linked_in_provider.dart';
import 'package:blochub/core/usecases/auth/firebase_is_google_linked_in_provider.dart';
import 'package:blochub/core/usecases/auth/firebase_is_signedin_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_link_credential_with_facebook.dart';
import 'package:blochub/core/usecases/auth/firebase_link_credential_with_google.dart';
import 'package:blochub/core/usecases/auth/firebase_signout_use_case.dart';
import 'package:blochub/core/usecases/auth/firebase_signup_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_signin_with_credentials_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_signin_with_facebook_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_signin_with_google_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_unlink_provider.dart';
import 'package:blochub/core/usecases/user/firestore_create_user_usecase.dart';
import 'package:blochub/core/usecases/user/firestore_delete_user_usercase.dart';
import 'package:blochub/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:blochub/core/usecases/user/firestore_update_user_usecase.dart';
import 'package:blochub/features/google_map/bloc/google_map_bloc.dart';
import 'package:blochub/features/login/bloc/login_bloc.dart';
import 'package:blochub/features/profile/bloc/profile_bloc.dart';
import 'package:blochub/features/register/bloc/register_bloc.dart';
import 'package:blochub/features/authentication/bloc/authentication_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final injectableModule = _$InjectableModule();
  g.registerLazySingleton<ExploreBloc>(() => ExploreBloc());
  g.registerLazySingleton<FacebookLogin>(() => injectableModule.facebookLogin);
  g.registerLazySingleton<FirebaseAuth>(() => injectableModule.firebaseAuth);
  g.registerLazySingleton<FirebaseStorage>(
      () => injectableModule.firebaseStorage);
  g.registerLazySingleton<Firestore>(() => injectableModule.firestore);
  g.registerFactory<FirestoreUserRepository>(
      () => FirestoreUserRepositoryImpl(firestore: g<Firestore>()));
  g.registerLazySingleton<Geolocator>(() => injectableModule.geolocator);
  g.registerLazySingleton<GoogleSignIn>(() => injectableModule.googleSignIn);
  g.registerLazySingleton<LocationPermissions>(
      () => injectableModule.locationPermissions);
  g.registerLazySingleton<NavigationBloc>(() => NavigationBloc());
  final sharedPreferences = await injectableModule.sharedPreferences;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<Uuid>(() => injectableModule.uuid);
  g.registerLazySingleton<Validators>(() => injectableModule.validators);
  g.registerLazySingleton<ContributeBloc>(() =>
      ContributeBloc(firebaseStorage: g<FirebaseStorage>(), uuid: g<Uuid>()));
  g.registerFactory<FirebaseAuthUserRepository>(
      () => FirebaseAuthUserRepositoryImpl(
            firebaseAuth: g<FirebaseAuth>(),
            googleSignIn: g<GoogleSignIn>(),
            facebookLogin: g<FacebookLogin>(),
          ));
  g.registerLazySingleton<FirebaseFetchCredentialProviderListUseCase>(() =>
      FirebaseFetchCredentialProviderListUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseGetUserUseCase>(() => FirebaseGetUserUseCase(
      firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseIsFacebookLinkedInProvider>(() =>
      FirebaseIsFacebookLinkedInProvider(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseIsGoogleLinkedInProvider>(() =>
      FirebaseIsGoogleLinkedInProvider(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseIsSignedInUserUseCase>(() =>
      FirebaseIsSignedInUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseLinkCredentialWithFacebook>(() =>
      FirebaseLinkCredentialWithFacebook(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseLinkCredentialWithGoogle>(() =>
      FirebaseLinkCredentialWithGoogle(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignOutUserUseCase>(() =>
      FirebaseSignOutUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignUpUseCase>(() => FirebaseSignUpUseCase(
      firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignedInWithCredentialsUserUseCase>(() =>
      FirebaseSignedInWithCredentialsUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignedInWithFacebookUserUseCase>(() =>
      FirebaseSignedInWithFacebookUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseSignedInWithGoogleUserUseCase>(() =>
      FirebaseSignedInWithGoogleUserUseCase(
          firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirebaseUnlinkProvider>(() => FirebaseUnlinkProvider(
      firebaseAuthUserRepository: g<FirebaseAuthUserRepository>()));
  g.registerLazySingleton<FirestoreCreateUserUseCase>(() =>
      FirestoreCreateUserUseCase(
          firestoreUserRepository: g<FirestoreUserRepository>()));
  g.registerLazySingleton<FirestoreDeleteUserUseCase>(() =>
      FirestoreDeleteUserUseCase(
          firestoreUserRepository: g<FirestoreUserRepository>()));
  g.registerLazySingleton<FirestoreGetUserUseCase>(() =>
      FirestoreGetUserUseCase(
          firestoreUserRepository: g<FirestoreUserRepository>()));
  g.registerLazySingleton<FirestoreUpdateUserUseCase>(() =>
      FirestoreUpdateUserUseCase(
          firestoreUserRepository: g<FirestoreUserRepository>()));
  g.registerLazySingleton<GoogleMapBloc>(() => GoogleMapBloc(
      geolocator: g<Geolocator>(),
      locationPermissions: g<LocationPermissions>()));
  g.registerLazySingleton<LoginBloc>(() => LoginBloc(
        firebaseSignedInWithGoogleUserUseCase:
            g<FirebaseSignedInWithGoogleUserUseCase>(),
        firebaseSignedInWithFacebookUserUseCase:
            g<FirebaseSignedInWithFacebookUserUseCase>(),
        firebaseSignedInWithCredentialsUserUseCase:
            g<FirebaseSignedInWithCredentialsUserUseCase>(),
        firebaseGetUserUseCase: g<FirebaseGetUserUseCase>(),
        firestoreCreateUserUseCase: g<FirestoreCreateUserUseCase>(),
        firestoreGetUserUseCase: g<FirestoreGetUserUseCase>(),
        validators: g<Validators>(),
      ));
  g.registerLazySingleton<ProfileBloc>(() => ProfileBloc(
        linkCredentialWithGoogle: g<FirebaseLinkCredentialWithGoogle>(),
        linkCredentialWithFacebook: g<FirebaseLinkCredentialWithFacebook>(),
        firebaseUnlinkProvider: g<FirebaseUnlinkProvider>(),
        firebaseGetUserUseCase: g<FirebaseGetUserUseCase>(),
      ));
  g.registerLazySingleton<RegisterBloc>(() => RegisterBloc(
        firebaseSignUpUseCase: g<FirebaseSignUpUseCase>(),
        firebaseSignedInWithCredentialsUserUseCase:
            g<FirebaseSignedInWithCredentialsUserUseCase>(),
        firebaseGetUserUseCase: g<FirebaseGetUserUseCase>(),
        firestoreCreateUserUseCase: g<FirestoreCreateUserUseCase>(),
        validators: g<Validators>(),
      ));
  g.registerLazySingleton<AuthenticationBloc>(() => AuthenticationBloc(
        firebaseIsSignedInUserUseCase: g<FirebaseIsSignedInUserUseCase>(),
        firebaseGetUserUseCase: g<FirebaseGetUserUseCase>(),
        firebaseSignOutUserUseCase: g<FirebaseSignOutUserUseCase>(),
      ));
}

class _$InjectableModule extends InjectableModule {}
