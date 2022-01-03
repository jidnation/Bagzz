import 'package:first/app/data/configuration.dart';
import 'package:first/app/modules/home/controllers/home_controller.dart';
import 'package:first/app/modules/home/views/Components/spinner.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CategoryView extends StatelessWidget {
  final String text;
  final String img;
  const CategoryView({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: getProportionateScreenWidth(170),
        height: getProportionateScreenHeight(324),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        )),
      ),
      Positioned(
        bottom: 0,
        right: 7.65,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          width: getProportionateScreenWidth(text.length.roundToDouble() * 9),
          height: getProportionateScreenHeight(45),
          decoration: BoxDecoration(color: Colors.black),
          child: Center(
            child: Text(text,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                )),
          ),
        ),
      )
    ]);
  }
}

/* CATEGORIES LIST */

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (loader) {
      var data = loader.categoriesDataContainer;
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        height: getProportionateScreenHeight(2 * 324),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: loader.categoriesDataLength.value,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.69,
              crossAxisCount: 2,
              mainAxisSpacing: 15,
            ),
            itemBuilder: (_, index) {
              return loader.dataLoading.value
                  ? SizedBox(width: 100, height: 100, child: Spinner())
                  : CategoryView(
                      img: data[index].image, text: data[index].category);
            }),
      );
    });
  }
}
