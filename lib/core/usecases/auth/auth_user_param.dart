import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class ParamEmailPassword extends Equatable {
  final String email;
  final String password;
  ParamEmailPassword({@required this.email, @required this.password});
  @override
  List<Object> get props => [email, password];
}

class ParamEmail extends Equatable {
  final String email;
  ParamEmail({@required this.email});
  @override
  List<Object> get props => [email];
}

class ParamProviderId extends Equatable {
  final String providerId;
  ParamProviderId({
    @required this.providerId,
  });
  @override
  List<Object> get props => [providerId];
}
