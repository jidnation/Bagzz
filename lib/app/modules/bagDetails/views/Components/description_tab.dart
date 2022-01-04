import 'package:first/app/data/data_model.dart';
import 'package:flutter/material.dart';

class DescriptionTab extends StatelessWidget {
  final Data data;
  const DescriptionTab({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(children: [
        Text(data.description.toString(),
            style: TextStyle(
              overflow: TextOverflow.clip,
              fontSize: 15,
              height: 1.6,
              letterSpacing: 0.2,
            )),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Material & Care',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
              "All products are made with carefully selected materials. Please handle with care for longer product life."
              "\n- Protect from direct light, heat and rain. Should it become wet, dry it immediately with a soft cloth"
              "\n- Store in the provided flannel bag or box"
              "\n- Clean with a soft, dry cloth",
              style: TextStyle(
                overflow: TextOverflow.clip,
                fontSize: 15,
                height: 1.6,
                letterSpacing: 0.2,
              )),
        )
      ]),
    );
  }
}
