import 'package:bloc/bloc.dart';
import 'package:blochub/core/models/user_model.dart';
import 'package:blochub/core/usecases/auth/auth_user_param.dart';
import 'package:blochub/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_signin_with_credentials_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_signin_with_facebook_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_signin_with_google_usecase.dart';
import 'package:blochub/core/usecases/use_case_param/use_case_user_param_uid.dart';
import 'package:blochub/core/usecases/use_case_param/use_case_user_param_user_model.dart';
import 'package:blochub/core/usecases/user/firestore_create_user_usecase.dart';
import 'package:blochub/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:blochub/core/usecases/user/usecase.dart';
import 'package:blochub/shared/util/validators.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final FirebaseSignedInWithGoogleUserUseCase
      firebaseSignedInWithGoogleUserUseCase;
  final FirebaseSignedInWithFacebookUserUseCase
      firebaseSignedInWithFacebookUserUseCase;
  final FirebaseSignedInWithCredentialsUserUseCase
      firebaseSignedInWithCredentialsUserUseCase;
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirestoreCreateUserUseCase firestoreCreateUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  final Validators validators;

  LoginBloc({
    @required this.firebaseSignedInWithGoogleUserUseCase,
    @required this.firebaseSignedInWithFacebookUserUseCase,
    @required this.firebaseSignedInWithCredentialsUserUseCase,
    @required this.firebaseGetUserUseCase,
    @required this.firestoreCreateUserUseCase,
    @required this.firestoreGetUserUseCase,
    @required this.validators,
  })  : assert(firebaseSignedInWithGoogleUserUseCase != null),
        assert(firebaseSignedInWithCredentialsUserUseCase != null),
        assert(firebaseGetUserUseCase != null),
        assert(firestoreCreateUserUseCase != null),
        assert(validators != null);

  @override
  LoginState get initialState => LoginState.empty();

  Stream<Transition<LoginEvent, LoginState>> transformTransitions(
      Stream<Transition<LoginEvent, LoginState>> transitions) {
    final nonDebounceStream = transitions.where((event) {
      return (event is! LoginEventEmailChanged &&
          event is! LoginEventPasswordChanged);
    });
    final debounceStream = transitions.where((event) {
      return (event is LoginEventEmailChanged ||
          event is LoginEventPasswordChanged);
    }).debounceTime(Duration(milliseconds: 100));
    return super.transformTransitions(
      nonDebounceStream.mergeWith([debounceStream]),
    );
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          isEmailValid: validators.isValidEmail(e.email),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          isPasswordValid: validators.isValidPassword(e.password),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      loginWithGooglePressed: (e) async* {
        yield LoginState.loading();
        try {
          await firebaseSignedInWithGoogleUserUseCase(NoParams());
          _createNewUser();

          yield LoginState.success(info: 'Successfully logged in.');
        } on PlatformException catch (platFormException) {
          yield LoginState.failure(info: platFormException.message);
        }
      },
      loginWithFacebookPressed: (e) async* {
        yield LoginState.loading();
        try {
          await firebaseSignedInWithFacebookUserUseCase(NoParams());
          _createNewUser();

          yield LoginState.success(info: 'Successfully logged in.');
        } on PlatformException catch (platFormException) {
          yield LoginState.failure(info: platFormException.message);
        }
      },
      loginWithEmailPasswordPressed: (e) async* {
        yield LoginState.loading();
        try {
          await firebaseSignedInWithCredentialsUserUseCase(
              ParamEmailPassword(email: e.email, password: e.password));
          yield LoginState.success(info: 'Succesfully logged in.');
        } on PlatformException catch (platFormException) {
          yield LoginState.failure(info: platFormException.message);
        }
      },
    );
  }

  void _createNewUser() async {
    final firebaseUser = await firebaseGetUserUseCase.call(NoParams());
    final userStore = await firestoreGetUserUseCase
        .call(UseCaseUserParamUid.init(firebaseUser.uid));

    if (userStore == null) {
      // if user is not existed in User Firestore create a User
      UserModel userModel = UserModel(
        uid: firebaseUser.uid,
        email: firebaseUser.email,
        phoneNumber: firebaseUser.phoneNumber,
        firstName: firebaseUser.displayName,
        lastName: firebaseUser.displayName,
      );
      await firestoreCreateUserUseCase
          .call(UseCaseUserParamModel.init(userModel));
    }
  }
}
