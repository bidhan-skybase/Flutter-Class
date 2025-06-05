import 'package:demoapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//variable declaration
//logic work
// api calls
class HomePageController extends GetxController {
  Rx<Color> bgColor = AppColors.refreshingColor.obs;


  // list of custom maps
  RxList bgColorMap =
      [
        {"title": "Primary Color", "color": AppColors.primaryColor},
        {"title": "Sign Up Color", "color": AppColors.signUpColor},
        {"title": "Refreshing Color", "color": AppColors.refreshingColor},
      ].obs;

  void onColorPressed(Color color) {
    bgColor.value = color;
  }
}
