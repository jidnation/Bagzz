import 'package:first/app/Utility/buttons.dart';
import 'package:first/app/Utility/underline_text.dart';
import 'package:first/app/data/configuration.dart';
import 'package:first/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class FavouriteTab extends StatelessWidget {
  const FavouriteTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (favourite) {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(children: [
            FavouriteListView(favourite: favourite),
            const SizedBox(height: 40),
            Button(
                text: 'add all to cart',
                width: getProportionateScreenWidth(190),
                color: Colors.black)
          ]),
        ),
      );
    });
  }
}

/*      FAVOURITE LIST    */
class FavouriteListView extends StatelessWidget {
  final HomeController favourite;
  const FavouriteListView({
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
        return FavouritePicked(
          image: favourite.favouriteContainer[index].image,
          attr: favourite.favouriteContainer[index].atr,
          adds: favourite.favouriteContainer[index].sub,
          name: favourite.favouriteContainer[index].name,
        );
      },
      separatorBuilder: (_, index) => Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Divider(color: Colors.grey.shade500, thickness: 1.7)),
    );
  }
}

/*    FAVOURITE SELECTIONS     */
class FavouritePicked extends StatelessWidget {
  final String? name;
  final String? attr;
  final String? adds;
  final String? image;
  const FavouritePicked({
    Key? key,
    required this.name,
    required this.attr,
    required this.adds,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Image.asset(image!),
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
          const UnderLinedText(text: 'remove')
        ]),
      ]),
    ]);
  }
}
