import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../constants/end_point.dart';
import '../../view/Find Doctor/model/doctor_model.dart';
import '../../view/Home Screen/model/CategoriesModel.dart';
import '../../view/find hospitals/Model/hospital_model.dart';
import '../../view/find labs/Models/laps_model.dart';
import '../../view/find pharmacys/Model/PharmacysModel.dart';
import '../dioHelper/dio_helper.dart';

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
//   List<String> specialitie = [
//     "Food",
//     "Transport",
//     "Personal",
//     "Shopping",
//     "Medical",
//     "Rent",
//     "Movie",
//     "Salary"
//   ];
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
  CategoriesModel? categoriesModel;

  Future<void> getCategories() async {
    emit(GetCategoriesLoading());
    final response = await DioHelper.getData(
      url: before_home,
    );
    try {
      print(response.data);
      categoriesModel = CategoriesModel.fromJson(response.data);
      // CacheHelper.cacheMedicalInfoModel(medicalInfoModel: medicalInfoModel!);
      emit(GetCategoriesSuccess(categoriesModel: categoriesModel!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
      emit(GetCategoriesError());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(GetCategoriesError());
    }
  }
//===============================================================
//===============================================================
//===============================================================
//===============================================================
//===============================================================
//===============================================================
//===============================================================
//===============================================================

}
