import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'explore_bloc.freezed.dart';
part 'explore_event.dart';
part 'explore_state.dart';

@lazySingleton
class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  @override
  // TODO: implement initialState
  ExploreState get initialState => ExploreState.initial();

  @override
  Stream<ExploreState> mapEventToState(ExploreEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
