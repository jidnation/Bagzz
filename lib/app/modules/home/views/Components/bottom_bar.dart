import 'package:first/app/Utility/bottom_sheet_settings.dart';
import 'package:first/app/data/configuration.dart';
import 'package:first/app/modules/home/controllers/home_controller.dart';
import 'package:first/app/modules/home/views/Components/cart_tab.dart';
import 'package:first/app/modules/home/views/Components/favourite_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GetBuilder<HomeController>(builder: (tab) {
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: tab.currentTap.value,
          items: [
            BottomNavigationBarItem(
                tooltip: 'HOME',
                label: '',
                icon: FaIcon(
                  FontAwesomeIcons.landmark,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                tooltip: 'Search',
                label: '',
                icon: FaIcon(
                  FontAwesomeIcons.search,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                tooltip: 'Favourite',
                label: '',
                icon: FaIcon(
                  FontAwesomeIcons.solidHeart,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                tooltip: 'Cart',
                label: '',
                icon: SvgPicture.asset('assets/icons/cart.svg')),
          ],
          onTap: (index) {
            if (index <= 1) {
              tab.changeTab(index);
              print(index);
              // Body();
            } else {
              tab.changeTab(index);
              tab.getFavourite();
              if (tab.currentTap.value == 2) {
                Get.bottomSheet<dynamic>(
                  BottomSheetSetter(child: FavouriteTab()),
                  backgroundColor: Colors.transparent,
                  barrierColor: Colors.transparent,
                  isScrollControlled: true,
                );
              } else {
                Get.bottomSheet(
                  BottomSheetSetter(child: CartTab()),
                  backgroundColor: Colors.transparent,
                  barrierColor: Colors.transparent,
                  isScrollControlled: true,
                );
              }
            }
          },
        );
      }),
      Positioned(
        bottom: getProportionateScreenHeight(45),
        right: getProportionateScreenWidth(22),
        child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black),
            child: const Center(
                child: Text('2',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)))),
      ),
    ]);
  }
}
