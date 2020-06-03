part of 'google_map_bloc.dart';

@freezed
abstract class GoogleMapEvent with _$GoogleMapEvent {
  const factory GoogleMapEvent.getCurrentLocationEvent() =
      GoogleMapEventGetCurrentLocationEvent;

  const factory GoogleMapEvent.getPropertyLocationEvent() =
      GoogleMapEventGetPropertytLocationEvent;
}
