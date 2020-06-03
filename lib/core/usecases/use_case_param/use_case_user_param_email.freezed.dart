// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'use_case_user_param_email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseUserParamEmailTearOff {
  const _$UseCaseUserParamEmailTearOff();

  UseCaseUserParamEmailInit init(String email) {
    return UseCaseUserParamEmailInit(
      email,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamEmail = _$UseCaseUserParamEmailTearOff();

mixin _$UseCaseUserParamEmail {
  String get email;

  $UseCaseUserParamEmailCopyWith<UseCaseUserParamEmail> get copyWith;
}

abstract class $UseCaseUserParamEmailCopyWith<$Res> {
  factory $UseCaseUserParamEmailCopyWith(UseCaseUserParamEmail value,
          $Res Function(UseCaseUserParamEmail) then) =
      _$UseCaseUserParamEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$UseCaseUserParamEmailCopyWithImpl<$Res>
    implements $UseCaseUserParamEmailCopyWith<$Res> {
  _$UseCaseUserParamEmailCopyWithImpl(this._value, this._then);

  final UseCaseUserParamEmail _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamEmail) _then;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

abstract class $UseCaseUserParamEmailInitCopyWith<$Res>
    implements $UseCaseUserParamEmailCopyWith<$Res> {
  factory $UseCaseUserParamEmailInitCopyWith(UseCaseUserParamEmailInit value,
          $Res Function(UseCaseUserParamEmailInit) then) =
      _$UseCaseUserParamEmailInitCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

class _$UseCaseUserParamEmailInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamEmailCopyWithImpl<$Res>
    implements $UseCaseUserParamEmailInitCopyWith<$Res> {
  _$UseCaseUserParamEmailInitCopyWithImpl(UseCaseUserParamEmailInit _value,
      $Res Function(UseCaseUserParamEmailInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserParamEmailInit));

  @override
  UseCaseUserParamEmailInit get _value =>
      super._value as UseCaseUserParamEmailInit;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(UseCaseUserParamEmailInit(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$UseCaseUserParamEmailInit implements UseCaseUserParamEmailInit {
  const _$UseCaseUserParamEmailInit(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'UseCaseUserParamEmail.init(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamEmailInit &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $UseCaseUserParamEmailInitCopyWith<UseCaseUserParamEmailInit> get copyWith =>
      _$UseCaseUserParamEmailInitCopyWithImpl<UseCaseUserParamEmailInit>(
          this, _$identity);
}

abstract class UseCaseUserParamEmailInit implements UseCaseUserParamEmail {
  const factory UseCaseUserParamEmailInit(String email) =
      _$UseCaseUserParamEmailInit;

  @override
  String get email;
  @override
  $UseCaseUserParamEmailInitCopyWith<UseCaseUserParamEmailInit> get copyWith;
}
