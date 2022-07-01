import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/Home%20Screen/Controller/home_cubit.dart';

import 'companants/home_app_bar.dart';
import 'companants/home_contant.dart';
import 'companants/home_curve.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final cubit = HomeCubit.get(context);
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  const HomeCurve(),
                  const HomeAppBar(),
                  HomeContant(cubit: cubit),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
