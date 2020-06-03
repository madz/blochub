part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState.explore(int index) = NavigationStateExplore;
  const factory NavigationState.saved(int index) = NavigationStateSaved;
  const factory NavigationState.contribute(int index) =
      NavigationStateContribute;
  const factory NavigationState.inbox(int index) = NavigationStateInbox;
  const factory NavigationState.profile(int index) = NavigationStateProfile;
}
