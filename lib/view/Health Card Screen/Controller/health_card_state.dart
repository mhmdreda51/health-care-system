part of 'health_card_cubit.dart';

@immutable
abstract class HealthCardState {}

class HealthCardInitial extends HealthCardState {}
//===============================================================

class NumOfDoseAppDropdownInputOnChanged extends HealthCardState {}
//===============================================================

class GetBloodTypeLoading extends HealthCardState {}

class GetBloodTypeSuccess extends HealthCardState {
  BloodTypeModel bloodTypeModel;

  GetBloodTypeSuccess({required this.bloodTypeModel});
}

class GetBloodTypeError extends HealthCardState {}
//===============================================================

class BloodSelectedItem extends HealthCardState {}
//===============================================================

class SendBloodTypeLoading extends HealthCardState {}

class SendBloodTypeSuccess extends HealthCardState {
  SendBloodTypeModel sendBloodTypeModel;

  SendBloodTypeSuccess({required this.sendBloodTypeModel});
}

class SendBloodTypeError extends HealthCardState {
  final String error;

  SendBloodTypeError({required this.error});
}

//===============================================================
class SendCoronaVaccineLoading extends HealthCardState {}

class SendCoronaVaccineSuccess extends HealthCardState {
  // MedicalInfoModel medicalInfoModel;
  //
  // SendCoronaVaccineSuccess({required this.medicalInfoModel});
}

class SendCoronaVaccineError extends HealthCardState {
  final String error;

  SendCoronaVaccineError({required this.error});
}

//===============================================================
class pickDose1DateLoading extends HealthCardState {}

class pickDose1DateSuccess extends HealthCardState {}

//===============================================================
class pickDose2DateLoading extends HealthCardState {}

class pickDose2DateSuccess extends HealthCardState {}

//===============================================================
class GetMedicalInfoLoading extends HealthCardState {}

class GetMedicalInfoSuccess extends HealthCardState {
  MedicalInfoModel medicalInfoModel;

  GetMedicalInfoSuccess({required this.medicalInfoModel});
}

class GetMedicalInfoError extends HealthCardState {}
//===============================================================
