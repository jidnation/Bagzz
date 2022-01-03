import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Colors
Color kPrimaryColor = Color(0xffe5e5e5);

//contacts
const String returnPolicy =
    'Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.';
const String materialAndCare =
    'All products are made with carefully selected materials. Please handle with care for longer product life. - Protect from direct light, heat and rain. Should it become wet, dry it immediately with a soft cloth - Store in the provided flannel bag or box - Clean with a soft, dry cloth';
const String shippingInfo =
    'Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available.';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late MediaQueryData mediaQuery;
  static late Orientation orientation;
  static late double defaultSize;

  void init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
    orientation = mediaQuery.orientation;
    defaultSize = (orientation == Orientation.landscape)
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }
}

//Get the properties size a per the screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;

  //826 is the layout height of the design use
  return (inputHeight / 826) * screenHeight;
}

//Get the properties size a per the screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;

  //375 is the layout height of the design use
  return (inputWidth / 375) * screenWidth;
}
