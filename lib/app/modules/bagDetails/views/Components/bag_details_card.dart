import 'package:first/app/Utility/buttons.dart';
import 'package:first/app/Utility/underline_text.dart';
import 'package:first/app/data/configuration.dart';
import 'package:first/app/data/data_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BagDetailsCard extends StatelessWidget {
  const BagDetailsCard({
    Key? key,
    required data,
  })  : _data = data,
        super(key: key);

  final Data _data;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                _data.image as String,
                width: getProportionateScreenWidth(200),
                height: getProportionateScreenHeight(185),
                fit: BoxFit.contain,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(_data.name as String,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
                  const SizedBox(height: 5),
                  Text(_data.atr as String,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                  const SizedBox(height: 5),
                  Text(_data.sub as String,
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12)),
                  const SizedBox(height: 15),
                  Text('\$${_data.price!.round()}',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 22)),
                  const SizedBox(height: 15),
                  Button(
                      text: 'buy now',
                      width: 97,
                      color: Colors.black,
                      distance: 14),
                ]),
                UnderLinedText(text: 'add to cart', size: 15)
              ])
            ])),
        Positioned(
            top: 18,
            right: getProportionateScreenWidth(7),
            child: FaIcon(FontAwesomeIcons.heart, size: 18))
      ]),
    ]);
  }
}
