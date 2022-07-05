import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/view/Home%20Screen/Controller/home_cubit.dart';

class NavigationScreen extends StatefulWidget {
  final int currentIndex;

  const NavigationScreen({Key? key, this.currentIndex = 0}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  void initState() {
    super.initState();
    HomeCubit.get(context).currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = HomeCubit.get(context);

        return Scaffold(
          extendBody: true,
          body: cubit.bottomViews[cubit.currentIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            height: MediaQuery.of(context).size.height * 0.085,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              child: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                backgroundColor: Colors.white,
                selectedItemColor: AppColors.blueWhite,
                iconSize: 20,
                selectedFontSize: 12,
                unselectedFontSize: 10,
                unselectedItemColor: AppColors.ubSelectedItem,
                onTap: (index) => cubit.changeBottomViews(index),
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.chat_outlined, size: 25),
                    label: 'ChatBoot',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.clipboardList),
                    label: 'health card',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.user),
                    label: 'Account',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
