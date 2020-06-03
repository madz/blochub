import 'dart:async';

import 'package:bloc/bloc.dart';

import 'bloc.dart';

/// a bloc for explore screen
class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  @override
  ExploreState get initialState => InitialExploreState();

  @override
  Stream<ExploreState> mapEventToState(
    ExploreEvent event,
  ) async* {}
}
