import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:jak_one/domain/core/assets/constans.dart';
import 'package:jak_one/domain/core/extension/sizedbox_extension.dart';
import 'package:jak_one/domain/core/styles/app_text_style.dart';

import '../../infrastructure/navigation/routes.dart';
import 'controllers/splashscreen.controller.dart';

class SplashscreenScreen extends GetView<SplashscreenController> {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(3.seconds, () {
      Get.offAllNamed(Routes.WELCOME);
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(splashScreenBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                splashCenterImage,
                width: 286,
              ),
            ),
            Positioned(
                bottom: 0,
                left: 1,
                right: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ojkImage,
                          width: 43,
                        ),
                        24.0.horizontalSpace(),
                        Image.asset(
                          lpsImage,
                          width: 43,
                        ),
                      ],
                    ),
                    12.0.verticalSpace(),
                    Text(
                      'powered by Bank DKI\n2023',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.regular.copyWith(color: Colors.white),
                    ),
                    10.0.verticalSpace(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
