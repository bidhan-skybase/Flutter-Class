import 'dart:convert';

import 'package:demoapp/constant/api.dart';
import 'package:demoapp/model/recipe_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RecipeController extends GetxController {
  Rxn<RecipeModel> recipe = Rxn();
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    print("on init");
    var args = Get.arguments;
    fetchRecipeDetails(args['id'].toString());
    super.onInit();
  }

  void fetchRecipeDetails(String id) async {
    isLoading.value = true;
    var url = Uri.parse(Api.getDetails.replaceAll('{id}', id));
    http.Response response = await http.get(url);
    dynamic data = json.decode(response.body);
    recipe.value = RecipeModel.fromJson(data);
    print(recipe.value?.name);
    isLoading.value = false;
  }
}
