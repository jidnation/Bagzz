import 'package:first/app/Utility/buttons.dart';
import 'package:first/app/modules/home/controllers/home_controller.dart';
import 'package:first/app/modules/home/views/Components/spinner.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'bag_show.dart';
import 'categories.dart';
import 'header_slider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        HeaderSlider(),
        GetBuilder<HomeController>(builder: (context) {
          return context.dataLoading.value
              ? SizedBox(width: 100, height: 100, child: Spinner())
              : BagShowList();
        }),
        Center(
            child: Button(
                text: 'check all latest', color: Colors.white, width: 184)),
        Align(
          alignment: Alignment.topLeft,
          child: Text('Shop by categories',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.w600)),
        ),
        CategoriesList(),
        Center(
            child: Button(
                text: 'Browse all categories',
                color: Colors.white,
                width: 184)),
        SizedBox(height: 20),
      ]),
    ));
  }
}
