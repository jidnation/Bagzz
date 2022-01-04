import 'package:first/app/data/configuration.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        height: SizeConfig.screenHeight * 0.80,
        width: SizeConfig.screenWidth,
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
          Form(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Type here to search',
                  hintStyle: TextStyle(fontSize: 20)),
            ),
          )
        ])),
      ),
      Positioned(
        top: 10,
        right: 40,
        child: FaIcon(
          FontAwesomeIcons.times,
          color: Colors.black,
          size: 20,
        ),
      )
    ]);
  }
}
