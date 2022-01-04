import 'package:flutter/material.dart';

class UnderLinedText extends StatelessWidget {
  final String text;
  final double? size;
  const UnderLinedText({
    Key? key,
    required this.text,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: (size != null) ? size : 20,
              letterSpacing: 0.2,
            )),
        Container(
          margin: const EdgeInsets.only(top: 2),
          width: (size == null)
              ? text.length.roundToDouble() * 11
              : text.length.roundToDouble() * 8,
          height: 2,
          color: Colors.black,
        )
      ],
    );
  }
}
