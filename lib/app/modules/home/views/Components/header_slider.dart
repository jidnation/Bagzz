import 'package:first/app/data/configuration.dart';
import 'package:first/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderSlider extends StatelessWidget {
  const HeaderSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GetBuilder<HomeController>(builder: (value) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            height: getProportionateScreenHeight(305),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/slider-${value.num.value}.png'),
                    fit: BoxFit.cover)),
          );
        }),
        Positioned(
            bottom: 0,
            right: 15,
            child: SizedBox(
              width: 92,
              child: Column(children: [
                Text(" This \n season's \n latest ",
                    style: TextStyle(
                      backgroundColor: Colors.white,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    )),
                const SizedBox(height: 15),
                GetBuilder<HomeController>(
                    builder: (getter) => Row(children: [
                          InkWell(
                            onTap: () {
                              getter.changer();
                            },
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(color: Colors.black),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                getter.changer();
                              },
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(color: Colors.black),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          )
                        ]))
              ]),
            ))
      ],
    );
  }
}
