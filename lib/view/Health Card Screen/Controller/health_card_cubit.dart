import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/core/cacheHelper/cache_helper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../../../constants/end_point.dart';
import '../../../core/dioHelper/dio_helper.dart';
import '../Model/MedicalInfoModel.dart';
import '../Model/SendBloodTypeModel.dart';
import '../Model/blood_type_model.dart';
import '../Model/create_record.dart';
import '../Model/tybe_records.dart';

part 'health_card_state.dart';

class HealthCardCubit extends Cubit<HealthCardState> {
  HealthCardCubit() : super(HealthCardInitial()) {}

  //===============================================================

  static HealthCardCubit get(context) => BlocProvider.of(context);

  //===============================================================
  GlobalKey<FormState> coronaFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> recordFormKey = GlobalKey<FormState>();

  //===============================================================
  TextEditingController coronaName = TextEditingController();
  TextEditingController SerialNumber = TextEditingController();

  TextEditingController dose1Date = TextEditingController();
  TextEditingController dose1Location = TextEditingController();
  TextEditingController dose2Date = TextEditingController();
  TextEditingController dose2Location = TextEditingController();
  TextEditingController recordTitle = TextEditingController();

  //===============================================================

  //===============================================================

  showDialog(Widget page, BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        child: page,
        height: 410,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
        ),
        padding: EdgeInsets.all(20),
      ),
    );
  }

//===============================================================
  List<String> numOfDose = ["1", "2"];
  String? dropdownInputValue;

  dropdownInputOnChanged({required String? value}) {
    dropdownInputValue = value;
    emit(NumOfDoseAppDropdownInputOnChanged());
  }

//===============================================================
  int isSelected = 0;

  int get getCurrentItem => isSelected;

  void itemSelection(int value) {
    isSelected = value;

    emit(BloodSelectedItem());
  }

//===============================================================
  BloodTypeModel? bloodTypeModel;

  Future<void> getBloodType() async {
    emit(GetBloodTypeLoading());
    final response = await DioHelper.getData(
      url: listBloodType,
    );
    try {
      print(response.data);
      bloodTypeModel = BloodTypeModel.fromJson(response.data);
      emit(GetBloodTypeSuccess(bloodTypeModel: bloodTypeModel!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
      emit(GetBloodTypeError());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(GetBloodTypeError());
    }
  }

//===============================================================
  SendBloodTypeModel? sendBloodTypeModel;

  Future<void> sendBloodType({
    required String id,
  }) async {
    emit(SendBloodTypeLoading());
    final response = await DioHelper.postData(
      url: chooseBlood,
      data: {
        'blood_type_id': id,
      },
    );
    final data = response.data as Map<String, dynamic>;

    try {
      print(data);
      sendBloodTypeModel = SendBloodTypeModel.fromJson(data);

      emit(SendBloodTypeSuccess(sendBloodTypeModel: sendBloodTypeModel!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(SendBloodTypeError(error: e.toString()));
    }
  }

//===============================================================

  Future<void> sendCoronaVaccine({
    required String name,
    required String serial_number,
    required String date_first,
    required String location_first,
    required String date_sec,
    required String location_sec,
  }) async {
    emit(SendCoronaVaccineLoading());
    final response = await DioHelper.postData(
      url: corona,
      data: {
        'name': name.trim().toString(),
        'serial_number': serial_number.trim().toString(),
        'date_first': date_first,
        'location_first': location_first.trim().toString(),
        'date_sec': date_sec,
        'location_sec': location_sec.trim().toString(),
      },
    );
    // final data = response.data as Map<String, dynamic>;
    // print(CacheHelper.getUserToken);

    try {
      emit(SendCoronaVaccineSuccess());
    } on DioError catch (e) {
      debugPrint(e.error.toString());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(SendCoronaVaccineError(error: e.toString()));
    }
  }

//===============================================================
  String formatDose1Date(DateTime date) =>
      new DateFormat('yyyy-MM-dd').format(dose1_Date);

  String formatDose2Date(DateTime date) =>
      new DateFormat('yyyy-MM-dd').format(dose2_Date);

  DateTime dose1_Date = DateTime.now();
  DateTime dose2_Date = DateTime.now();

  bool isDose1Picked = false;
  bool isDose2Picked = false;

  Future<void> selectDose1Date(BuildContext context) async {
    emit(pickDose1DateLoading());
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: dose1_Date,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != dose1_Date) {
      dose1_Date = pickedDate;
      isDose1Picked = true;
      emit(pickDose1DateSuccess());
    }
  }

//===============================================================
  Future<void> selectDose2Date(BuildContext context) async {
    emit(pickDose2DateLoading());
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: dose2_Date,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != dose2_Date) {
      dose2_Date = pickedDate;
      isDose2Picked = true;
      emit(pickDose2DateSuccess());
    }
  }

//===============================================================
  MedicalInfoModel? medicalInfoModel;

  Future<void> getMedicalInfo() async {
    emit(GetMedicalInfoLoading());
    final response = await DioHelper.getData(
      url: medicalInfo,
    );
    try {
      print(response.data);
      medicalInfoModel = MedicalInfoModel.fromJson(response.data);
      CacheHelper.cacheMedicalInfoModel(medicalInfoModel: medicalInfoModel!);
      emit(GetMedicalInfoSuccess(medicalInfoModel: medicalInfoModel!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
      emit(GetBloodTypeError());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(GetBloodTypeError());
    }
    //===============================================================
  }

  int isRecordSelected = 1;

  int get getRecordCurrentItem => isSelected;

  void RecordItemSelection(int value) {
    isRecordSelected = value;

    emit(TypeOfRecordSelectedItem());
  }

//===============================================================
  String formatRecordDate(DateTime date) =>
      new DateFormat('yyyy-MM-dd').format(RecordDate);

  DateTime RecordDate = DateTime.now();
  bool isRecordDatePicked = false;

  Future<void> selectRecordDate(BuildContext context) async {
    emit(pickRecordDateLoading());
    final DateTime? pickedRecordDate = await showDatePicker(
        context: context,
        initialDate: dose1_Date,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedRecordDate != null && pickedRecordDate != dose1_Date) {
      RecordDate = pickedRecordDate;
      isRecordDatePicked = true;
      emit(pickRecordDateSuccess());
    }
  }

//===============================================================
  bool isTimePicked = false;

  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> selectRecordTime(BuildContext context) async {
    emit(pickTimeLoading());
    final TimeOfDay? pickTime = await showTimePicker(
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
      context: context,
    );
    if (pickTime != null && pickTime != selectedTime) {
      selectedTime = pickTime;
      isTimePicked = true;
      emit(pickTimeSuccess());
    }
  }

//===============================================================
  XFile? image;

  Future<String> pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final imageFile = await picker.pickImage(source: ImageSource.gallery);
    image = imageFile;
    return image!.path;
  }

//===============================================================
  RecordType? recordType;

  Future<void> getRecordType() async {
    emit(GetRecordTypeLoading());
    final response = await DioHelper.getData(
      url: getRecType,
    );
    try {
      print(response.data);
      recordType = RecordType.fromJson(response.data);
      emit(GetRecordTypeSuccess(recordType: recordType!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
      emit(GetRecordTypeError());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(GetRecordTypeError());
    }
  }

//===============================================================
  CreateRecordModel? createRecordModel;

  Future<void> postRecord({
    required String title,
    required String cardDate,
    required String typeId,
    required String cardTime,
    required XFile image,
  }) async {
    emit(CreateRecordLoading());
    // String imageFileName = image.path.split('/').last;

    final response = await DioHelper.postData(
      url: postRec,
      data: {
        'title': title,
        'card_date': cardDate,
        'card_time': cardTime,
        'attachments':
            await MultipartFile.fromFile(image.path, filename: image.name),
        'type_id': typeId,
      },
    );
    // final data = response.data as Map<String, dynamic>;
    print(response.statusMessage);
    print(response.statusCode);

    createRecordModel = CreateRecordModel.fromJson(response.data);
    try {
      emit(CreateRecordSuccess(createRecordModel: createRecordModel!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
      emit(CreateRecordError());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(CreateRecordError());
    }
  }
//===============================================================
//===============================================================

//===============================================================

}
