// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'google_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GoogleMapEventTearOff {
  const _$GoogleMapEventTearOff();

  GoogleMapEventGetCurrentLocationEvent getCurrentLocationEvent() {
    return const GoogleMapEventGetCurrentLocationEvent();
  }

  GoogleMapEventGetPropertytLocationEvent getPropertyLocationEvent() {
    return const GoogleMapEventGetPropertytLocationEvent();
  }
}

// ignore: unused_element
const $GoogleMapEvent = _$GoogleMapEventTearOff();

mixin _$GoogleMapEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCurrentLocationEvent(),
    @required Result getPropertyLocationEvent(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCurrentLocationEvent(),
    Result getPropertyLocationEvent(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getCurrentLocationEvent(
            GoogleMapEventGetCurrentLocationEvent value),
    @required
        Result getPropertyLocationEvent(
            GoogleMapEventGetPropertytLocationEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCurrentLocationEvent(GoogleMapEventGetCurrentLocationEvent value),
    Result getPropertyLocationEvent(
        GoogleMapEventGetPropertytLocationEvent value),
    @required Result orElse(),
  });
}

abstract class $GoogleMapEventCopyWith<$Res> {
  factory $GoogleMapEventCopyWith(
          GoogleMapEvent value, $Res Function(GoogleMapEvent) then) =
      _$GoogleMapEventCopyWithImpl<$Res>;
}

class _$GoogleMapEventCopyWithImpl<$Res>
    implements $GoogleMapEventCopyWith<$Res> {
  _$GoogleMapEventCopyWithImpl(this._value, this._then);

  final GoogleMapEvent _value;
  // ignore: unused_field
  final $Res Function(GoogleMapEvent) _then;
}

abstract class $GoogleMapEventGetCurrentLocationEventCopyWith<$Res> {
  factory $GoogleMapEventGetCurrentLocationEventCopyWith(
          GoogleMapEventGetCurrentLocationEvent value,
          $Res Function(GoogleMapEventGetCurrentLocationEvent) then) =
      _$GoogleMapEventGetCurrentLocationEventCopyWithImpl<$Res>;
}

class _$GoogleMapEventGetCurrentLocationEventCopyWithImpl<$Res>
    extends _$GoogleMapEventCopyWithImpl<$Res>
    implements $GoogleMapEventGetCurrentLocationEventCopyWith<$Res> {
  _$GoogleMapEventGetCurrentLocationEventCopyWithImpl(
      GoogleMapEventGetCurrentLocationEvent _value,
      $Res Function(GoogleMapEventGetCurrentLocationEvent) _then)
      : super(_value, (v) => _then(v as GoogleMapEventGetCurrentLocationEvent));

  @override
  GoogleMapEventGetCurrentLocationEvent get _value =>
      super._value as GoogleMapEventGetCurrentLocationEvent;
}

class _$GoogleMapEventGetCurrentLocationEvent
    with DiagnosticableTreeMixin
    implements GoogleMapEventGetCurrentLocationEvent {
  const _$GoogleMapEventGetCurrentLocationEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GoogleMapEvent.getCurrentLocationEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'GoogleMapEvent.getCurrentLocationEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GoogleMapEventGetCurrentLocationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCurrentLocationEvent(),
    @required Result getPropertyLocationEvent(),
  }) {
    assert(getCurrentLocationEvent != null);
    assert(getPropertyLocationEvent != null);
    return getCurrentLocationEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCurrentLocationEvent(),
    Result getPropertyLocationEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentLocationEvent != null) {
      return getCurrentLocationEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getCurrentLocationEvent(
            GoogleMapEventGetCurrentLocationEvent value),
    @required
        Result getPropertyLocationEvent(
            GoogleMapEventGetPropertytLocationEvent value),
  }) {
    assert(getCurrentLocationEvent != null);
    assert(getPropertyLocationEvent != null);
    return getCurrentLocationEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCurrentLocationEvent(GoogleMapEventGetCurrentLocationEvent value),
    Result getPropertyLocationEvent(
        GoogleMapEventGetPropertytLocationEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentLocationEvent != null) {
      return getCurrentLocationEvent(this);
    }
    return orElse();
  }
}

abstract class GoogleMapEventGetCurrentLocationEvent implements GoogleMapEvent {
  const factory GoogleMapEventGetCurrentLocationEvent() =
      _$GoogleMapEventGetCurrentLocationEvent;
}

abstract class $GoogleMapEventGetPropertytLocationEventCopyWith<$Res> {
  factory $GoogleMapEventGetPropertytLocationEventCopyWith(
          GoogleMapEventGetPropertytLocationEvent value,
          $Res Function(GoogleMapEventGetPropertytLocationEvent) then) =
      _$GoogleMapEventGetPropertytLocationEventCopyWithImpl<$Res>;
}

class _$GoogleMapEventGetPropertytLocationEventCopyWithImpl<$Res>
    extends _$GoogleMapEventCopyWithImpl<$Res>
    implements $GoogleMapEventGetPropertytLocationEventCopyWith<$Res> {
  _$GoogleMapEventGetPropertytLocationEventCopyWithImpl(
      GoogleMapEventGetPropertytLocationEvent _value,
      $Res Function(GoogleMapEventGetPropertytLocationEvent) _then)
      : super(
            _value, (v) => _then(v as GoogleMapEventGetPropertytLocationEvent));

  @override
  GoogleMapEventGetPropertytLocationEvent get _value =>
      super._value as GoogleMapEventGetPropertytLocationEvent;
}

class _$GoogleMapEventGetPropertytLocationEvent
    with DiagnosticableTreeMixin
    implements GoogleMapEventGetPropertytLocationEvent {
  const _$GoogleMapEventGetPropertytLocationEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GoogleMapEvent.getPropertyLocationEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'GoogleMapEvent.getPropertyLocationEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GoogleMapEventGetPropertytLocationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCurrentLocationEvent(),
    @required Result getPropertyLocationEvent(),
  }) {
    assert(getCurrentLocationEvent != null);
    assert(getPropertyLocationEvent != null);
    return getPropertyLocationEvent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCurrentLocationEvent(),
    Result getPropertyLocationEvent(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPropertyLocationEvent != null) {
      return getPropertyLocationEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getCurrentLocationEvent(
            GoogleMapEventGetCurrentLocationEvent value),
    @required
        Result getPropertyLocationEvent(
            GoogleMapEventGetPropertytLocationEvent value),
  }) {
    assert(getCurrentLocationEvent != null);
    assert(getPropertyLocationEvent != null);
    return getPropertyLocationEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCurrentLocationEvent(GoogleMapEventGetCurrentLocationEvent value),
    Result getPropertyLocationEvent(
        GoogleMapEventGetPropertytLocationEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getPropertyLocationEvent != null) {
      return getPropertyLocationEvent(this);
    }
    return orElse();
  }
}

abstract class GoogleMapEventGetPropertytLocationEvent
    implements GoogleMapEvent {
  const factory GoogleMapEventGetPropertytLocationEvent() =
      _$GoogleMapEventGetPropertytLocationEvent;
}

class _$GoogleMapStateTearOff {
  const _$GoogleMapStateTearOff();

  GoogleMapStateInitial initial() {
    return const GoogleMapStateInitial();
  }

  GoogleMapStateLoading loading() {
    return const GoogleMapStateLoading();
  }

  GoogleMapStateLoaded loaded(
      {CameraPosition cameraPosition,
      PermissionStatus permissionStatus,
      ServiceStatus serviceStatus}) {
    return GoogleMapStateLoaded(
      cameraPosition: cameraPosition,
      permissionStatus: permissionStatus,
      serviceStatus: serviceStatus,
    );
  }

  GoogleMapStateError error({String error}) {
    return GoogleMapStateError(
      error: error,
    );
  }
}

// ignore: unused_element
const $GoogleMapState = _$GoogleMapStateTearOff();

mixin _$GoogleMapState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(CameraPosition cameraPosition,
            PermissionStatus permissionStatus, ServiceStatus serviceStatus),
    @required Result error(String error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(CameraPosition cameraPosition,
        PermissionStatus permissionStatus, ServiceStatus serviceStatus),
    Result error(String error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(GoogleMapStateInitial value),
    @required Result loading(GoogleMapStateLoading value),
    @required Result loaded(GoogleMapStateLoaded value),
    @required Result error(GoogleMapStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(GoogleMapStateInitial value),
    Result loading(GoogleMapStateLoading value),
    Result loaded(GoogleMapStateLoaded value),
    Result error(GoogleMapStateError value),
    @required Result orElse(),
  });
}

abstract class $GoogleMapStateCopyWith<$Res> {
  factory $GoogleMapStateCopyWith(
          GoogleMapState value, $Res Function(GoogleMapState) then) =
      _$GoogleMapStateCopyWithImpl<$Res>;
}

class _$GoogleMapStateCopyWithImpl<$Res>
    implements $GoogleMapStateCopyWith<$Res> {
  _$GoogleMapStateCopyWithImpl(this._value, this._then);

  final GoogleMapState _value;
  // ignore: unused_field
  final $Res Function(GoogleMapState) _then;
}

abstract class $GoogleMapStateInitialCopyWith<$Res> {
  factory $GoogleMapStateInitialCopyWith(GoogleMapStateInitial value,
          $Res Function(GoogleMapStateInitial) then) =
      _$GoogleMapStateInitialCopyWithImpl<$Res>;
}

class _$GoogleMapStateInitialCopyWithImpl<$Res>
    extends _$GoogleMapStateCopyWithImpl<$Res>
    implements $GoogleMapStateInitialCopyWith<$Res> {
  _$GoogleMapStateInitialCopyWithImpl(
      GoogleMapStateInitial _value, $Res Function(GoogleMapStateInitial) _then)
      : super(_value, (v) => _then(v as GoogleMapStateInitial));

  @override
  GoogleMapStateInitial get _value => super._value as GoogleMapStateInitial;
}

class _$GoogleMapStateInitial
    with DiagnosticableTreeMixin
    implements GoogleMapStateInitial {
  const _$GoogleMapStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GoogleMapState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GoogleMapState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoogleMapStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(CameraPosition cameraPosition,
            PermissionStatus permissionStatus, ServiceStatus serviceStatus),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(CameraPosition cameraPosition,
        PermissionStatus permissionStatus, ServiceStatus serviceStatus),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(GoogleMapStateInitial value),
    @required Result loading(GoogleMapStateLoading value),
    @required Result loaded(GoogleMapStateLoaded value),
    @required Result error(GoogleMapStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(GoogleMapStateInitial value),
    Result loading(GoogleMapStateLoading value),
    Result loaded(GoogleMapStateLoaded value),
    Result error(GoogleMapStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GoogleMapStateInitial implements GoogleMapState {
  const factory GoogleMapStateInitial() = _$GoogleMapStateInitial;
}

abstract class $GoogleMapStateLoadingCopyWith<$Res> {
  factory $GoogleMapStateLoadingCopyWith(GoogleMapStateLoading value,
          $Res Function(GoogleMapStateLoading) then) =
      _$GoogleMapStateLoadingCopyWithImpl<$Res>;
}

class _$GoogleMapStateLoadingCopyWithImpl<$Res>
    extends _$GoogleMapStateCopyWithImpl<$Res>
    implements $GoogleMapStateLoadingCopyWith<$Res> {
  _$GoogleMapStateLoadingCopyWithImpl(
      GoogleMapStateLoading _value, $Res Function(GoogleMapStateLoading) _then)
      : super(_value, (v) => _then(v as GoogleMapStateLoading));

  @override
  GoogleMapStateLoading get _value => super._value as GoogleMapStateLoading;
}

class _$GoogleMapStateLoading
    with DiagnosticableTreeMixin
    implements GoogleMapStateLoading {
  const _$GoogleMapStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GoogleMapState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GoogleMapState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GoogleMapStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(CameraPosition cameraPosition,
            PermissionStatus permissionStatus, ServiceStatus serviceStatus),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(CameraPosition cameraPosition,
        PermissionStatus permissionStatus, ServiceStatus serviceStatus),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(GoogleMapStateInitial value),
    @required Result loading(GoogleMapStateLoading value),
    @required Result loaded(GoogleMapStateLoaded value),
    @required Result error(GoogleMapStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(GoogleMapStateInitial value),
    Result loading(GoogleMapStateLoading value),
    Result loaded(GoogleMapStateLoaded value),
    Result error(GoogleMapStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GoogleMapStateLoading implements GoogleMapState {
  const factory GoogleMapStateLoading() = _$GoogleMapStateLoading;
}

abstract class $GoogleMapStateLoadedCopyWith<$Res> {
  factory $GoogleMapStateLoadedCopyWith(GoogleMapStateLoaded value,
          $Res Function(GoogleMapStateLoaded) then) =
      _$GoogleMapStateLoadedCopyWithImpl<$Res>;
  $Res call(
      {CameraPosition cameraPosition,
      PermissionStatus permissionStatus,
      ServiceStatus serviceStatus});
}

class _$GoogleMapStateLoadedCopyWithImpl<$Res>
    extends _$GoogleMapStateCopyWithImpl<$Res>
    implements $GoogleMapStateLoadedCopyWith<$Res> {
  _$GoogleMapStateLoadedCopyWithImpl(
      GoogleMapStateLoaded _value, $Res Function(GoogleMapStateLoaded) _then)
      : super(_value, (v) => _then(v as GoogleMapStateLoaded));

  @override
  GoogleMapStateLoaded get _value => super._value as GoogleMapStateLoaded;

  @override
  $Res call({
    Object cameraPosition = freezed,
    Object permissionStatus = freezed,
    Object serviceStatus = freezed,
  }) {
    return _then(GoogleMapStateLoaded(
      cameraPosition: cameraPosition == freezed
          ? _value.cameraPosition
          : cameraPosition as CameraPosition,
      permissionStatus: permissionStatus == freezed
          ? _value.permissionStatus
          : permissionStatus as PermissionStatus,
      serviceStatus: serviceStatus == freezed
          ? _value.serviceStatus
          : serviceStatus as ServiceStatus,
    ));
  }
}

class _$GoogleMapStateLoaded
    with DiagnosticableTreeMixin
    implements GoogleMapStateLoaded {
  const _$GoogleMapStateLoaded(
      {this.cameraPosition, this.permissionStatus, this.serviceStatus});

  @override
  final CameraPosition cameraPosition;
  @override
  final PermissionStatus permissionStatus;
  @override
  final ServiceStatus serviceStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GoogleMapState.loaded(cameraPosition: $cameraPosition, permissionStatus: $permissionStatus, serviceStatus: $serviceStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GoogleMapState.loaded'))
      ..add(DiagnosticsProperty('cameraPosition', cameraPosition))
      ..add(DiagnosticsProperty('permissionStatus', permissionStatus))
      ..add(DiagnosticsProperty('serviceStatus', serviceStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GoogleMapStateLoaded &&
            (identical(other.cameraPosition, cameraPosition) ||
                const DeepCollectionEquality()
                    .equals(other.cameraPosition, cameraPosition)) &&
            (identical(other.permissionStatus, permissionStatus) ||
                const DeepCollectionEquality()
                    .equals(other.permissionStatus, permissionStatus)) &&
            (identical(other.serviceStatus, serviceStatus) ||
                const DeepCollectionEquality()
                    .equals(other.serviceStatus, serviceStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cameraPosition) ^
      const DeepCollectionEquality().hash(permissionStatus) ^
      const DeepCollectionEquality().hash(serviceStatus);

  @override
  $GoogleMapStateLoadedCopyWith<GoogleMapStateLoaded> get copyWith =>
      _$GoogleMapStateLoadedCopyWithImpl<GoogleMapStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(CameraPosition cameraPosition,
            PermissionStatus permissionStatus, ServiceStatus serviceStatus),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(cameraPosition, permissionStatus, serviceStatus);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(CameraPosition cameraPosition,
        PermissionStatus permissionStatus, ServiceStatus serviceStatus),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(cameraPosition, permissionStatus, serviceStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(GoogleMapStateInitial value),
    @required Result loading(GoogleMapStateLoading value),
    @required Result loaded(GoogleMapStateLoaded value),
    @required Result error(GoogleMapStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(GoogleMapStateInitial value),
    Result loading(GoogleMapStateLoading value),
    Result loaded(GoogleMapStateLoaded value),
    Result error(GoogleMapStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GoogleMapStateLoaded implements GoogleMapState {
  const factory GoogleMapStateLoaded(
      {CameraPosition cameraPosition,
      PermissionStatus permissionStatus,
      ServiceStatus serviceStatus}) = _$GoogleMapStateLoaded;

  CameraPosition get cameraPosition;
  PermissionStatus get permissionStatus;
  ServiceStatus get serviceStatus;
  $GoogleMapStateLoadedCopyWith<GoogleMapStateLoaded> get copyWith;
}

abstract class $GoogleMapStateErrorCopyWith<$Res> {
  factory $GoogleMapStateErrorCopyWith(
          GoogleMapStateError value, $Res Function(GoogleMapStateError) then) =
      _$GoogleMapStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

class _$GoogleMapStateErrorCopyWithImpl<$Res>
    extends _$GoogleMapStateCopyWithImpl<$Res>
    implements $GoogleMapStateErrorCopyWith<$Res> {
  _$GoogleMapStateErrorCopyWithImpl(
      GoogleMapStateError _value, $Res Function(GoogleMapStateError) _then)
      : super(_value, (v) => _then(v as GoogleMapStateError));

  @override
  GoogleMapStateError get _value => super._value as GoogleMapStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GoogleMapStateError(
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

class _$GoogleMapStateError
    with DiagnosticableTreeMixin
    implements GoogleMapStateError {
  const _$GoogleMapStateError({this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GoogleMapState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GoogleMapState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GoogleMapStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GoogleMapStateErrorCopyWith<GoogleMapStateError> get copyWith =>
      _$GoogleMapStateErrorCopyWithImpl<GoogleMapStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(CameraPosition cameraPosition,
            PermissionStatus permissionStatus, ServiceStatus serviceStatus),
    @required Result error(String error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(CameraPosition cameraPosition,
        PermissionStatus permissionStatus, ServiceStatus serviceStatus),
    Result error(String error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(GoogleMapStateInitial value),
    @required Result loading(GoogleMapStateLoading value),
    @required Result loaded(GoogleMapStateLoaded value),
    @required Result error(GoogleMapStateError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(GoogleMapStateInitial value),
    Result loading(GoogleMapStateLoading value),
    Result loaded(GoogleMapStateLoaded value),
    Result error(GoogleMapStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GoogleMapStateError implements GoogleMapState {
  const factory GoogleMapStateError({String error}) = _$GoogleMapStateError;

  String get error;
  $GoogleMapStateErrorCopyWith<GoogleMapStateError> get copyWith;
}
