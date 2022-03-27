import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../constants/app_colors.dart';
import '../../core/locationHelper/location_helper.dart';
import 'componants/location_card.dart';
import 'componants/location_search_bar.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static Position? position;
  final Completer<GoogleMapController> _mapController = Completer();
  Marker? marker;
  LatLng? updatedMarkerPosition;

  //===============================================================
  static final CameraPosition _myCurrentLocationCameraPosition = CameraPosition(
      target: LatLng(position!.latitude, position!.longitude),
      bearing: 0.0,
      tilt: 0.0,
      zoom: 17.0);

  Future<void> getMyCurrentLocation() async {
    position = await LocationHelper.getCurrentLocation().whenComplete(() {
      setState(() {});
    });
    marker = Marker(
      markerId: const MarkerId('id'),
      position: LatLng(position!.latitude, position!.longitude),
    );
    updatedMarkerPosition = LatLng(position!.latitude, position!.longitude);
  }

  Future<void> _goToMyCurrentLocation() async {
    final GoogleMapController controller = await _mapController.future;
    controller.animateCamera(
        CameraUpdate.newCameraPosition(_myCurrentLocationCameraPosition));
    setState(() {
      marker = Marker(
          markerId: const MarkerId('id'),
          position: LatLng(position!.latitude, position!.longitude));
    });
  }

  Widget buildMap() {
    return GoogleMap(
      markers: marker == null ? {} : {marker!},
      onTap: (argument) {
        setState(() {
          marker = Marker(markerId: const MarkerId('id'), position: argument);
          updatedMarkerPosition = argument;
        });
      },
      initialCameraPosition: _myCurrentLocationCameraPosition,
      mapType: MapType.normal,
      myLocationEnabled: true,
      zoomControlsEnabled: false,
      myLocationButtonEnabled: false,
      onMapCreated: (GoogleMapController controller) {
        _mapController.complete(controller);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    getMyCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            position != null
                ? buildMap()
                : const Center(
                    child: CupertinoActivityIndicator(
                        animating: true, radius: 32.0),
                  ),
            const LocationSearchBar(),
            const LocationButton(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
        floatingActionButton: Container(
          width: 45,
          height: 45,
          margin: const EdgeInsets.fromLTRB(0, 12, 8, 0),
          child: FloatingActionButton(
            backgroundColor: AppColors.blueWhite,
            onPressed: _goToMyCurrentLocation,
            child: const Icon(Icons.location_on_outlined, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
