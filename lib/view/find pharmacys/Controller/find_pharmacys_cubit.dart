import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../Model/PharmacysModel.dart';

part 'find_pharmacys_state.dart';

class FindPharmacysCubit extends Cubit<FindPharmacysState> {
  FindPharmacysCubit() : super(FindPharmacysInitial()) {
    itemSelection(isSelected);
    findByCategory("All");
  }

  //===============================================================

  static FindPharmacysCubit get(context) => BlocProvider.of(context);

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
  List<PharmacysModel> get products {
    return [...pharmacysList];
  }

  late List<PharmacysModel> newList = [];

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
}
