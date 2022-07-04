import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'pill_reminder_state.dart';

class PillReminderCubit extends Cubit<PillReminderState> {
  PillReminderCubit() : super(PillReminderInitial());

  //===============================================================

  static PillReminderCubit get(context) => BlocProvider.of(context);

  //===============================================================
  GlobalKey<FormState> FormKey = GlobalKey<FormState>();

  TextEditingController titleController = TextEditingController();
  TextEditingController timingsController = TextEditingController();
  TextEditingController daysController = TextEditingController();
  TextEditingController durationController = TextEditingController();

//===============================================================
  showDialog(Widget page, BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        child: page,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
    );
  }
//===============================================================
//===============================================================
//===============================================================
//===============================================================

}
