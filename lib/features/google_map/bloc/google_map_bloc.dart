import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:location_permissions/location_permissions.dart';

part 'google_map_bloc.freezed.dart';
part 'google_map_event.dart';
part 'google_map_state.dart';

@lazySingleton
class GoogleMapBloc extends Bloc<GoogleMapEvent, GoogleMapState> {
  final Geolocator geolocator;
  final LocationPermissions locationPermissions;
  GoogleMapBloc({
    @required this.geolocator,
    @required this.locationPermissions,
  });

  @override
  GoogleMapState get initialState => GoogleMapState.initial();

  @override
  Stream<GoogleMapState> mapEventToState(GoogleMapEvent event) async* {
    yield* event.map(
      getCurrentLocationEvent:
          (GoogleMapEventGetCurrentLocationEvent value) async* {
        yield GoogleMapState.loading();
        try {
          ServiceStatus serviceStatus =
              await locationPermissions.checkServiceStatus();

          PermissionStatus permissionStatus = PermissionStatus.unknown;
          CameraPosition cameraPosition;

          if (serviceStatus == ServiceStatus.enabled) {
            permissionStatus = await locationPermissions.requestPermissions();

            if (permissionStatus == PermissionStatus.granted) {
              Position position = await geolocator.getCurrentPosition(
                  desiredAccuracy: LocationAccuracy.bestForNavigation);

              cameraPosition = CameraPosition(
                target: LatLng(
                  position.latitude,
                  position.longitude,
                ),
                zoom: 20.0,
              );
            }
          }

          yield GoogleMapState.loaded(
            cameraPosition: cameraPosition,
            permissionStatus: permissionStatus,
            serviceStatus: serviceStatus,
          );
        } on PlatformException catch (e) {
          yield GoogleMapState.error(error: e.message);
        }
      },
      getPropertyLocationEvent:
          (GoogleMapEventGetPropertytLocationEvent value) async* {},
    );
  }
}
