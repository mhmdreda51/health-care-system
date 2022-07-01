import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/Category cubit/category_cubit.dart';
import '../../widgets/services_header.dart';
import 'Componants/ph_CategoryTapBar.dart';
import 'Componants/pharmacyList.dart';

class FindPharmacys extends StatelessWidget {
  const FindPharmacys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(),
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
                      text: 'Find your pharmacy',
                      height: 135,
                    ),
                    PhCategoryTapBar(cubit: cubit),
                    PharmacyListView(
                      cubit: cubit,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
