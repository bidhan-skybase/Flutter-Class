import 'package:get/get.dart';

//variable declaration
//logic work
// api calls
class HomePageController extends GetxController {

  //for making the variable observable.
  RxInt count = 0.obs;


  void increaseCount() {
    count = count + 1;
    print("the count is ${count}");
  }
}
