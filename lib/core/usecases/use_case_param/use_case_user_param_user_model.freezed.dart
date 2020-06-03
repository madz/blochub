// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'use_case_user_param_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UseCaseUserParamModelTearOff {
  const _$UseCaseUserParamModelTearOff();

  UseCaseUserParamModelInit init(UserModel userModel) {
    return UseCaseUserParamModelInit(
      userModel,
    );
  }
}

// ignore: unused_element
const $UseCaseUserParamModel = _$UseCaseUserParamModelTearOff();

mixin _$UseCaseUserParamModel {
  UserModel get userModel;

  $UseCaseUserParamModelCopyWith<UseCaseUserParamModel> get copyWith;
}

abstract class $UseCaseUserParamModelCopyWith<$Res> {
  factory $UseCaseUserParamModelCopyWith(UseCaseUserParamModel value,
          $Res Function(UseCaseUserParamModel) then) =
      _$UseCaseUserParamModelCopyWithImpl<$Res>;
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

class _$UseCaseUserParamModelCopyWithImpl<$Res>
    implements $UseCaseUserParamModelCopyWith<$Res> {
  _$UseCaseUserParamModelCopyWithImpl(this._value, this._then);

  final UseCaseUserParamModel _value;
  // ignore: unused_field
  final $Res Function(UseCaseUserParamModel) _then;

  @override
  $Res call({
    Object userModel = freezed,
  }) {
    return _then(_value.copyWith(
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get userModel {
    if (_value.userModel == null) {
      return null;
    }
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

abstract class $UseCaseUserParamModelInitCopyWith<$Res>
    implements $UseCaseUserParamModelCopyWith<$Res> {
  factory $UseCaseUserParamModelInitCopyWith(UseCaseUserParamModelInit value,
          $Res Function(UseCaseUserParamModelInit) then) =
      _$UseCaseUserParamModelInitCopyWithImpl<$Res>;
  @override
  $Res call({UserModel userModel});

  @override
  $UserModelCopyWith<$Res> get userModel;
}

class _$UseCaseUserParamModelInitCopyWithImpl<$Res>
    extends _$UseCaseUserParamModelCopyWithImpl<$Res>
    implements $UseCaseUserParamModelInitCopyWith<$Res> {
  _$UseCaseUserParamModelInitCopyWithImpl(UseCaseUserParamModelInit _value,
      $Res Function(UseCaseUserParamModelInit) _then)
      : super(_value, (v) => _then(v as UseCaseUserParamModelInit));

  @override
  UseCaseUserParamModelInit get _value =>
      super._value as UseCaseUserParamModelInit;

  @override
  $Res call({
    Object userModel = freezed,
  }) {
    return _then(UseCaseUserParamModelInit(
      userModel == freezed ? _value.userModel : userModel as UserModel,
    ));
  }
}

class _$UseCaseUserParamModelInit implements UseCaseUserParamModelInit {
  const _$UseCaseUserParamModelInit(this.userModel) : assert(userModel != null);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UseCaseUserParamModel.init(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseCaseUserParamModelInit &&
            (identical(other.userModel, userModel) ||
                const DeepCollectionEquality()
                    .equals(other.userModel, userModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userModel);

  @override
  $UseCaseUserParamModelInitCopyWith<UseCaseUserParamModelInit> get copyWith =>
      _$UseCaseUserParamModelInitCopyWithImpl<UseCaseUserParamModelInit>(
          this, _$identity);
}

abstract class UseCaseUserParamModelInit implements UseCaseUserParamModel {
  const factory UseCaseUserParamModelInit(UserModel userModel) =
      _$UseCaseUserParamModelInit;

  @override
  UserModel get userModel;
  @override
  $UseCaseUserParamModelInitCopyWith<UseCaseUserParamModelInit> get copyWith;
}
