import 'package:flutter/material.dart';
import 'package:get/get.dart';

//variable declaration
//logic work
// api calls
class HomePageController extends GetxController {
  //for making the variable observable.
  RxInt count = 0.obs;

  RxBool isLiked = true.obs;

  void toggleLikeStatus() {
    isLiked.value = !isLiked.value;
  }

  void increaseCount() {
    count = count + 1;
    print("the count is ${count}");
  }

  void decreaseCount() {
    count = count - 1;
    print("the count is ${count}");
  }

  void resetCount() {
    count.value = 0;
    print("the count is ${count}");
  }

  RxList pages =
      [
        {"icon": Icons.home, "label": "Home"},//0
        {"icon": Icons.explore, "label": "Explore"},//1
        {"icon": Icons.person, "label": "Profile"},//2
        {"icon": Icons.settings, "label": "Settings"},//3
      ].obs;

  RxInt currentIndex=0.obs;


  void changePage(int index){
    currentIndex.value=index;
  }
}
