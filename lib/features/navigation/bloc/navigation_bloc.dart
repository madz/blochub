import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_bloc.freezed.dart';
part 'navigation_event.dart';
part 'navigation_state.dart';

/// Navigation Screen, this is the screen that loads after authentication screen
@lazySingleton
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  @override
  NavigationState get initialState => NavigationState.explore(0);

  @override
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    yield* event.map(
      explore: (e) async* {
        yield NavigationState.explore(0);
      },
      saved: (e) async* {
        yield NavigationState.saved(1);
      },
      contribute: (e) async* {
        yield NavigationState.contribute(2);
      },
      inbox: (e) async* {
        yield NavigationState.inbox(3);
      },
      profile: (e) async* {
        yield NavigationState.profile(4);
      },
    );
  }
}
