import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

//variable declaration
//logic work
// api calls
class HomePageController extends GetxController {

  RxnString imageUrl=RxnString();
  RxBool isLoading=false.obs;

  fetchImage() async {
    isLoading.value=true;
    var url = Uri.parse("https://dog.ceo/api/breeds/image/random");

    //2. Hitting the uri
    http.Response response = await http.get(url);

    //3. Converting the uri to map
    dynamic data = json.decode(response.body);

    imageUrl.value=data['message'];

    isLoading.value=false;
print(imageUrl.value);
    //4. Converting the map to custom flutter model
  }
}
