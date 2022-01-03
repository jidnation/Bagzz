import 'dart:convert';

import 'package:first/app/data/data_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final num = 1.obs;
  final RxString dataLocation = 'assets/Data/bags.json'.obs;
  final RxString favouriteLocation = 'assets/Data/favourite.json'.obs;
  final RxString categoryLocation = 'assets/Data/categories.json'.obs;
  final RxList dataContainer = <Data>[].obs;
  final RxList categoriesDataContainer = <Category>[].obs;
  final dataLoading = false.obs;
  final favouriteLoading = false.obs;
  final dataLength = 1.obs;
  final RxInt current = 0.obs;
  final categoriesDataLength = 1.obs;
  final favouriteLength = 1.obs;
  final RxInt currentTap = 0.obs;
  final RxList<Favourite> favouriteContainer = <Favourite>[].obs;

  @override
  void onInit() {
    super.onInit();
    getData();
    getCategoriesData();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {}

  changer() {
    if (num.value == 1) {
      num.value++;
      update();
    } else {
      num.value--;
      update();
    }
  }

  /*    LOADING THE DATA FILE   */
  Future<void> getData() async {
    dataLoading.value = true;
    final String response = await rootBundle.loadString(dataLocation.value);
    final data = await jsonDecode(response);

    dataContainer.value = DataList.fromjson(data).dataContainer;
    dataLength.value = dataContainer.length;
    dataLoading.value = false;
    update();
  }

  /*    CATEGORIES SESSION    */
  Future<void> getCategoriesData() async {
    dataLoading.value = true;
    final String response = await rootBundle.loadString(categoryLocation.value);
    final data = await jsonDecode(response);

    categoriesDataContainer.value =
        CategoryList.fromjson(data).categoryContainer;
    categoriesDataLength.value = categoriesDataContainer.length;
    dataLoading.value = false;
    update();
  }

  /* CHANGING THE HOME TAB BASED ON BOTTOM_NAVBAR */
  changeTab(int index) {
    currentTap.value = index;
    update();
  }

  /*    LOADING THE FAVOURITE FILE   */
  Future<void> getFavourite() async {
    favouriteLoading.value = true;
    final String response =
        await rootBundle.loadString(favouriteLocation.value);
    final favourite = await jsonDecode(response);

    favouriteContainer.value = FavouriteList.fromjson(favourite).favourite;
    favouriteLength.value = favouriteContainer.length;
    favouriteLoading.value = false;
    update();
  }
}
