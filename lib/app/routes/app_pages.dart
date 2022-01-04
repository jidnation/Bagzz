import 'package:get/get.dart';

import '../modules/bagDetails/bindings/bag_details_binding.dart';
import '../modules/bagDetails/views/bag_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BAG_DETAILS,
      page: () => BagDetailsView(),
      binding: BagDetailsBinding(),
    ),
  ];
}
