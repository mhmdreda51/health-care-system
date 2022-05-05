part of 'find_hospital_cubit.dart';

@immutable
abstract class FindHospitalState {}

class FindHospitalInitial extends FindHospitalState {}

class FindHospitalAppDropdownInputOnChanged extends FindHospitalState {}

class FindHospitalSpecificationSelectedItem extends FindHospitalState {}

class FindHospitalFilterDoctorListLoading extends FindHospitalState {}

class FindHospitalFilterDoctorListSuccess extends FindHospitalState {}
