import 'package:first/app/data/data_model.dart';
import 'package:first/app/modules/bagDetails/views/Components/payment_tab.dart';
import 'package:first/app/modules/bagDetails/views/Components/shipping_tab.dart';
import 'package:flutter/material.dart';

import 'description_tab.dart';

class TabSession extends StatefulWidget {
  final Data data;
  TabSession({Key? key, required this.data}) : super(key: key);

  static late TabController tabController;
  @override
  _TabSessionState createState() => _TabSessionState();
}

class _TabSessionState extends State<TabSession>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    TabSession.tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Data data = widget.data;
    return Column(children: [
      SingleChildScrollView(
        child: TabBar(
            controller: TabSession.tabController,
            labelColor: Colors.black,
            labelPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            labelStyle: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
            indicatorColor: Colors.black,
            tabs: [
              Text('Description'),
              Text('Shipping info'),
              Text('Payment Options')
            ]),
      ),
      SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(maxHeight: 360),
          child: TabBarView(controller: TabSession.tabController, children: [
            DescriptionTab(data: data),
            ShippingInfo(),
            PaymentOptionTab()
          ]),
        ),
      )
    ]);
  }
}
