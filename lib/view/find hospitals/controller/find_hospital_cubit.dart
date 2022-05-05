import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/find%20hospitals/Model/hospital_model.dart';
import 'package:meta/meta.dart';

part 'find_hospital_state.dart';

class FindHospitalCubit extends Cubit<FindHospitalState> {
  FindHospitalCubit() : super(FindHospitalInitial()) {
    itemSelection(isSelected);
    findByCategory("All");
  }

  //===============================================================

  static FindHospitalCubit get(context) => BlocProvider.of(context);

//===============================================================
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
    emit(FindHospitalAppDropdownInputOnChanged());
  }

//===============================================================
  List<HospitalModel> get products {
    return [...hospitals];
  }

  late List<HospitalModel> newList = [];

  List findByCategory(String categoryName) {
    emit(FindHospitalFilterDoctorListLoading());
    newList = products.where((element) {
      bool item = element.recommendation.contains(categoryName);
      if (isSelected == 1) {
        item = true;
      }
      return item;
    }).toList();
    print(newList.length);
    emit(FindHospitalFilterDoctorListSuccess());
    return newList;
  }

//===============================================================
  int isSelected = 1;

  int get getCurrentItem => isSelected;

  void itemSelection(int value) {
    isSelected = value;

    emit(FindHospitalSpecificationSelectedItem());
  }

//===============================================================

}
