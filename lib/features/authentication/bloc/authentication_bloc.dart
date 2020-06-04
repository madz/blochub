import 'dart:async';

import 'package:blochub/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_is_signedin_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_signout_use_case.dart';
import 'package:blochub/core/usecases/user/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

/// bloc for Authentication
@lazySingleton
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final FirebaseIsSignedInUserUseCase firebaseIsSignedInUserUseCase;
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirebaseSignOutUserUseCase firebaseSignOutUserUseCase;

  /// create Authentication bloc
  AuthenticationBloc({
    @required this.firebaseIsSignedInUserUseCase,
    @required this.firebaseGetUserUseCase,
    @required this.firebaseSignOutUserUseCase,
  });
  @override
  AuthenticationState get initialState => AuthenticationState.initial();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final isSignedIn = await firebaseIsSignedInUserUseCase.call(NoParams());
        if (isSignedIn) {
          await firebaseGetUserUseCase.call(NoParams());
          yield AuthenticationState.authenticated();
        } else {
          yield AuthenticationState.unauthenticated();
        }
      },
      loggedIn: (e) async* {
        await firebaseGetUserUseCase.call(NoParams());
        yield AuthenticationState.authenticated();
      },
      loggedOut: (e) async* {
        await firebaseSignOutUserUseCase.call(NoParams());
        yield AuthenticationState.unauthenticated();
      },
    );
  }
}
