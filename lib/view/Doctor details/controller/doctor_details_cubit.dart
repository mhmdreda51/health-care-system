import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'doctor_details_state.dart';

class DoctorDetailsCubit extends Cubit<DoctorDetailsState> {
  DoctorDetailsCubit() : super(DoctorDetailsInitial());
  static DoctorDetailsCubit get(context) => BlocProvider.of(context);

  String generateCountryFlag({required String countryCode}) {
    String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

    return flag;
  }
}
