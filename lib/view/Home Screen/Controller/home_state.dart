part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class ChangeCarouselIndex extends HomeState {}

class ChangeServicesById extends HomeState {}

class AppChangeBottomNavState extends HomeState {}

class CallAmpulanceSuccess extends HomeState {}

class ConnectivityOnlineState extends HomeState {}

class ConnectivityOfflineState extends HomeState {}

//===============================================================
class GetMyAddressNameLoading extends HomeState {}

class GetMyAddressNameSuccess extends HomeState {}

class GetMyAddressNameError extends HomeState {}

//===============================================================
//===============================================================

class LocationLoading extends HomeState {}

class LocationSuccess extends HomeState {
  final Position position;

  LocationSuccess({required this.position});
}

class LocationError extends HomeState {}
//===============================================================

class LocationIsEnabled extends HomeState {}

class LocationIsDisable extends HomeState {}
