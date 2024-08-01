import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jak_one/domain/core/extension/sizedbox_extension.dart';
import 'package:jak_one/domain/core/styles/app_color.dart';
import 'package:jak_one/domain/core/styles/app_text_style.dart';


class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
    required this.title,
    required this.imgPath,
    this.width,
    this.height,
  });

  final String title;
  final String imgPath;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.yellow, AppColor.red],
                stops: [0.1, 0.9],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: Get.width,
              height: Get.height,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [AppColor.pink, AppColor.white],
                    stops: [0.1, 0.99],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      imgPath,
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                    ).paddingOnly(top: 5),
                  ),
                ],
              ),
            ),
          ),
        ),
        5.0.verticalSpace(),
        Text(
          title,
          style: AppTextStyle.medium.copyWith(fontSize: 10),
        )
      ],
    );
  }
}
