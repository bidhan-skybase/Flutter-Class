import 'package:demoapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:get/get.dart';

//variable declaration
//logic work
// api calls
class HomePageController extends GetxController {
  RxBool isSearchFieldTap = false.obs;
  TextEditingController sc = TextEditingController();
  final Debouncer debouncer = Debouncer();

  RxList<String> items =
      ['Banana',
        'Orange',
        'Grapes',
        'Pineapple',
        'Mango',
        'Watermelon',
        'Strawberry',
        'Blueberry',
        'Peach',
      ].obs;

  RxList filteredItems = [].obs;
//aPPlE
  void searchText(String value) {
    filteredItems.clear();
    for (var item in items) {
      //apple
      if (item.toLowerCase().contains(value.toLowerCase())) {


        filteredItems.add(item);
      }
    }
  }
}
