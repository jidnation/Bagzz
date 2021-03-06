import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final double width;
  final Color color;
  final double? distance;
  const Button(
      {Key? key,
      required this.text,
      required this.width,
      required this.color,
      this.distance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
            bottom: (distance == null) ? 30 : distance as double),
        width: width,
        height: 40,
        decoration: BoxDecoration(
            color: color,
            border: (color == Colors.white)
                ? Border.all(color: Colors.black)
                : Border.all(color: Colors.transparent)),
        child: Center(
          child: Text(text.toUpperCase(),
              style: TextStyle(
                color: (color == Colors.white) ? Colors.black : Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              )),
        ),
      ),
    );
  }
}
