import 'package:first/app/data/configuration.dart';
import 'package:first/app/modules/home/views/Components/bottom_bar.dart';
import 'package:first/app/modules/home/views/Components/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bag_details_controller.dart';
import 'Components/bag_details_card.dart';
import 'Components/tab_session.dart';

class BagDetailsView extends GetView<BagDetailsController> {
  const BagDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // JustThis().tabController;
    var _data = Get.arguments;
    return SafeArea(
      child: Stack(children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
              child: Padding(
            padding:
                const EdgeInsets.only(left: 10, bottom: 7, right: 10, top: 57),
            child: Column(children: [
              BagDetailsCard(data: _data),
              TabSession(data: _data)
            ]),
          )),
          bottomNavigationBar: const BottomNavBar(),
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              color: Colors.white,
              child: Header()),
        )
      ]),
    );
  }
}
