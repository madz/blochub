// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'use_case_user_param_uid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseUserParamUidTearOff {
  const _$UseCaseUserParamUidTearOff();

  UseCaseUserParamUidInit init(String uid) {
    return UseCaseUserParamUidInit(
      uid,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamUid = _$UseCaseUserParamUidTearOff();

mixin _$UseCaseUserParamUid {
  String get uid;

  $UseCaseUserParamUidCopyWith<UseCaseUserParamUid> get copyWith;
}

abstract class $UseCaseUserParamUidCopyWith<$Res> {
  factory $UseCaseUserParamUidCopyWith(
          UseCaseUserParamUid value, $Res Function(UseCaseUserParamUid) then) =
      _$UseCaseUserParamUidCopyWithImpl<$Res>;
  $Res call({String uid});
}

class _$UseCaseUserParamUidCopyWithImpl<$Res>
    implements $UseCaseUserParamUidCopyWith<$Res> {
  _$UseCaseUserParamUidCopyWithImpl(this._value, this._then);

  final UseCaseUserParamUid _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamUid) _then;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

abstract class $UseCaseUserParamUidInitCopyWith<$Res>
    implements $UseCaseUserParamUidCopyWith<$Res> {
  factory $UseCaseUserParamUidInitCopyWith(UseCaseUserParamUidInit value,
          $Res Function(UseCaseUserParamUidInit) then) =
      _$UseCaseUserParamUidInitCopyWithImpl<$Res>;
  @override
  $Res call({String uid});
}

class _$UseCaseUserParamUidInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamUidCopyWithImpl<$Res>
    implements $UseCaseUserParamUidInitCopyWith<$Res> {
  _$UseCaseUserParamUidInitCopyWithImpl(UseCaseUserParamUidInit _value,
      $Res Function(UseCaseUserParamUidInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserParamUidInit));

  @override
  UseCaseUserParamUidInit get _value => super._value as UseCaseUserParamUidInit;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(UseCaseUserParamUidInit(
      uid == freezed ? _value.uid : uid as String,
    ));
  }
}

class _$UseCaseUserParamUidInit implements UseCaseUserParamUidInit {
  const _$UseCaseUserParamUidInit(this.uid) : assert(uid != null);

  @override
  final String uid;

  @override
  String toString() {
    return 'UseCaseUserParamUid.init(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamUidInit &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @override
  $UseCaseUserParamUidInitCopyWith<UseCaseUserParamUidInit> get copyWith =>
      _$UseCaseUserParamUidInitCopyWithImpl<UseCaseUserParamUidInit>(
          this, _$identity);
}

abstract class UseCaseUserParamUidInit implements UseCaseUserParamUid {
  const factory UseCaseUserParamUidInit(String uid) = _$UseCaseUserParamUidInit;

  @override
  String get uid;
  @override
  $UseCaseUserParamUidInitCopyWith<UseCaseUserParamUidInit> get copyWith;
}
