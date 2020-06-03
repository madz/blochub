// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  RegisterEventEmailChanged emailChanged({String email}) {
    return RegisterEventEmailChanged(
      email: email,
    );
  }

  RegisterEventPasswordChanged passwordChanged({String password}) {
    return RegisterEventPasswordChanged(
      password: password,
    );
  }

  RegisterEventFirstNameChanged firstNameChanged({String firstName}) {
    return RegisterEventFirstNameChanged(
      firstName: firstName,
    );
  }

  RegisterEventLastNameChanged lastNameChanged({String lastName}) {
    return RegisterEventLastNameChanged(
      lastName: lastName,
    );
  }

  RegisterEventPhoneNumberChanged phoneNumberChanged({String phoneNumber}) {
    return RegisterEventPhoneNumberChanged(
      phoneNumber: phoneNumber,
    );
  }

  RegisterEventSubmitted submitted(
      {String email,
      String password,
      String firstName,
      String lastName,
      String phoneNo}) {
    return RegisterEventSubmitted(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      phoneNo: phoneNo,
    );
  }
}

// ignore: unused_element
const $RegisterEvent = _$RegisterEventTearOff();

mixin _$RegisterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required
        Result submitted(String email, String password, String firstName,
            String lastName, String phoneNo),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result submitted(String email, String password, String firstName,
        String lastName, String phoneNo),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(RegisterEventEmailChanged value),
    @required Result passwordChanged(RegisterEventPasswordChanged value),
    @required Result firstNameChanged(RegisterEventFirstNameChanged value),
    @required Result lastNameChanged(RegisterEventLastNameChanged value),
    @required Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    @required Result submitted(RegisterEventSubmitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(RegisterEventEmailChanged value),
    Result passwordChanged(RegisterEventPasswordChanged value),
    Result firstNameChanged(RegisterEventFirstNameChanged value),
    Result lastNameChanged(RegisterEventLastNameChanged value),
    Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    Result submitted(RegisterEventSubmitted value),
    @required Result orElse(),
  });
}

abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

abstract class $RegisterEventEmailChangedCopyWith<$Res> {
  factory $RegisterEventEmailChangedCopyWith(RegisterEventEmailChanged value,
          $Res Function(RegisterEventEmailChanged) then) =
      _$RegisterEventEmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$RegisterEventEmailChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventEmailChangedCopyWith<$Res> {
  _$RegisterEventEmailChangedCopyWithImpl(RegisterEventEmailChanged _value,
      $Res Function(RegisterEventEmailChanged) _then)
      : super(_value, (v) => _then(v as RegisterEventEmailChanged));

  @override
  RegisterEventEmailChanged get _value =>
      super._value as RegisterEventEmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(RegisterEventEmailChanged(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

class _$RegisterEventEmailChanged implements RegisterEventEmailChanged {
  const _$RegisterEventEmailChanged({this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterEventEmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $RegisterEventEmailChangedCopyWith<RegisterEventEmailChanged> get copyWith =>
      _$RegisterEventEmailChangedCopyWithImpl<RegisterEventEmailChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required
        Result submitted(String email, String password, String firstName,
            String lastName, String phoneNo),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result submitted(String email, String password, String firstName,
        String lastName, String phoneNo),
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
    @required Result emailChanged(RegisterEventEmailChanged value),
    @required Result passwordChanged(RegisterEventPasswordChanged value),
    @required Result firstNameChanged(RegisterEventFirstNameChanged value),
    @required Result lastNameChanged(RegisterEventLastNameChanged value),
    @required Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    @required Result submitted(RegisterEventSubmitted value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(RegisterEventEmailChanged value),
    Result passwordChanged(RegisterEventPasswordChanged value),
    Result firstNameChanged(RegisterEventFirstNameChanged value),
    Result lastNameChanged(RegisterEventLastNameChanged value),
    Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    Result submitted(RegisterEventSubmitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterEventEmailChanged implements RegisterEvent {
  const factory RegisterEventEmailChanged({String email}) =
      _$RegisterEventEmailChanged;

  String get email;
  $RegisterEventEmailChangedCopyWith<RegisterEventEmailChanged> get copyWith;
}

abstract class $RegisterEventPasswordChangedCopyWith<$Res> {
  factory $RegisterEventPasswordChangedCopyWith(
          RegisterEventPasswordChanged value,
          $Res Function(RegisterEventPasswordChanged) then) =
      _$RegisterEventPasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$RegisterEventPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventPasswordChangedCopyWith<$Res> {
  _$RegisterEventPasswordChangedCopyWithImpl(
      RegisterEventPasswordChanged _value,
      $Res Function(RegisterEventPasswordChanged) _then)
      : super(_value, (v) => _then(v as RegisterEventPasswordChanged));

  @override
  RegisterEventPasswordChanged get _value =>
      super._value as RegisterEventPasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(RegisterEventPasswordChanged(
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$RegisterEventPasswordChanged implements RegisterEventPasswordChanged {
  const _$RegisterEventPasswordChanged({this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterEventPasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $RegisterEventPasswordChangedCopyWith<RegisterEventPasswordChanged>
      get copyWith => _$RegisterEventPasswordChangedCopyWithImpl<
          RegisterEventPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required
        Result submitted(String email, String password, String firstName,
            String lastName, String phoneNo),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result submitted(String email, String password, String firstName,
        String lastName, String phoneNo),
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
    @required Result emailChanged(RegisterEventEmailChanged value),
    @required Result passwordChanged(RegisterEventPasswordChanged value),
    @required Result firstNameChanged(RegisterEventFirstNameChanged value),
    @required Result lastNameChanged(RegisterEventLastNameChanged value),
    @required Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    @required Result submitted(RegisterEventSubmitted value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(RegisterEventEmailChanged value),
    Result passwordChanged(RegisterEventPasswordChanged value),
    Result firstNameChanged(RegisterEventFirstNameChanged value),
    Result lastNameChanged(RegisterEventLastNameChanged value),
    Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    Result submitted(RegisterEventSubmitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterEventPasswordChanged implements RegisterEvent {
  const factory RegisterEventPasswordChanged({String password}) =
      _$RegisterEventPasswordChanged;

  String get password;
  $RegisterEventPasswordChangedCopyWith<RegisterEventPasswordChanged>
      get copyWith;
}

abstract class $RegisterEventFirstNameChangedCopyWith<$Res> {
  factory $RegisterEventFirstNameChangedCopyWith(
          RegisterEventFirstNameChanged value,
          $Res Function(RegisterEventFirstNameChanged) then) =
      _$RegisterEventFirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstName});
}

class _$RegisterEventFirstNameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventFirstNameChangedCopyWith<$Res> {
  _$RegisterEventFirstNameChangedCopyWithImpl(
      RegisterEventFirstNameChanged _value,
      $Res Function(RegisterEventFirstNameChanged) _then)
      : super(_value, (v) => _then(v as RegisterEventFirstNameChanged));

  @override
  RegisterEventFirstNameChanged get _value =>
      super._value as RegisterEventFirstNameChanged;

  @override
  $Res call({
    Object firstName = freezed,
  }) {
    return _then(RegisterEventFirstNameChanged(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
    ));
  }
}

class _$RegisterEventFirstNameChanged implements RegisterEventFirstNameChanged {
  const _$RegisterEventFirstNameChanged({this.firstName});

  @override
  final String firstName;

  @override
  String toString() {
    return 'RegisterEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterEventFirstNameChanged &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstName);

  @override
  $RegisterEventFirstNameChangedCopyWith<RegisterEventFirstNameChanged>
      get copyWith => _$RegisterEventFirstNameChangedCopyWithImpl<
          RegisterEventFirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required
        Result submitted(String email, String password, String firstName,
            String lastName, String phoneNo),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result submitted(String email, String password, String firstName,
        String lastName, String phoneNo),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(RegisterEventEmailChanged value),
    @required Result passwordChanged(RegisterEventPasswordChanged value),
    @required Result firstNameChanged(RegisterEventFirstNameChanged value),
    @required Result lastNameChanged(RegisterEventLastNameChanged value),
    @required Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    @required Result submitted(RegisterEventSubmitted value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(RegisterEventEmailChanged value),
    Result passwordChanged(RegisterEventPasswordChanged value),
    Result firstNameChanged(RegisterEventFirstNameChanged value),
    Result lastNameChanged(RegisterEventLastNameChanged value),
    Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    Result submitted(RegisterEventSubmitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterEventFirstNameChanged implements RegisterEvent {
  const factory RegisterEventFirstNameChanged({String firstName}) =
      _$RegisterEventFirstNameChanged;

  String get firstName;
  $RegisterEventFirstNameChangedCopyWith<RegisterEventFirstNameChanged>
      get copyWith;
}

abstract class $RegisterEventLastNameChangedCopyWith<$Res> {
  factory $RegisterEventLastNameChangedCopyWith(
          RegisterEventLastNameChanged value,
          $Res Function(RegisterEventLastNameChanged) then) =
      _$RegisterEventLastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastName});
}

class _$RegisterEventLastNameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventLastNameChangedCopyWith<$Res> {
  _$RegisterEventLastNameChangedCopyWithImpl(
      RegisterEventLastNameChanged _value,
      $Res Function(RegisterEventLastNameChanged) _then)
      : super(_value, (v) => _then(v as RegisterEventLastNameChanged));

  @override
  RegisterEventLastNameChanged get _value =>
      super._value as RegisterEventLastNameChanged;

  @override
  $Res call({
    Object lastName = freezed,
  }) {
    return _then(RegisterEventLastNameChanged(
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

class _$RegisterEventLastNameChanged implements RegisterEventLastNameChanged {
  const _$RegisterEventLastNameChanged({this.lastName});

  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterEventLastNameChanged &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastName);

  @override
  $RegisterEventLastNameChangedCopyWith<RegisterEventLastNameChanged>
      get copyWith => _$RegisterEventLastNameChangedCopyWithImpl<
          RegisterEventLastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required
        Result submitted(String email, String password, String firstName,
            String lastName, String phoneNo),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result submitted(String email, String password, String firstName,
        String lastName, String phoneNo),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(RegisterEventEmailChanged value),
    @required Result passwordChanged(RegisterEventPasswordChanged value),
    @required Result firstNameChanged(RegisterEventFirstNameChanged value),
    @required Result lastNameChanged(RegisterEventLastNameChanged value),
    @required Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    @required Result submitted(RegisterEventSubmitted value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(RegisterEventEmailChanged value),
    Result passwordChanged(RegisterEventPasswordChanged value),
    Result firstNameChanged(RegisterEventFirstNameChanged value),
    Result lastNameChanged(RegisterEventLastNameChanged value),
    Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    Result submitted(RegisterEventSubmitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterEventLastNameChanged implements RegisterEvent {
  const factory RegisterEventLastNameChanged({String lastName}) =
      _$RegisterEventLastNameChanged;

  String get lastName;
  $RegisterEventLastNameChangedCopyWith<RegisterEventLastNameChanged>
      get copyWith;
}

abstract class $RegisterEventPhoneNumberChangedCopyWith<$Res> {
  factory $RegisterEventPhoneNumberChangedCopyWith(
          RegisterEventPhoneNumberChanged value,
          $Res Function(RegisterEventPhoneNumberChanged) then) =
      _$RegisterEventPhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

class _$RegisterEventPhoneNumberChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventPhoneNumberChangedCopyWith<$Res> {
  _$RegisterEventPhoneNumberChangedCopyWithImpl(
      RegisterEventPhoneNumberChanged _value,
      $Res Function(RegisterEventPhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as RegisterEventPhoneNumberChanged));

  @override
  RegisterEventPhoneNumberChanged get _value =>
      super._value as RegisterEventPhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumber = freezed,
  }) {
    return _then(RegisterEventPhoneNumberChanged(
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

class _$RegisterEventPhoneNumberChanged
    implements RegisterEventPhoneNumberChanged {
  const _$RegisterEventPhoneNumberChanged({this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterEventPhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @override
  $RegisterEventPhoneNumberChangedCopyWith<RegisterEventPhoneNumberChanged>
      get copyWith => _$RegisterEventPhoneNumberChangedCopyWithImpl<
          RegisterEventPhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required
        Result submitted(String email, String password, String firstName,
            String lastName, String phoneNo),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result submitted(String email, String password, String firstName,
        String lastName, String phoneNo),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(RegisterEventEmailChanged value),
    @required Result passwordChanged(RegisterEventPasswordChanged value),
    @required Result firstNameChanged(RegisterEventFirstNameChanged value),
    @required Result lastNameChanged(RegisterEventLastNameChanged value),
    @required Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    @required Result submitted(RegisterEventSubmitted value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(RegisterEventEmailChanged value),
    Result passwordChanged(RegisterEventPasswordChanged value),
    Result firstNameChanged(RegisterEventFirstNameChanged value),
    Result lastNameChanged(RegisterEventLastNameChanged value),
    Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    Result submitted(RegisterEventSubmitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterEventPhoneNumberChanged implements RegisterEvent {
  const factory RegisterEventPhoneNumberChanged({String phoneNumber}) =
      _$RegisterEventPhoneNumberChanged;

  String get phoneNumber;
  $RegisterEventPhoneNumberChangedCopyWith<RegisterEventPhoneNumberChanged>
      get copyWith;
}

abstract class $RegisterEventSubmittedCopyWith<$Res> {
  factory $RegisterEventSubmittedCopyWith(RegisterEventSubmitted value,
          $Res Function(RegisterEventSubmitted) then) =
      _$RegisterEventSubmittedCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String firstName,
      String lastName,
      String phoneNo});
}

class _$RegisterEventSubmittedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventSubmittedCopyWith<$Res> {
  _$RegisterEventSubmittedCopyWithImpl(RegisterEventSubmitted _value,
      $Res Function(RegisterEventSubmitted) _then)
      : super(_value, (v) => _then(v as RegisterEventSubmitted));

  @override
  RegisterEventSubmitted get _value => super._value as RegisterEventSubmitted;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object phoneNo = freezed,
  }) {
    return _then(RegisterEventSubmitted(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      phoneNo: phoneNo == freezed ? _value.phoneNo : phoneNo as String,
    ));
  }
}

class _$RegisterEventSubmitted implements RegisterEventSubmitted {
  const _$RegisterEventSubmitted(
      {this.email, this.password, this.firstName, this.lastName, this.phoneNo});

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNo;

  @override
  String toString() {
    return 'RegisterEvent.submitted(email: $email, password: $password, firstName: $firstName, lastName: $lastName, phoneNo: $phoneNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterEventSubmitted &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.phoneNo, phoneNo) ||
                const DeepCollectionEquality().equals(other.phoneNo, phoneNo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(phoneNo);

  @override
  $RegisterEventSubmittedCopyWith<RegisterEventSubmitted> get copyWith =>
      _$RegisterEventSubmittedCopyWithImpl<RegisterEventSubmitted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result firstNameChanged(String firstName),
    @required Result lastNameChanged(String lastName),
    @required Result phoneNumberChanged(String phoneNumber),
    @required
        Result submitted(String email, String password, String firstName,
            String lastName, String phoneNo),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return submitted(email, password, firstName, lastName, phoneNo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result firstNameChanged(String firstName),
    Result lastNameChanged(String lastName),
    Result phoneNumberChanged(String phoneNumber),
    Result submitted(String email, String password, String firstName,
        String lastName, String phoneNo),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(email, password, firstName, lastName, phoneNo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(RegisterEventEmailChanged value),
    @required Result passwordChanged(RegisterEventPasswordChanged value),
    @required Result firstNameChanged(RegisterEventFirstNameChanged value),
    @required Result lastNameChanged(RegisterEventLastNameChanged value),
    @required Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    @required Result submitted(RegisterEventSubmitted value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(phoneNumberChanged != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(RegisterEventEmailChanged value),
    Result passwordChanged(RegisterEventPasswordChanged value),
    Result firstNameChanged(RegisterEventFirstNameChanged value),
    Result lastNameChanged(RegisterEventLastNameChanged value),
    Result phoneNumberChanged(RegisterEventPhoneNumberChanged value),
    Result submitted(RegisterEventSubmitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class RegisterEventSubmitted implements RegisterEvent {
  const factory RegisterEventSubmitted(
      {String email,
      String password,
      String firstName,
      String lastName,
      String phoneNo}) = _$RegisterEventSubmitted;

  String get email;
  String get password;
  String get firstName;
  String get lastName;
  String get phoneNo;
  $RegisterEventSubmittedCopyWith<RegisterEventSubmitted> get copyWith;
}

class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {@required bool isEmailValid,
      @required bool isPasswordValid,
      @required bool isFirstNameValid,
      @required bool isLastNameValid,
      @required bool isPhoneNumberValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _RegisterState(
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
      isFirstNameValid: isFirstNameValid,
      isLastNameValid: isLastNameValid,
      isPhoneNumberValid: isPhoneNumberValid,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $RegisterState = _$RegisterStateTearOff();

mixin _$RegisterState {
  bool get isEmailValid;
  bool get isPasswordValid;
  bool get isFirstNameValid;
  bool get isLastNameValid;
  bool get isPhoneNumberValid;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $RegisterStateCopyWith<RegisterState> get copyWith;
}

abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {bool isEmailValid,
      bool isPasswordValid,
      bool isFirstNameValid,
      bool isLastNameValid,
      bool isPhoneNumberValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object isEmailValid = freezed,
    Object isPasswordValid = freezed,
    Object isFirstNameValid = freezed,
    Object isLastNameValid = freezed,
    Object isPhoneNumberValid = freezed,
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
      isFirstNameValid: isFirstNameValid == freezed
          ? _value.isFirstNameValid
          : isFirstNameValid as bool,
      isLastNameValid: isLastNameValid == freezed
          ? _value.isLastNameValid
          : isLastNameValid as bool,
      isPhoneNumberValid: isPhoneNumberValid == freezed
          ? _value.isPhoneNumberValid
          : isPhoneNumberValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isEmailValid,
      bool isPasswordValid,
      bool isFirstNameValid,
      bool isLastNameValid,
      bool isPhoneNumberValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object isEmailValid = freezed,
    Object isPasswordValid = freezed,
    Object isFirstNameValid = freezed,
    Object isLastNameValid = freezed,
    Object isPhoneNumberValid = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_RegisterState(
      isEmailValid:
          isEmailValid == freezed ? _value.isEmailValid : isEmailValid as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid as bool,
      isFirstNameValid: isFirstNameValid == freezed
          ? _value.isFirstNameValid
          : isFirstNameValid as bool,
      isLastNameValid: isLastNameValid == freezed
          ? _value.isLastNameValid
          : isLastNameValid as bool,
      isPhoneNumberValid: isPhoneNumberValid == freezed
          ? _value.isPhoneNumberValid
          : isPhoneNumberValid as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_RegisterState extends _RegisterState {
  const _$_RegisterState(
      {@required this.isEmailValid,
      @required this.isPasswordValid,
      @required this.isFirstNameValid,
      @required this.isLastNameValid,
      @required this.isPhoneNumberValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(isEmailValid != null),
        assert(isPasswordValid != null),
        assert(isFirstNameValid != null),
        assert(isLastNameValid != null),
        assert(isPhoneNumberValid != null),
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
  final bool isFirstNameValid;
  @override
  final bool isLastNameValid;
  @override
  final bool isPhoneNumberValid;
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
    return 'RegisterState(isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isFirstNameValid: $isFirstNameValid, isLastNameValid: $isLastNameValid, isPhoneNumberValid: $isPhoneNumberValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordValid, isPasswordValid)) &&
            (identical(other.isFirstNameValid, isFirstNameValid) ||
                const DeepCollectionEquality()
                    .equals(other.isFirstNameValid, isFirstNameValid)) &&
            (identical(other.isLastNameValid, isLastNameValid) ||
                const DeepCollectionEquality()
                    .equals(other.isLastNameValid, isLastNameValid)) &&
            (identical(other.isPhoneNumberValid, isPhoneNumberValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPhoneNumberValid, isPhoneNumberValid)) &&
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
      const DeepCollectionEquality().hash(isFirstNameValid) ^
      const DeepCollectionEquality().hash(isLastNameValid) ^
      const DeepCollectionEquality().hash(isPhoneNumberValid) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState extends RegisterState {
  const _RegisterState._() : super._();
  const factory _RegisterState(
      {@required bool isEmailValid,
      @required bool isPasswordValid,
      @required bool isFirstNameValid,
      @required bool isLastNameValid,
      @required bool isPhoneNumberValid,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_RegisterState;

  @override
  bool get isEmailValid;
  @override
  bool get isPasswordValid;
  @override
  bool get isFirstNameValid;
  @override
  bool get isLastNameValid;
  @override
  bool get isPhoneNumberValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith;
}
