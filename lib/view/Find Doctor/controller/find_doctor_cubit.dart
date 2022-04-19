import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../model/doctor_model.dart';

part 'find_doctor_state.dart';

class FindDoctorCubit extends Cubit<FindDoctorState> {
  FindDoctorCubit() : super(FindDoctorInitial()) {
    // print('test');
    itemSelection(isSelected);
    findByCategory("All");
  }
  //===============================================================

  static FindDoctorCubit get(context) => BlocProvider.of(context);

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
  int isSelected = 1;

  int get getCurrentItem => isSelected;

  void itemSelection(int value) {
    isSelected = value;

    emit(SpecificationSelectedItem());
  }

//===============================================================
  List<DoctorModel> get products {
    return [...doctorList];
  }

  late List<DoctorModel> newList = [];

  List findByCategory(String categoryName) {
    emit(FilterDoctorListLoading());
    newList = products.where((element) {
      bool item = element.recommendation.contains(categoryName);
      if (isSelected == 1) {
        item = true;
      }
      return item;
    }).toList();
    print(newList.length);
    emit(FilterDoctorListSuccess());
    return newList;
  }

//===============================================================
//===============================================================
//===============================================================
//===============================================================

}
