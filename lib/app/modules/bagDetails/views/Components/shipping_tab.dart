import 'package:flutter/material.dart';

class ShippingInfo extends StatelessWidget {
  const ShippingInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(children: [
        Text(
            'Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available.',
            style: TextStyle(
              overflow: TextOverflow.clip,
              fontSize: 15,
              height: 1.6,
              letterSpacing: 0.2,
            )),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Return Policy',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
              "Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.",
              style: TextStyle(
                overflow: TextOverflow.clip,
                fontSize: 15,
                height: 1.7,
                letterSpacing: 0.2,
              )),
        )
      ]),
    );
  }
}
