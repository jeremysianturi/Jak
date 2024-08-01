import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jak_one/domain/core/assets/constans.dart';
import 'package:jak_one/domain/core/extension/sizedbox_extension.dart';
import 'package:jak_one/domain/core/styles/app_color.dart';
import 'package:jak_one/presentation/home/widget/home_top_widget.dart';
import 'package:jak_one/presentation/home/widget/landmark_carousel.dart';
import 'package:jak_one/presentation/home/widget/list_menu_widget.dart';
import 'package:jak_one/presentation/home/widget/title_list.dart';

import 'controllers/home.controller.dart';
import 'widget/event_carousel.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryBg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeTopWidget(),
            20.0.verticalSpace(),
            const ListMenuWidget(),
            25.0.verticalSpace(),
            const TitleList(
              title: 'Let’s Go with Jakarta Tourist Pass',
              content: 'a place not to be missed',
              imgPath: halfLandmark,
            ),
            20.0.verticalSpace(),
            const LandmarkCarousel(),
            Image.asset(dotted2),
            10.0.verticalSpace(),
            const TitleList(
              title: 'Events in Jakarta',
              content: "don't miss the current events",
              imgPath: halfEvent,
            ),
            20.0.verticalSpace(),
            const EventCarousel(),
            Image.asset(dotted2),
            100.0.verticalSpace()
          ],
        ),
      ),
      floatingActionButton: Image.asset(
        helpCarImage,
        width: 90,
      ),
    );
  }
}
