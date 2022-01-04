import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'Components/body.dart';
import 'Components/bottom_bar.dart';
import 'Components/header.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white, elevation: 0, title: Header()),
        body: GetBuilder<HomeController>(builder: (context) {
          return Body();
        }),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
