import 'package:demoapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//variable declaration
//logic work
// api calls
class HomePageController extends GetxController {
  Rx<Color> bgColor=AppColors.refreshingColor.obs;

  void onColorPressed(Color color){
    bgColor.value=color;
  }
}
