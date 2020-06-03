import 'dart:async';

import 'package:bloc/bloc.dart';

import 'bloc.dart';

///bloc for saved screen
class SavedBloc extends Bloc<SavedEvent, SavedState> {
  @override
  SavedState get initialState => InitialSavedState();

  @override
  Stream<SavedState> mapEventToState(
    SavedEvent event,
  ) async* {}
}
