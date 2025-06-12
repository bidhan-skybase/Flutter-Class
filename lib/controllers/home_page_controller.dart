import 'dart:convert';
import 'package:demoapp/constant/api.dart';
import 'package:demoapp/model/recipe_model.dart';
import 'package:demoapp/views/recipe_details_page.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController {
  RxBool isLoading = false.obs;

  RxList<RecipeModel> recipes = RxList();

  @override
  void onInit() {
    fetchAllRecipes();
    super.onInit();
  }

  void fetchAllRecipes() async {
    isLoading.value = true;
    var url = Uri.parse(Api.getAllRecipes);
    http.Response response = await http.get(url);
    dynamic data = json.decode(response.body);
    recipes.value = recipesFromJson(data['recipes']);
    print(recipes.length);
    isLoading.value=false;
  }

  void onCardTap(int id){
    Get.toNamed(RecipeDetailsPage.routeName,arguments: {
      "id":id
    });
  }
}
