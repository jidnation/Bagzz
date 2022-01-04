import 'package:flutter/material.dart';

class PaymentOptionTab extends StatelessWidget {
  const PaymentOptionTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(children: [
        Text(
            'We accepts the following forms of payment for online purchases: \n\n PayPal may not be used to purchase Made to Order Décor or DIY items.\n\n The full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation, confirmed availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed.',
            style: TextStyle(
              overflow: TextOverflow.clip,
              fontSize: 15,
              height: 1.6,
              letterSpacing: 0.2,
            )),
      ]),
    );
  }
}
