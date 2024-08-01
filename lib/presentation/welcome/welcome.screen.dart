import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:jak_one/domain/core/assets/constans.dart';
import 'package:jak_one/domain/core/extension/app_container_style.dart';
import 'package:jak_one/domain/core/extension/inkwell_extensions.dart';
import 'package:jak_one/domain/core/extension/sizedbox_extension.dart';
import 'package:jak_one/domain/core/styles/app_color.dart';
import 'package:jak_one/domain/core/styles/app_text_style.dart';
import 'package:jak_one/domain/core/widget/gradient_text.dart';
import 'package:jak_one/infrastructure/navigation/routes.dart';

import 'controllers/welcome.controller.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              17.0.verticalSpace(),
              const WelcomeTopWidget(),
              70.0.verticalSpace(),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: Image.asset(monasImage)),
              20.0.verticalSpace(),
              GradientText(
                'Explore Jakarta with Jakarta Tourist Pass',
                style: AppTextStyle.bold,
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColor.red, AppColor.orange]),
              ),
              20.0.verticalSpace(),
              SvgPicture.asset(icDotted),
              Container(
                width: Get.width,
                height: 46,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 37),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColor.red, AppColor.orange]),
                  border: Border.all(color: Colors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: const Text(
                  'Continue as a Guest',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ).regularInkWell(
                onTap: () => Get.toNamed(Routes.NAVBAR),
              ),
              15.0.verticalSpace(),
              Container(
                width: Get.width,
                height: 46,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 37),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [AppColor.red, AppColor.orange]),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Container(
                  width: Get.width,
                  height: Get.height,
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: const GradientText(
                      'Continue as a Guest',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColor.red, AppColor.orange]),
                    ).paddingOnly(top: 5),
                  ),
                ),
              ).regularInkWell(
                onTap: () => Get.toNamed(Routes.NAVBAR),
              )
            ],
          ),
          Positioned(
            bottom: 20,
            right: 0,
            child: Image.asset(
              helpCarImage,
              width: 90,
            ),
          )
        ],
      ),
    );
  }
}

class WelcomeTopWidget extends StatelessWidget {
  const WelcomeTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          17.0.horizontalSpace(),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                width: 80,
                height: 30,
                decoration: AppContainerStyle.regularShadowContainer(
                    background: Colors.white, radius: 25),
              ),
              Row(
                children: [
                  Image.asset(
                    idFlag,
                    width: 50,
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    ukFlag,
                    width: 50,
                    fit: BoxFit.fill,
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: 0.0.verticalSpace(),
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 11, right: 11),
                decoration: AppContainerStyle.regularShadowContainer(
                    background: Colors.white, radius: 25),
                margin: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Image.asset(
                      creditCard,
                      width: 15,
                      fit: BoxFit.fill,
                    ),
                    4.0.horizontalSpace(),
                    Image.asset(
                      jakCard,
                      width: 40,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              ),
            ],
          ),
          17.0.horizontalSpace(),
        ],
      ),
    );
  }
}
