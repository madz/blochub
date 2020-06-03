// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  LoginEventEmailChanged emailChanged({String email}) {
    return LoginEventEmailChanged(
      email: email,
    );
  }

  LoginEventPasswordChanged passwordChanged({String password}) {
    return LoginEventPasswordChanged(
      password: password,
    );
  }

  LoginEventLoginWithGooglePressed loginWithGooglePressed() {
    return const LoginEventLoginWithGooglePressed();
  }

  LoginEventLoginWithFacebookPressed loginWithFacebookPressed() {
    return const LoginEventLoginWithFacebookPressed();
  }

  LoginEventEmailPasswordPressed loginWithEmailPasswordPressed(
      {String email, String password}) {
    return LoginEventEmailPasswordPressed(
      email: email,
      password: password,
    );
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result loginWithGooglePressed(),
    @required Result loginWithFacebookPressed(),
    @required
        Result loginWithEmailPasswordPressed(String email, String password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result loginWithGooglePressed(),
    Result loginWithFacebookPressed(),
    Result loginWithEmailPasswordPressed(String email, String password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(LoginEventEmailChanged value),
    @required Result passwordChanged(LoginEventPasswordChanged value),
    @required
        Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    @required
        Result loginWithFacebookPressed(
            LoginEventLoginWithFacebookPressed value),
    @required
        Result loginWithEmailPasswordPressed(
            LoginEventEmailPasswordPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(LoginEventEmailChanged value),
    Result passwordChanged(LoginEventPasswordChanged value),
    Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    Result loginWithFacebookPressed(LoginEventLoginWithFacebookPressed value),
    Result loginWithEmailPasswordPressed(LoginEventEmailPasswordPressed value),
    @required Result orElse(),
  });
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

abstract class $LoginEventEmailChangedCopyWith<$Res> {
  factory $LoginEventEmailChangedCopyWith(LoginEventEmailChanged value,
          $Res Function(LoginEventEmailChanged) then) =
      _$LoginEventEmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$LoginEventEmailChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventEmailChangedCopyWith<$Res> {
  _$LoginEventEmailChangedCopyWithImpl(LoginEventEmailChanged _value,
      $Res Function(LoginEventEmailChanged) _then)
      : super(_value, (v) => _then(v as LoginEventEmailChanged));

  @override
  LoginEventEmailChanged get _value => super._value as LoginEventEmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(LoginEventEmailChanged(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

class _$LoginEventEmailChanged implements LoginEventEmailChanged {
  const _$LoginEventEmailChanged({this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventEmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $LoginEventEmailChangedCopyWith<LoginEventEmailChanged> get copyWith =>
      _$LoginEventEmailChangedCopyWithImpl<LoginEventEmailChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result loginWithGooglePressed(),
    @required Result loginWithFacebookPressed(),
    @required
        Result loginWithEmailPasswordPressed(String email, String password),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithFacebookPressed != null);
    assert(loginWithEmailPasswordPressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result loginWithGooglePressed(),
    Result loginWithFacebookPressed(),
    Result loginWithEmailPasswordPressed(String email, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(LoginEventEmailChanged value),
    @required Result passwordChanged(LoginEventPasswordChanged value),
    @required
        Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    @required
        Result loginWithFacebookPressed(
            LoginEventLoginWithFacebookPressed value),
    @required
        Result loginWithEmailPasswordPressed(
            LoginEventEmailPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithFacebookPressed != null);
    assert(loginWithEmailPasswordPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(LoginEventEmailChanged value),
    Result passwordChanged(LoginEventPasswordChanged value),
    Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    Result loginWithFacebookPressed(LoginEventLoginWithFacebookPressed value),
    Result loginWithEmailPasswordPressed(LoginEventEmailPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class LoginEventEmailChanged implements LoginEvent {
  const factory LoginEventEmailChanged({String email}) =
      _$LoginEventEmailChanged;

  String get email;
  $LoginEventEmailChangedCopyWith<LoginEventEmailChanged> get copyWith;
}

abstract class $LoginEventPasswordChangedCopyWith<$Res> {
  factory $LoginEventPasswordChangedCopyWith(LoginEventPasswordChanged value,
          $Res Function(LoginEventPasswordChanged) then) =
      _$LoginEventPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$LoginEventPasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventPasswordChangedCopyWith<$Res> {
  _$LoginEventPasswordChangedCopyWithImpl(LoginEventPasswordChanged _value,
      $Res Function(LoginEventPasswordChanged) _then)
      : super(_value, (v) => _then(v as LoginEventPasswordChanged));

  @override
  LoginEventPasswordChanged get _value =>
      super._value as LoginEventPasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(LoginEventPasswordChanged(
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$LoginEventPasswordChanged implements LoginEventPasswordChanged {
  const _$LoginEventPasswordChanged({this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventPasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $LoginEventPasswordChangedCopyWith<LoginEventPasswordChanged> get copyWith =>
      _$LoginEventPasswordChangedCopyWithImpl<LoginEventPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result loginWithGooglePressed(),
    @required Result loginWithFacebookPressed(),
    @required
        Result loginWithEmailPasswordPressed(String email, String password),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithFacebookPressed != null);
    assert(loginWithEmailPasswordPressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result loginWithGooglePressed(),
    Result loginWithFacebookPressed(),
    Result loginWithEmailPasswordPressed(String email, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(LoginEventEmailChanged value),
    @required Result passwordChanged(LoginEventPasswordChanged value),
    @required
        Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    @required
        Result loginWithFacebookPressed(
            LoginEventLoginWithFacebookPressed value),
    @required
        Result loginWithEmailPasswordPressed(
            LoginEventEmailPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithFacebookPressed != null);
    assert(loginWithEmailPasswordPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(LoginEventEmailChanged value),
    Result passwordChanged(LoginEventPasswordChanged value),
    Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    Result loginWithFacebookPressed(LoginEventLoginWithFacebookPressed value),
    Result loginWithEmailPasswordPressed(LoginEventEmailPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class LoginEventPasswordChanged implements LoginEvent {
  const factory LoginEventPasswordChanged({String password}) =
      _$LoginEventPasswordChanged;

  String get password;
  $LoginEventPasswordChangedCopyWith<LoginEventPasswordChanged> get copyWith;
}

abstract class $LoginEventLoginWithGooglePressedCopyWith<$Res> {
  factory $LoginEventLoginWithGooglePressedCopyWith(
          LoginEventLoginWithGooglePressed value,
          $Res Function(LoginEventLoginWithGooglePressed) then) =
      _$LoginEventLoginWithGooglePressedCopyWithImpl<$Res>;
}

class _$LoginEventLoginWithGooglePressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventLoginWithGooglePressedCopyWith<$Res> {
  _$LoginEventLoginWithGooglePressedCopyWithImpl(
      LoginEventLoginWithGooglePressed _value,
      $Res Function(LoginEventLoginWithGooglePressed) _then)
      : super(_value, (v) => _then(v as LoginEventLoginWithGooglePressed));

  @override
  LoginEventLoginWithGooglePressed get _value =>
      super._value as LoginEventLoginWithGooglePressed;
}

class _$LoginEventLoginWithGooglePressed
    implements LoginEventLoginWithGooglePressed {
  const _$LoginEventLoginWithGooglePressed();

  @override
  String toString() {
    return 'LoginEvent.loginWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventLoginWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result loginWithGooglePressed(),
    @required Result loginWithFacebookPressed(),
    @required
        Result loginWithEmailPasswordPressed(String email, String password),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithFacebookPressed != null);
    assert(loginWithEmailPasswordPressed != null);
    return loginWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result loginWithGooglePressed(),
    Result loginWithFacebookPressed(),
    Result loginWithEmailPasswordPressed(String email, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGooglePressed != null) {
      return loginWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(LoginEventEmailChanged value),
    @required Result passwordChanged(LoginEventPasswordChanged value),
    @required
        Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    @required
        Result loginWithFacebookPressed(
            LoginEventLoginWithFacebookPressed value),
    @required
        Result loginWithEmailPasswordPressed(
            LoginEventEmailPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithFacebookPressed != null);
    assert(loginWithEmailPasswordPressed != null);
    return loginWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(LoginEventEmailChanged value),
    Result passwordChanged(LoginEventPasswordChanged value),
    Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    Result loginWithFacebookPressed(LoginEventLoginWithFacebookPressed value),
    Result loginWithEmailPasswordPressed(LoginEventEmailPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithGooglePressed != null) {
      return loginWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class LoginEventLoginWithGooglePressed implements LoginEvent {
  const factory LoginEventLoginWithGooglePressed() =
      _$LoginEventLoginWithGooglePressed;
}

abstract class $LoginEventLoginWithFacebookPressedCopyWith<$Res> {
  factory $LoginEventLoginWithFacebookPressedCopyWith(
          LoginEventLoginWithFacebookPressed value,
          $Res Function(LoginEventLoginWithFacebookPressed) then) =
      _$LoginEventLoginWithFacebookPressedCopyWithImpl<$Res>;
}

class _$LoginEventLoginWithFacebookPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventLoginWithFacebookPressedCopyWith<$Res> {
  _$LoginEventLoginWithFacebookPressedCopyWithImpl(
      LoginEventLoginWithFacebookPressed _value,
      $Res Function(LoginEventLoginWithFacebookPressed) _then)
      : super(_value, (v) => _then(v as LoginEventLoginWithFacebookPressed));

  @override
  LoginEventLoginWithFacebookPressed get _value =>
      super._value as LoginEventLoginWithFacebookPressed;
}

class _$LoginEventLoginWithFacebookPressed
    implements LoginEventLoginWithFacebookPressed {
  const _$LoginEventLoginWithFacebookPressed();

  @override
  String toString() {
    return 'LoginEvent.loginWithFacebookPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventLoginWithFacebookPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result loginWithGooglePressed(),
    @required Result loginWithFacebookPressed(),
    @required
        Result loginWithEmailPasswordPressed(String email, String password),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithFacebookPressed != null);
    assert(loginWithEmailPasswordPressed != null);
    return loginWithFacebookPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result loginWithGooglePressed(),
    Result loginWithFacebookPressed(),
    Result loginWithEmailPasswordPressed(String email, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithFacebookPressed != null) {
      return loginWithFacebookPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(LoginEventEmailChanged value),
    @required Result passwordChanged(LoginEventPasswordChanged value),
    @required
        Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    @required
        Result loginWithFacebookPressed(
            LoginEventLoginWithFacebookPressed value),
    @required
        Result loginWithEmailPasswordPressed(
            LoginEventEmailPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithFacebookPressed != null);
    assert(loginWithEmailPasswordPressed != null);
    return loginWithFacebookPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(LoginEventEmailChanged value),
    Result passwordChanged(LoginEventPasswordChanged value),
    Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    Result loginWithFacebookPressed(LoginEventLoginWithFacebookPressed value),
    Result loginWithEmailPasswordPressed(LoginEventEmailPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithFacebookPressed != null) {
      return loginWithFacebookPressed(this);
    }
    return orElse();
  }
}

abstract class LoginEventLoginWithFacebookPressed implements LoginEvent {
  const factory LoginEventLoginWithFacebookPressed() =
      _$LoginEventLoginWithFacebookPressed;
}

abstract class $LoginEventEmailPasswordPressedCopyWith<$Res> {
  factory $LoginEventEmailPasswordPressedCopyWith(
          LoginEventEmailPasswordPressed value,
          $Res Function(LoginEventEmailPasswordPressed) then) =
      _$LoginEventEmailPasswordPressedCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

class _$LoginEventEmailPasswordPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventEmailPasswordPressedCopyWith<$Res> {
  _$LoginEventEmailPasswordPressedCopyWithImpl(
      LoginEventEmailPasswordPressed _value,
      $Res Function(LoginEventEmailPasswordPressed) _then)
      : super(_value, (v) => _then(v as LoginEventEmailPasswordPressed));

  @override
  LoginEventEmailPasswordPressed get _value =>
      super._value as LoginEventEmailPasswordPressed;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(LoginEventEmailPasswordPressed(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$LoginEventEmailPasswordPressed
    implements LoginEventEmailPasswordPressed {
  const _$LoginEventEmailPasswordPressed({this.email, this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.loginWithEmailPasswordPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEventEmailPasswordPressed &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  $LoginEventEmailPasswordPressedCopyWith<LoginEventEmailPasswordPressed>
      get copyWith => _$LoginEventEmailPasswordPressedCopyWithImpl<
          LoginEventEmailPasswordPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result loginWithGooglePressed(),
    @required Result loginWithFacebookPressed(),
    @required
        Result loginWithEmailPasswordPressed(String email, String password),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithFacebookPressed != null);
    assert(loginWithEmailPasswordPressed != null);
    return loginWithEmailPasswordPressed(email, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result loginWithGooglePressed(),
    Result loginWithFacebookPressed(),
    Result loginWithEmailPasswordPressed(String email, String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmailPasswordPressed != null) {
      return loginWithEmailPasswordPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(LoginEventEmailChanged value),
    @required Result passwordChanged(LoginEventPasswordChanged value),
    @required
        Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    @required
        Result loginWithFacebookPressed(
            LoginEventLoginWithFacebookPressed value),
    @required
        Result loginWithEmailPasswordPressed(
            LoginEventEmailPasswordPressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginWithGooglePressed != null);
    assert(loginWithFacebookPressed != null);
    assert(loginWithEmailPasswordPressed != null);
    return loginWithEmailPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(LoginEventEmailChanged value),
    Result passwordChanged(LoginEventPasswordChanged value),
    Result loginWithGooglePressed(LoginEventLoginWithGooglePressed value),
    Result loginWithFacebookPressed(LoginEventLoginWithFacebookPressed value),
    Result loginWithEmailPasswordPressed(LoginEventEmailPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginWithEmailPasswordPressed != null) {
      return loginWithEmailPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class LoginEventEmailPasswordPressed implements LoginEvent {
  const factory LoginEventEmailPasswordPressed(
      {String email, String password}) = _$LoginEventEmailPasswordPressed;

  String get email;
  String get password;
  $LoginEventEmailPasswordPressedCopyWith<LoginEventEmailPasswordPressed>
      get copyWith;
}

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {@required bool isEmailValid,
      @required bool isPasswordValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _LoginState(
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  bool get isEmailValid;
  bool get isPasswordValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $LoginStateCopyWith<LoginState> get copyWith;
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {bool isEmailValid,
      bool isPasswordValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object isEmailValid = freezed,
    Object isPasswordValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isEmailValid,
      bool isPasswordValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object isEmailValid = freezed,
    Object isPasswordValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_LoginState(
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_LoginState extends _LoginState {
  const _$_LoginState(
      {@required this.isEmailValid,
      @required this.isPasswordValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(isEmailValid != null),
        assert(isPasswordValid != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null),
        super._();

  @override
  final bool isEmailValid;
  @override
  final bool isPasswordValid;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final String info;

  @override
  String toString() {
    return 'LoginState(isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordValid, isPasswordValid)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEmailValid) ^
      const DeepCollectionEquality().hash(isPasswordValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const _LoginState._() : super._();
  const factory _LoginState(
      {@required bool isEmailValid,
      @required bool isPasswordValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_LoginState;

  @override
  bool get isEmailValid;
  @override
  bool get isPasswordValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
