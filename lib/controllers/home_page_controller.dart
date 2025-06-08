import 'package:demoapp/helpers/storage_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

//variable declaration
//logic work
// api calls
class HomePageController extends GetxController {
  TextEditingController userName = TextEditingController();

  @override
  onInit() {
    fetchUserName();
    super.onInit();
  }

  void saveLocally() {
    StorageHelpers.saveUserName(userName.text);
  }

  void fetchUserName() {
print(StorageHelpers.fetchUserName());
    userName.text = StorageHelpers.fetchUserName() ?? "no user name";
    print(userName);
  }
}
