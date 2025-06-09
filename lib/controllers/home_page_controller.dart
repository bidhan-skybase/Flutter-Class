import 'dart:convert';

import 'package:demoapp/models/joke_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

//variable declaration
//logic work
// api calls
class HomePageController extends GetxController {
  //nullable
  Rxn<JokeModel> joke = Rxn();

  fetchJoke() async {
    var url = Uri.parse("https://official-joke-api.appspot.com/random_joke");

    //2. Hitting the uri
    http.Response response = await http.get(url);

    //3. Converting the uri to map
    dynamic data = json.decode(response.body);

    //4. Converting the map to custom flutter model
    joke.value = JokeModel.fromJson(data);
  }
}
