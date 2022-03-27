import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

import '../../../core/connectivity helper/connectivity_helper.dart';
import '../../../core/locationHelper/location_helper.dart';

part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(MapInitial());

  static MapCubit get(context) => BlocProvider.of(context);

//===============================================================
  Position? position;
  Map<String, dynamic>? errorMap;
  late bool isConnected;
  String myLocation = "";
  StreamController<ConnectivityStatus> connectivityStream =
      ConnectivityHelper().connectionStatusController;

//===============================================================
  @override
  Future<void> close() {
    connectivityStream.close();
    return super.close();
  }

  //===============================================================

  void getMyAddressName() async {
    emit(GetMyAddressNameLoading());
    List<Placemark> placemarks = await placemarkFromCoordinates(
      position!.latitude,
      position!.longitude,
    );
    Placemark place1 = placemarks[0];
    myLocation = "${place1.name} ${place1.subAdministrativeArea} ";
    emit(GetMyAddressNameSuccess());

    print(myLocation);
  }

  //===============================================================
  Future<void> checkConnectivity() async {
    connectivityStream.stream.asBroadcastStream().listen((status) {
      if (status == ConnectivityStatus.offline) {
        isConnected = false;
        emit(ConnectivityOfflineState());
      } else {
        isConnected = true;
        emit(ConnectivityOnlineState());
      }
    });
  }

  //===============================================================

  Future<Position?> getCurrentLocation() async {
    emit(LocationLoading());
    try {
      position = await LocationHelper.getCurrentLocation().whenComplete(() {});

      emit(LocationSuccess(position: position!));

      return position!;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(LocationError());
    }
  }

  //===============================================================

  updateMarkerPosition({required LatLng updatedMarkerPosition}) async {
    emit(UpdatedMarker(updatedMarkerPosition: updatedMarkerPosition));
  }

//===============================================================
}
