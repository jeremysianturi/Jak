import 'package:flutter/material.dart';
import 'package:jak_one/domain/core/assets/constans.dart';
import 'package:jak_one/presentation/home/widget/menu_widget.dart';

class ListMenuWidget extends StatelessWidget {
  const ListMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuWidget(
            title: 'Explore Jakarta',
            imgPath: menuMap,
          ),
          MenuWidget(
            title: 'Top Up JakCard',
            imgPath: menuTopUp,
          ),
          MenuWidget(
            title: 'JakCard Balance',
            imgPath: menuCard,
            width: 68,
            height: 62,
          ),
          MenuWidget(
            title: 'Event',
            imgPath: menuEvent,
          )
        ],
      ),
    );
  }
}
