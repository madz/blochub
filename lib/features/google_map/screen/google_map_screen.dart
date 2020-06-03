import 'package:blochub/core/di/injector.dart';
import 'package:blochub/features/google_map/bloc/google_map_bloc.dart';
import 'package:blochub/features/google_map/widgets/place_holder_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location_permissions/location_permissions.dart';

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  GoogleMapController _mapController;
  List<Marker> _allMarkers = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoogleMapBloc, GoogleMapState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        loading: (_) => Center(
          child: LinearProgressIndicator(),
        ),
        loaded: (value) {
          if (value.serviceStatus != ServiceStatus.enabled) {
            return _buildLocationServiceToEnable();
          } else if (value.permissionStatus != PermissionStatus.granted) {
            return _buildGrantPermissionToUseLocation();
          } else {
            return _buildGoogleMap(state);
          }
        },
        error: (_) => Center(
          child: Text(
            'Something went wrong!',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }

  GoogleMap _buildGoogleMap(GoogleMapStateLoaded state) {
    return GoogleMap(
      mapType: MapType.normal,
      compassEnabled: true,
      tiltGesturesEnabled: false,
      initialCameraPosition: state.cameraPosition,
      onMapCreated: (GoogleMapController controller) {
        _mapController == controller;
      },
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      markers: Set.from(_allMarkers),
      mapToolbarEnabled: true,
      onLongPress: (LatLng latLng) {
        print('onLongPress');
        setState(() {
          _createMarkers(latLng);
        });
      },
    );
  }

  Center _buildLocationServiceToEnable() {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            'Need Location Service Enabled!',
            style: TextStyle(color: Colors.red),
          ),
          RaisedButton(
            child: Text('Turn on Location Service'),
            onPressed: () async {
              await LocationPermissions().openAppSettings();
            },
          )
        ],
      ),
    );
  }

  Center _buildGrantPermissionToUseLocation() {
    return Center(
      child: Column(
        children: <Widget>[
          PlaceHolderWidget(
            'Permission',
            'Need Permission to use location!',
          ),
          RaisedButton(
            child: Text('Grant permission to use location service'),
            onPressed: () async {
              getIt<GoogleMapBloc>()
                  .add(GoogleMapEvent.getCurrentLocationEvent());
            },
          )
        ],
      ),
    );
  }

  void _createMarkers(LatLng target) {
    _allMarkers.add(
      Marker(
        markerId: MarkerId('myMarkerId'),
        draggable: true,
        consumeTapEvents: true,
        position: target,
        visible: true,
        onTap: () {
          print('Marker tapped!');
        },
        onDragEnd: (LatLng latLng) {
          print('Marker position = ${latLng.latitude}');
        },
        infoWindow: InfoWindow(
          title: "Marker here",
          snippet: 'This looks good',
        ),
      ),
    );
  }
}
