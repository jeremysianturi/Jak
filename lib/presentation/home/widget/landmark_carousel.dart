import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jak_one/domain/core/assets/constans.dart';
import 'package:jak_one/domain/core/extension/app_container_style.dart';
import 'package:jak_one/domain/core/extension/sizedbox_extension.dart';
import 'package:jak_one/domain/core/styles/app_color.dart';
import 'package:jak_one/domain/core/styles/app_text_style.dart';

class LandmarkCarousel extends StatelessWidget {
  const LandmarkCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        initialPage: 1,
        height: 200,
        viewportFraction: 0.3,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            if (i.toString() == "1") {
              return const DidYouKnowWidget();
            } else {
              return const LandmarkItem();
            }
          },
        );
      }).toList(),
    );
  }
}

class LandmarkItem extends StatelessWidget {
  const LandmarkItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 120,
      margin: const EdgeInsets.only(bottom: 30),
      decoration: AppContainerStyle.regularContainer(
              background: Colors.white, radius: 10)
          .copyWith(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(dummyAncol),
                fit: BoxFit.cover,
              ),
            ),
          ),
          8.0.verticalSpace(),
          SizedBox(
            width: Get.width,
            child: Text(
              'Ancol Entrance Gate',
              style: AppTextStyle.bold.copyWith(fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ),
          14.0.verticalSpace(),
          Container(
            margin: const EdgeInsets.only(right: 8),
            width: 28,
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
              'Detail',
              style: TextStyle(
                  fontFamily: 'nunito',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 7),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class DidYouKnowWidget extends StatelessWidget {
  const DidYouKnowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            'Did You\n Know ?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'nunito',
            ),
          ),
          Image.asset(
            mapWithmarker,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
