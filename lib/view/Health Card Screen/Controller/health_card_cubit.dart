import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'health_card_state.dart';

class HealthCardCubit extends Cubit<HealthCardState> {
  HealthCardCubit() : super(HealthCardInitial());

  //===============================================================

  static HealthCardCubit get(context) => BlocProvider.of(context);

  //===============================================================
  GlobalKey<FormState> coronaFormKey = GlobalKey<FormState>();

  //===============================================================
  TextEditingController corona_name = TextEditingController();
  TextEditingController coronaSerialNumber = TextEditingController();

  TextEditingController corona_num_dose = TextEditingController();
  TextEditingController corona_dose1_date = TextEditingController();
  TextEditingController corona_dose1_location = TextEditingController();
  TextEditingController corona_dose2_date = TextEditingController();
  TextEditingController corona_dose2_location = TextEditingController();

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

}
