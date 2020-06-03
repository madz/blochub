import 'package:equatable/equatable.dart';

///state for inbox screen
abstract class InboxState extends Equatable {
  ///create InboxState
  const InboxState();
}

///initial inbox state
class InitialInboxState extends InboxState {
  @override
  List<Object> get props => [];
}
