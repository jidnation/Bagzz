import 'package:first/app/Utility/underline_text.dart';
import 'package:first/app/data/configuration.dart';
import 'package:first/app/modules/home/controllers/home_controller.dart';
import 'package:first/app/modules/home/views/Components/spinner.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Display extends StatelessWidget {
  final String img;
  final String name;

  const Display({Key? key, required this.img, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 4),
          width: getProportionateScreenWidth(170),
          height: getProportionateScreenHeight(310),
          color: kPrimaryColor,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(img),
                Text(name,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      letterSpacing: 0.2,
                    )),
                UnderLinedText(text: 'shop now'),
              ]),
        ),
        Positioned(
            top: 5, right: 15, child: FaIcon(FontAwesomeIcons.heart, size: 20))
      ],
    );
  }
}

/*   BAG SHOW LIST     */
class BagShowList extends StatelessWidget {
  const BagShowList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (loader) {
      var data = loader.dataContainer;
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        height: getProportionateScreenHeight(2 * 330),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: loader.dataLength.value,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.69,
              crossAxisCount: 2,
              mainAxisSpacing: 15,
            ),
            itemBuilder: (_, index) {
              return loader.dataLoading.value
                  ? SizedBox(width: 100, height: 100, child: Spinner())
                  : Display(img: data[index].image, name: data[index].name);
            }),
      );
    });
  }
}
