import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../core/router/router.dart';
import 'Componants/country_item.dart';
import 'Componants/country_title_bar.dart';
import 'Model/covid19_model.dart';
import 'Widgets/Ui_box.dart';
import 'helper/corona_api_helper.dart';

class Covid19Screen extends StatefulWidget {
  const Covid19Screen({Key? key}) : super(key: key);

  @override
  State<Covid19Screen> createState() => _Covid19ScreenState();
}

class _Covid19ScreenState extends State<Covid19Screen> {
  late Future<WorldWideData?> worldWideData;

  initState() {
    super.initState();
    worldWideData = APIHelper.apiHelper.getCovidData();
  }

  bool isGlobal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.grey[200],
      body: FutureBuilder(
        future: worldWideData,
        builder:
            (BuildContext context, AsyncSnapshot<WorldWideData?> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else if (snapshot.hasData) {
            return RefreshIndicator(
              color: AppColors.blueWhite,
              onRefresh: () {
                setState(() {
                  worldWideData = APIHelper.apiHelper.getCovidData();
                });
                return worldWideData;
              },
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(15),
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ]),
                    child: Row(
                      children: [
                        const Text("Global",
                            style: TextStyle(
                                color: Color(0xff313131),
                                fontSize: 22,
                                fontWeight: FontWeight.w500)),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            isGlobal = true;
                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                              primary: isGlobal
                                  ? const Color(0xff313131)
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: (isGlobal)
                                    ? const BorderSide()
                                    : const BorderSide(
                                        color: Color(0xff313131),
                                        width: 1,
                                      ),
                              )),
                          child: Text(
                            "Total",
                            style: TextStyle(
                                color: isGlobal
                                    ? Colors.white
                                    : const Color(0xff313131)),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            isGlobal = false;
                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                              primary: isGlobal == false
                                  ? const Color(0xff313131)
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: (isGlobal == false)
                                    ? const BorderSide()
                                    : const BorderSide(
                                        color: Color(0xff313131),
                                        width: 1,
                                      ),
                              )),
                          child: Text(
                            "New",
                            style: TextStyle(
                                color: isGlobal == false
                                    ? Colors.white
                                    : const Color(0xff313131)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(0, 0),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            Expanded(
                                child: UIBox(
                                    text: "Confirmed",
                                    data:
                                        "${isGlobal ? snapshot.data!.totalConfirmed : snapshot.data!.newConfirmed}",
                                    color: const Color(0xffFF983C))),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: UIBox(
                              text: "Active",
                              data:
                                  "${isGlobal ? snapshot.data!.totalConfirmed - (snapshot.data!.totalRecovered + snapshot.data!.totalDeaths) : snapshot.data!.newConfirmed - (snapshot.data!.newRecovered + snapshot.data!.newDeaths)}",
                              color: const Color(0xff309AFE),
                            ))
                          ],
                        )),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: Row(
                          children: [
                            Expanded(
                              child: UIBox(
                                text: "Recovered",
                                data:
                                    "${isGlobal ? snapshot.data!.totalRecovered : snapshot.data!.newRecovered}",
                                color: const Color(0xff31C95C),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: UIBox(
                                text: "Death",
                                data:
                                    "${isGlobal ? snapshot.data!.totalDeaths : snapshot.data!.newDeaths}",
                                color: const Color(0xffFF3B3C),
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CountryTitleBar(),
                  Column(
                    children: snapshot.data!.countries.map((e) {
                      Country n = e;
                      return CountryItem(
                        n: n,
                      );
                    }).toList(),
                  )
                ],
              ),
            );
          } else {
            return const Center(
                child: const CupertinoActivityIndicator(
              radius: 16.0,
              animating: true,
            ));
          }
        },
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: SizedBox(),
      actions: [
        IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: AppColors.introTextColor,
              size: 20,
            ),
            onPressed: () => MagicRouter.pop())
      ],
      title: Text(
        'Covid 19 Live',
        style: TextStyle(
          color: AppColors.introTextColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
