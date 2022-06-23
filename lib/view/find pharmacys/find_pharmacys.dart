import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/drop_down_Button.dart';
import '../../widgets/services_header.dart';
import 'Componants/ph_CategoryTapBar.dart';
import 'Componants/pharmacyList.dart';
import 'Controller/find_pharmacys_cubit.dart';

class FindPharmacys extends StatelessWidget {
  const FindPharmacys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FindPharmacysCubit(),
      child: BlocConsumer<FindPharmacysCubit, FindPharmacysState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = FindPharmacysCubit.get(context);

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
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 25, left: 20, right: 20, bottom: 0),
                      child: AppDropDownButton(
                        value: cubit.dropdownInputValue,
                        itemsList: cubit.specialitie,
                        onChanged: (value) {
                          cubit.dropdownInputOnChanged(value: value);
                          // print(cubit.dropdownInputValue);
                        },
                      ),
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
