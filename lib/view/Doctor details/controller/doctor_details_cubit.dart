import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'doctor_details_state.dart';

class DoctorDetailsCubit extends Cubit<DoctorDetailsState> {
  DoctorDetailsCubit() : super(DoctorDetailsInitial());

  static DoctorDetailsCubit get(context) => BlocProvider.of(context);
  TextEditingController feedback = TextEditingController();

  String generateCountryFlag({required String countryCode}) {
    String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

    return flag;
  }

  showDialog(Widget page, BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        child: page,
        color: Colors.white,
      ),
    );
  }

  double? rating;

  void ratingOnChange({required double? rate}) {
    rating = rate;
    emit(RatingUpdate());
  }
}
