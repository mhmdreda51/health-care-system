import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/Category cubit/category_cubit.dart';
import '../../widgets/services_header.dart';
import 'Componants/laps_category_tap_bar.dart';
import 'Componants/laps_list_shimmer.dart';
import 'Componants/laps_list_view.dart';

class FindLaps extends StatelessWidget {
  const FindLaps({Key? key}) : super(key: key);

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
              body: Column(
                children: [
                  const ServicesHeader(
                    text: 'Find your Laps',
                    height: 135,
                  ),
                  LapsCategoryTapBar(
                    cubit: cubit,
                  ),
                  cubit.newLapsList.isEmpty
                      ? LapsListShimmer(
                          cubit: cubit,
                        )
                      : LapsListView(cubit: cubit),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
