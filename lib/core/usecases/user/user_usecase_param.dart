import 'package:blochub/core/models/user_model.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class ParamUserModel extends Equatable {
  final UserModel userModel;
  ParamUserModel({@required this.userModel});
  @override
  List<Object> get props => [userModel];
}

class ParamEmail extends Equatable {
  final String email;
  ParamEmail({@required this.email});
  @override
  List<Object> get props => [email];
}

class ParamUid extends Equatable {
  final String uid;
  ParamUid({@required this.uid});
  @override
  List<Object> get props => [uid];
}
