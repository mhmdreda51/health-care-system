import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../view/Find Doctor/model/doctor_model.dart';
import '../../view/find hospitals/Model/hospital_model.dart';
import '../../view/find labs/Models/laps_model.dart';
import '../../view/find pharmacys/Model/PharmacysModel.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial()) {
    itemSelection(isSelected);
    findPharmacyByCategory("All");
    findHospitalByCategory("All");
    findDoctorByCategory("All");
    findLapsByCategory("All");
  }

//===============================================================

  static CategoryCubit get(context) => BlocProvider.of(context);

//===============================================================
  int isSelected = 1;

  int get getCurrentItem => isSelected;

  void itemSelection(int value) {
    isSelected = value;

    emit(SpecificationSelectedItem());
  }

//===============================================================
  List<String> specialitie = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  String? dropdownInputValue;

  dropdownInputOnChanged({required String? value}) {
    dropdownInputValue = value;
    emit(AppDropdownInputOnChanged());
  }

  //===============================================================

  List<HospitalModel> get hospitalProducts {
    return [...hospitals];
  }

  late List<HospitalModel> newHospitalList = [];

  List findHospitalByCategory(String categoryName) {
    emit(FindHospitalFilterDoctorListLoading());
    newHospitalList = hospitalProducts.where((element) {
      bool item = element.recommendation.contains(categoryName);
      if (isSelected == 1) {
        item = true;
      }
      return item;
    }).toList();
    print(newHospitalList.length);
    emit(FindHospitalFilterDoctorListSuccess());
    return newHospitalList;
  }

//===============================================================
  List<DoctorModel> get doctorProducts {
    return [...doctorList];
  }

  late List<DoctorModel> newDoctorList = [];

  List findDoctorByCategory(String categoryName) {
    emit(FilterDoctorListLoading());
    newDoctorList = doctorProducts.where((element) {
      bool item = element.recommendation.contains(categoryName);
      if (isSelected == 1) {
        item = true;
      }
      return item;
    }).toList();
    print(newDoctorList.length);
    emit(FilterDoctorListSuccess());
    return newDoctorList;
  }

//===============================================================
  List<LapsModel> get lapsProducts {
    return [...lapsList];
  }

  late List<LapsModel> newLapsList = [];

  List findLapsByCategory(String categoryName) {
    emit(FilterLapsListLoading());
    newLapsList = lapsProducts.where((element) {
      bool item = element.recommendation.contains(categoryName);
      if (isSelected == 1) {
        item = true;
      }
      return item;
    }).toList();
    print(lapsProducts.length);
    emit(FilterLapsListSuccess());
    return lapsProducts;
  }

//===============================================================
  List<PharmacysModel> get pharmacyProducts {
    return [...pharmacysList];
  }

  late List<PharmacysModel> newPharmacyList = [];

  List findPharmacyByCategory(String categoryName) {
    emit(FilterDoctorListLoading());
    newPharmacyList = pharmacyProducts.where((element) {
      bool item = element.recommendation.contains(categoryName);
      if (isSelected == 1) {
        item = true;
      }
      return item;
    }).toList();
    print(newPharmacyList.length);
    emit(FilterDoctorListSuccess());
    return newPharmacyList;
  }
//===============================================================

}
