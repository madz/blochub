import 'package:blochub/core/models/user_model.dart';
import 'package:blochub/core/usecases/auth/auth_user_param.dart';
import 'package:blochub/core/usecases/auth/firebase_get_user_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_signin_with_credentials_usecase.dart';
import 'package:blochub/core/usecases/auth/firebase_signup_usecase.dart';
import 'package:blochub/core/usecases/usecase.dart';
import 'package:blochub/core/usecases/user/firestore_create_user_usecase.dart';
import 'package:blochub/core/usecases/user/firestore_get_user_usecase.dart';
import 'package:blochub/core/usecases/user/user_usecase_param.dart';
import 'package:blochub/shared/util/validators.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@lazySingleton
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final FirebaseSignUpUseCase firebaseSignUpUseCase;
  final FirebaseSignedInWithCredentialsUserUseCase
      firebaseSignedInWithCredentialsUserUseCase;
  final FirebaseGetUserUseCase firebaseGetUserUseCase;
  final FirestoreCreateUserUseCase firestoreCreateUserUseCase;
  final FirestoreGetUserUseCase firestoreGetUserUseCase;

  final Validators validators;

  RegisterBloc({
    @required this.firebaseSignUpUseCase,
    @required this.firebaseSignedInWithCredentialsUserUseCase,
    @required this.firebaseGetUserUseCase,
    @required this.firestoreCreateUserUseCase,
    @required this.firestoreGetUserUseCase,
    @required this.validators,
  });

  @override
  RegisterState get initialState => RegisterState.empty();

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
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
      firstNameChanged: (e) async* {
        yield state.copyWith(
          isFirstNameValid: validators.isValidName(e.firstName),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          isLastNameValid: validators.isValidName(e.lastName),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          isPhoneNumberValid: validators.isValidPhoneNo(e.phoneNumber),
          isSubmitting: false,
          isSuccess: false,
          isFailure: false,
        );
      },
      submitted: (e) async* {
        yield RegisterState.loading();
        try {
          await firebaseSignUpUseCase.call(
            ParamEmailPassword(email: e.email, password: e.password),
          );

          final user = await firebaseGetUserUseCase(NoParams());

          UserModel userModel = UserModel(
            uid: user.uid,
            email: e.email,
            firstName: e.firstName ?? user.displayName,
            lastName: e.lastName ?? user.displayName,
            phoneNumber: e.phoneNo ?? user.phoneNumber,
          );
          await firestoreCreateUserUseCase
              .call(ParamUserModel(userModel: userModel));

          yield RegisterState.success(info: 'Successfulyy registered');
        } on PlatformException catch (platformException) {
          yield RegisterState.failure(info: platformException.message);
        }
      },
    );
  }

//  @override
//  Stream<S> transform(StreamTransformer<T, S> streamTransformer) {
//
//  }

  //  @override
//  Stream<Transition<Event, State>> transformTransitions(
//      Stream<Transition<Event, State>> transitions) {
//
//  }

  @override
  Stream<Transition<RegisterEvent, RegisterState>> transformTransitions(
      Stream<Transition<RegisterEvent, RegisterState>> transitions) {
    final nonDebounceStream = transitions.where((event) {
      return (event is! RegisterEventEmailChanged &&
          event is! RegisterEventPasswordChanged &&
          event is! RegisterEventFirstNameChanged &&
          event is! RegisterEventLastNameChanged &&
          event is! RegisterEventPhoneNumberChanged);
    });
    final debounceStream = transitions.where((event) {
      return (event is RegisterEventEmailChanged ||
          event is RegisterEventPasswordChanged ||
          event is RegisterEventFirstNameChanged ||
          event is RegisterEventLastNameChanged ||
          event is RegisterEventPhoneNumberChanged);
    }).debounceTime(Duration(milliseconds: 100));
    return super
        .transformTransitions(nonDebounceStream.mergeWith([debounceStream]));
  }
}
