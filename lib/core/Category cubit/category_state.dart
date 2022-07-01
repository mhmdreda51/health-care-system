part of 'category_cubit.dart';

@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class SpecificationSelectedItem extends CategoryState {}

class FindHospitalFilterDoctorListLoading extends CategoryState {}

class FindHospitalFilterDoctorListSuccess extends CategoryState {}

class AppDropdownInputOnChanged extends CategoryState {}

class FilterDoctorListLoading extends CategoryState {}

class FilterDoctorListSuccess extends CategoryState {}

class FilterLapsListLoading extends CategoryState {}

class FilterLapsListSuccess extends CategoryState {}

class FilterPharmacyListLoading extends CategoryState {}

class FilterPharmacyListSuccess extends CategoryState {}
