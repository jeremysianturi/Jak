import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:jak_one/domain/core/assets/constans.dart';
import 'package:jak_one/domain/core/extension/app_container_style.dart';
import 'package:jak_one/domain/core/styles/app_color.dart';
import 'package:jak_one/presentation/home/home.screen.dart';

import 'controllers/navbar.controller.dart';

class NavModel {
  final Widget page;
  NavModel({required this.page});
}

class NavbarScreen extends GetView<NavbarController> {
  const NavbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedTab = 0;
    List<NavModel> items = [];
    items = [
      NavModel(
        page: HomeScreen(),
      ),
      NavModel(
        page: SizedBox(),
      ),
      NavModel(
        page: SizedBox(),
      ),
    ];
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
        body: IndexedStack(
          index: selectedTab,
          children: items
              .map((page) => Navigator(
                    // key: page.navKey,
                    onGenerateInitialRoutes: (navigator, initialRoute) {
                      return [
                        MaterialPageRoute(builder: (context) => page.page)
                      ];
                    },
                  ))
              .toList(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: const EdgeInsets.only(top: 10),
          height: 64,
          width: 64,
          child: FloatingActionButton(
              backgroundColor: Colors.white,
              elevation: 0,
              onPressed: () => debugPrint("Add Button pressed"),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Container(
                  decoration: AppContainerStyle.regularContainer(
                          background: Colors.white, radius: 100)
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
                  child: Image.asset(qris))),
        ),
        bottomNavigationBar: NavBar(
          pageIndex: selectedTab,
          onTap: (index) {
            if (index == selectedTab) {
            } else {
              selectedTab = index;
            }
          },
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomAppBar(
        elevation: 0.0,
        color: AppColor.secondaryBg,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: Container(
            height: 60,
            color: Colors.white,
            child: Row(
              children: [
                navItem(
                  navHome,
                  pageIndex == 0,
                  onTap: () => onTap(0),
                ),
                const SizedBox(width: 80),
                navItem(
                  navProfile,
                  pageIndex == 2,
                  onTap: () => onTap(2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navItem(String iconPath, bool selected, {Function()? onTap}) {
    return Expanded(
      child: InkWell(
          onTap: onTap,
          child: SvgPicture.asset(
            width: 40,
            height: 40,
            iconPath,
          )),
    );
  }
}
