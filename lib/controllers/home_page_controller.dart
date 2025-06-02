import 'package:demoapp/image_paths.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  Map product = {
    "imageUrl": ImagePaths.shoeImage,
    "name": "Nike city",
    "category": "shoe",
    "price": "Rs. 12000",
    "detail":
        "Nike C1TY is engineered to overcome anything the city throws your way. A mesh upper keeps the fit breathable, while the reinforced sides and toe box help protect your feet from the elements. Each colorway is inspired by the spirit of city life—giving street style a whole new meaning.",
  };
}
