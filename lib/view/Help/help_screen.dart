import 'package:flutter/material.dart';

import '../../widgets/AccountItemAppBar.dart';
import 'Componants/help_expansion_tile.dart';
import 'Model/helpModel.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = 'Ahmed';

    return Scaffold(
      appBar: AccountItemAppBar(title: "Help & Support"),
      backgroundColor: Colors.grey[200],
      body: ListView(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
        children: [
          ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: helpList.length,
            itemBuilder: (BuildContext context, int index) {
              var item = helpList[index];
              return HelpExpansionTile(
                title: item.title,
                disc: item.disc,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 20,
              );
            },
          )
        ],
      ),
    );
  }
}
