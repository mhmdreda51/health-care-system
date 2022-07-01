import 'package:flutter/material.dart';

import '../../../core/router/router.dart';
import '../../../widgets/AccountItemAppBar.dart';
import '../../Doctor details/doctor_details.dart';
import '../../Find Doctor/model/doctor_model.dart';

class AllTop extends StatelessWidget {
  const AllTop({Key? key, required this.title, required this.list})
      : super(key: key);
  final String title;
  final List list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountItemAppBar(title: "Top $title"),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: doctorList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              var item = doctorList[index];
              return GestureDetector(
                onTap: () => MagicRouter.navigateTo(DoctorDetails(item: item)),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.amber,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
