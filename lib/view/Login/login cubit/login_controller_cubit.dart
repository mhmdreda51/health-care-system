import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_controller_state.dart';

class LoginControllerCubit extends Cubit<LoginControllerState> {
  LoginControllerCubit() : super(LoginControllerInitial());

  static LoginControllerCubit get(context) => BlocProvider.of(context);

  //===============================================================

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
//===============================================================

}
