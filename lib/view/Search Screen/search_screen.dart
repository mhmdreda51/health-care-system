import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/widgets/AccountItemAppBar.dart';

import '../../core/router/router.dart';
import '../../widgets/app_text_form_field.dart';
import 'Controller/search_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = SearchCubit.get(context);
          return Scaffold(
            appBar: AccountItemAppBar(title: "Search"),
            backgroundColor: Colors.grey[200],
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppTextFormField(
                    maxLines: 1,
                    validator: () {},
                    onTap: () => MagicRouter.navigateTo(SearchScreen()),
                    controller: cubit.SearchController,
                    iconColor: Colors.grey[400]!,
                    icon: Icons.search,
                    hintText: "Search",
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
