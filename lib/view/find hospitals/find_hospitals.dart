import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/find%20hospitals/componants/hospitalListView.dart';
import 'package:health_care_system/widgets/CategoryListShimmer.dart';

import '../../core/Category cubit/category_cubit.dart';
import '../../widgets/services_header.dart';
import 'componants/hospitalCategoryTapBar.dart';

class FindHospitals extends StatelessWidget {
  const FindHospitals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit()..getCategories(),
      child: BlocConsumer<CategoryCubit, CategoryState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = CategoryCubit.get(context);

          return SafeArea(
            child: Scaffold(
                backgroundColor: Colors.grey[200],
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      const ServicesHeader(
                        text: 'Find your hospital',
                        height: 135,
                      ),
                      state is GetCategoriesLoading
                          ? Padding(
                              padding: const EdgeInsets.only(top: 250),
                              child: Center(
                                child: const CupertinoActivityIndicator(
                                  radius: 16.0,
                                  animating: true,
                                ),
                              ),
                            )
                          : Column(
                              children: [
                                HospitalCategoryTapBar(cubit: cubit),
                                cubit.newHospitalList.isEmpty
                                    ? CategoryListShimmer(
                                        list: cubit.newHospitalList,
                                        cubit: cubit,
                                      )
                                    : HospitalListView(cubit: cubit),
                              ],
                            ),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
