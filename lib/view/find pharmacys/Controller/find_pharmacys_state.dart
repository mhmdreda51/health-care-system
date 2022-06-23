part of 'find_pharmacys_cubit.dart';

@immutable
abstract class FindPharmacysState {}

class FindPharmacysInitial extends FindPharmacysState {}

class FindDoctorInitial extends FindPharmacysState {}

class AppDropdownInputOnChanged extends FindPharmacysState {}

class SpecificationSelectedItem extends FindPharmacysState {}

class FilterDoctorListLoading extends FindPharmacysState {}

class FilterDoctorListSuccess extends FindPharmacysState {}
