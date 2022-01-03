import 'package:first/app/data/configuration.dart';
import 'package:first/app/modules/home/controllers/home_controller.dart';
import 'package:first/app/modules/home/views/Components/cart_tab.dart';
import 'package:first/app/modules/home/views/Components/favourite_tab.dart';
import 'package:first/app/modules/home/views/Components/search_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_tab.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final List _selectedTap = const <Widget>[
    HomeTab(),
    SearchTab(),
    FavouriteTab(),
    CartTab()
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<HomeController>(builder: (tab) {
      if (tab.currentTap.value <= 1) {
        tab.current.value = tab.currentTap.value;
        return _selectedTap.elementAt(tab.current.value);
      } else {
        tab.current.value = tab.current.value;
        return _selectedTap.elementAt(tab.current.value);
      }
    });
  }
}
