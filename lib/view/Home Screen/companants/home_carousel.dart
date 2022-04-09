import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/app_colors.dart';
import '../Controller/home_cubit.dart';

class HomeCarousel extends StatelessWidget {
  final HomeCubit cubit;

  const HomeCarousel({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: cubit.carouselImage.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 126,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    i.toString(),
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 126,
            viewportFraction: 1,
            initialPage: cubit.carouselIndex,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.linearToEaseOut,
            onPageChanged: (index, reason) {
              cubit.changeCarouselIndex(index: index);
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        // Container(
        //   width: MediaQuery.of(context).size.width,
        //   height: 126,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(25),
        //   ),
        //   child: ListView.separated(
        //     itemCount: cubit.carouselImage.length,
        //     separatorBuilder: (context, index) {
        //       return const SizedBox(width: 9);
        //     },
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (context, index) {
        //       return SizedBox(
        //         width: MediaQuery.of(context).size.width,
        //         height: 126,
        //         child: Image.asset(
        //           cubit.carouselImage[index].toString(),
        //           fit: BoxFit.cover,
        //         ),
        //       );
        //     },
        //   ),
        // ),

        DotsIndicator(
          dotsCount: cubit.carouselImage.length,
          position: cubit.carouselIndex.toDouble(),
          decorator: DotsDecorator(
            color: AppColors.blueWhite.withOpacity(0.5),
            activeColor: AppColors.blueWhite,
          ),
        )
      ],
    );
  }
}
