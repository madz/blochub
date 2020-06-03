part of 'navigation_bloc.dart';

@freezed
abstract class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.explore() = NavigationEventExplore;
  const factory NavigationEvent.saved() = NavigationEventSaved;
  const factory NavigationEvent.contribute() = NavigationEventContribute;
  const factory NavigationEvent.inbox() = NavigationEventInbox;
  const factory NavigationEvent.profile() = NavigationEventProfile;
}
