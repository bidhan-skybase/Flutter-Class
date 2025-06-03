import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

//variable declaration
//logic work
// api calls
class HomePageController extends GetxController {
  //making the fruits list observable
  RxList<String> fruits = ['mango', 'banana', 'apple', 'peach'].obs;
  TextEditingController fruitName = TextEditingController();

  void addFruits() {
    if (fruitName.text.isNotEmpty) {
      fruits.add(fruitName.text);
    }
  }

  void deleteFruit(int index) {
   if(index<fruits.length){
     fruits.removeAt(index);
   }
  }
}
