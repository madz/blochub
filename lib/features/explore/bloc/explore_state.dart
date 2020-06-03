import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

///state for explore screen
abstract class ExploreState extends Equatable {
  ///create ExploreState
  const ExploreState();

  @override
  List<Object> get props => [];
}

///initial state for explore screen
class InitialExploreState extends ExploreState {
  @override
  List<Object> get props => [];
}

class ExploreLoadingState extends ExploreState {}

class ExploreLoadedState extends ExploreState {}

class ExploreErrorState extends ExploreState {
  final String error;
  ExploreErrorState({@required this.error});

  @override
  List<Object> get props => [error];
}
