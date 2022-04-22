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
