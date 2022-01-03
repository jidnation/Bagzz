import 'package:first/app/Utility/buttons.dart';
import 'package:first/app/data/configuration.dart';
import 'package:first/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CartTab extends StatelessWidget {
  const CartTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (favourite) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(children: [
            // CartView(favourite: favourite),
            const SizedBox(height: 40),
            Button(
                text: 'proceed to buy',
                width: getProportionateScreenWidth(187),
                color: Colors.black)
          ]),
        ),
      );
    });
  }
}

/*      CART LIST    */
class CartView extends StatelessWidget {
  final HomeController favourite;
  const CartView({
    Key? key,
    required this.favourite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: favourite.favouriteLength.value,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return CartPicked(
          image: favourite.favouriteContainer[index].image,
          attr: favourite.favouriteContainer[index].atr,
          adds: favourite.favouriteContainer[index].sub,
          name: favourite.favouriteContainer[index].name,
          price: favourite.favouriteContainer[index].price,
          unit: favourite.favouriteContainer[index].unit,
        );
      },
      separatorBuilder: (_, index) => Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Divider(color: Colors.grey.shade500, thickness: 1.7)),
    );
  }
}

/*    CART SELECTIONS     LOADING FROM FAVOURITE    */
class CartPicked extends StatelessWidget {
  final String? name;
  final String? attr;
  final String? adds;
  final String? image;
  final double? price;
  final int? unit;
  const CartPicked({
    Key? key,
    required this.name,
    required this.attr,
    required this.adds,
    required this.price,
    required this.unit,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Column(children: [
          Image.asset(image!),
          const SizedBox(height: 10),
          Container(
              height: getProportionateScreenHeight(40),
              width: getProportionateScreenWidth(90),
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              child: Row(children: [
                Container(
                    width: getProportionateScreenWidth(30),
                    color: Colors.black,
                    child: FaIcon(
                      FontAwesomeIcons.minus,
                      color: Colors.white,
                    )),
                Expanded(
                  child: Text('$unit!',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
                Container(
                    width: getProportionateScreenWidth(30),
                    color: Colors.black,
                    child: FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                    ))
              ]))
        ]),
        const SizedBox(width: 7),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(name!,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                )),
            SizedBox(height: 5),
            Text(attr!,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                )),
            SizedBox(height: 3),
            Text(adds!,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 13,
                ))
          ]),
          const SizedBox(height: 20),
          Text('\$$price!',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              )),
        ]),
      ]),
    ]);
  }
}
