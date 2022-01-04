import 'package:get/get.dart';

import '../controllers/bag_details_controller.dart';

class BagDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BagDetailsController>(
      () => BagDetailsController(),
    );
  }
}
