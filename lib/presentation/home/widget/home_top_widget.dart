import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jak_one/domain/core/assets/constans.dart';
import 'package:jak_one/domain/core/extension/app_container_style.dart';
import 'package:jak_one/domain/core/extension/sizedbox_extension.dart';
import 'package:jak_one/domain/core/styles/app_color.dart';


class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 196,
          width: Get.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(homeTopBackground),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              35.0.verticalSpace(),
              Row(
                children: [
                  Image.asset(
                    splashCenterImage,
                    width: 140,
                    height: 40,
                  ),
                  Expanded(child: 0.0.verticalSpace()),
                  Image.asset(
                    news,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    notification,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              24.0.verticalSpace(),
              Row(
                children: [
                  Image.asset(
                    avatar,
                    width: 38,
                  ),
                  16.0.horizontalSpace(),
                  const Column(
                    children: [
                      Text(
                        "Good morning\n Guest",
                        style: TextStyle(
                            fontFamily: 'nunito',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              )
            ],
          ).paddingSymmetric(horizontal: 16),
        ),
        Container(
          margin: EdgeInsets.only(top: 150, left: 32, right: 32),
          width: Get.width,
          height: 90,
          decoration: AppContainerStyle.regularContainer(
              background: Colors.white, radius: 10)
              .copyWith(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 20,
                height: 90,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.09, 0.6],
                      colors: [AppColor.red, AppColor.orange]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
              ),
              20.0.horizontalSpace(),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Balance Account',
                    style: TextStyle(fontFamily: 'nunito'),
                  ),
                  Text(
                    'Rp 0',
                    style: TextStyle(fontFamily: 'nunito'),
                  ),
                  Text(
                    '-',
                    style: TextStyle(fontFamily: 'nunito'),
                  ),
                ],
              ),
              Expanded(child: 0.0.verticalSpace()),
              Container(
                height: 33,
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColor.red, AppColor.orange]),
                  border: Border.all(color: Colors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'Top Up',
                  style: TextStyle(
                      fontFamily: 'nunito',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
              ),
              8.0.horizontalSpace(),
            ],
          ),
        )
      ],
    );
  }
}
