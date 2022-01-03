import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      SvgPicture.asset('assets/icons/menu.svg', width: 24, height: 18),
      const SizedBox(width: 15),
      Text('bagzz',
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 25)),
      Spacer(),
      CircleAvatar(
          backgroundImage: AssetImage('assets/images/avater.png'),
          backgroundColor: Colors.black,
          radius: 20)
    ]);
  }
}
