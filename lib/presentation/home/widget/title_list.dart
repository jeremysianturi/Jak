import 'package:flutter/material.dart';
import 'package:jak_one/domain/core/extension/sizedbox_extension.dart';
import 'package:jak_one/domain/core/styles/app_color.dart';
import 'package:jak_one/domain/core/styles/app_text_style.dart';

class TitleList extends StatelessWidget {
  const TitleList({
    super.key,
    required this.title,
    required this.content,
    required this.imgPath,
  });

  final String title, content, imgPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imgPath,
          width: 32,
          height: 36,
        ),
        8.0.horizontalSpace(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyle.bold,
            ),
            Text(
              content,
              style: AppTextStyle.regular.copyWith(fontSize: 12),
            ),
            Container(
              width: 45,
              height: 4,
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
            )
          ],
        ),
      ],
    );
  }
}
