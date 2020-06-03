part of 'google_map_bloc.dart';

@freezed
abstract class GoogleMapState with _$GoogleMapState {
  const factory GoogleMapState.initial() = GoogleMapStateInitial;
  const factory GoogleMapState.loading() = GoogleMapStateLoading;
  const factory GoogleMapState.loaded({
    CameraPosition cameraPosition,
    PermissionStatus permissionStatus,
    ServiceStatus serviceStatus,
  }) = GoogleMapStateLoaded;
  const factory GoogleMapState.error({String error}) = GoogleMapStateError;
}
