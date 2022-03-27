part of 'map_cubit.dart';

@immutable
abstract class MapState {}

class MapInitial extends MapState {}

class ConnectivityOnlineState extends MapState {}

class ConnectivityOfflineState extends MapState {}

//===============================================================
class GetMyAddressNameLoading extends MapState {}

class GetMyAddressNameSuccess extends MapState {}

//===============================================================
class UpdatedMarker extends MapState {
  final LatLng? updatedMarkerPosition;

  UpdatedMarker({required this.updatedMarkerPosition});
} //===============================================================

class LocationLoading extends MapState {}

class LocationSuccess extends MapState {
  final Position position;

  LocationSuccess({required this.position});
}

class LocationError extends MapState {}
//===============================================================

class LocationIsEnabled extends MapState {}

class LocationIsDisable extends MapState {}
