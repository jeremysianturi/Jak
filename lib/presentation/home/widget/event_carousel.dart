import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jak_one/domain/core/assets/constans.dart';
import 'package:jak_one/domain/core/extension/sizedbox_extension.dart';
import 'package:jak_one/domain/core/styles/app_color.dart';

class EventCarousel extends StatelessWidget {
  const EventCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        initialPage: 0,
        height: 200,
        viewportFraction: 0.5,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return const EventItem();
          },
        );
      }).toList(),
    );
  }
}

class EventItem extends StatelessWidget {
  const EventItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 191,
      height: 100,
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.001, 0.1, 0.85],
            colors: [AppColor.red, AppColor.orange, Colors.white]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 191,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(dummyEvent),
                fit: BoxFit.fill,
              ),
            ),
          ),
          14.0.verticalSpace(),
          Container(
            margin: const EdgeInsets.only(right: 8),
            width: 78,
            height: 12,
            padding: const EdgeInsets.all(1),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColor.red, AppColor.orange]),
              border: Border.all(color: Colors.yellow, width: 1),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Text(
              'More Information',
              style: TextStyle(
                  fontFamily: 'nunito',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 7),
              textAlign: TextAlign.center,
            ).paddingSymmetric(horizontal: 8),
          ),
        ],
      ),
    );
  }
}
