import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../model/doctor_model.dart';

part 'find_doctor_state.dart';

class FindDoctorCubit extends Cubit<FindDoctorState> {
  FindDoctorCubit() : super(FindDoctorInitial());

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
    value = dropdownInputValue;
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

  List findByCategory(String categoryName) {
    List categoryList = products
        .where((element) =>
            element.category.toLowerCase().contains(categoryName.toLowerCase()))
        .toList();
    return categoryList;
  }
//===============================================================
//===============================================================
//===============================================================
//===============================================================

}
