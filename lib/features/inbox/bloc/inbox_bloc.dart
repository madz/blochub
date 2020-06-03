import 'dart:async';

import 'package:bloc/bloc.dart';

import 'bloc.dart';

///bloc for inbox
class InboxBloc extends Bloc<InboxEvent, InboxState> {
  @override
  InboxState get initialState => InitialInboxState();

  @override
  Stream<InboxState> mapEventToState(
    InboxEvent event,
  ) async* {}
}
