import 'package:flutter/material.dart';

class UnderLinedText extends StatelessWidget {
  final String text;
  const UnderLinedText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              letterSpacing: 0.2,
            )),
        Container(
          margin: const EdgeInsets.only(top: 3),
          width: text.length.roundToDouble() * 12,
          height: 2,
          color: Colors.black,
        )
      ],
    );
  }
}
