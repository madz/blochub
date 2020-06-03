part of 'explore_bloc.dart';

@freezed
abstract class ExploreState with _$ExploreState {
  const factory ExploreState.initial() = ExploreStateInitial;
}
