import 'package:first/app/data/configuration.dart';
import 'package:flutter/material.dart';

class BottomSheetSetter extends StatelessWidget {
  final Widget child;
  const BottomSheetSetter({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: getProportionateScreenHeight(445),
        width: SizeConfig.screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: child,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.91),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(57), topRight: Radius.circular(57))),
      ),
      Positioned(
        top: 10,
        right: SizeConfig.screenWidth * 0.35,
        child: Container(
          width: SizeConfig.screenWidth * 0.35,
          height: 2,
          color: Colors.black,
        ),
      ),
    ]);
  }
}
