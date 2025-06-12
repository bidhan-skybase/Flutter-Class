import 'package:demoapp/controllers/recipe_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecipeDetailsPage extends StatelessWidget {
  static const routeName = "/recipe-details-page";
  final rc = Get.find<RecipeController>();

  RecipeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(() {
            if (rc.isLoading.value) {
              return CircularProgressIndicator();
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    rc.recipe.value?.image ?? "",
                    height: 200,
                    width: Get.width,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    rc.recipe.value?.name ?? "",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 12),

                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.greenAccent.withOpacity(0.4),
                        ),
                        padding: EdgeInsets.all(4),
                        child: Text(rc.recipe.value?.rating.toString() ?? ""),
                      ),
                      SizedBox(width: 6),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.yellowAccent.withOpacity(0.4),
                        ),
                        padding: EdgeInsets.all(4),
                        child: Text(
                          rc.recipe.value?.difficulty.toString() ?? "",
                        ),
                      ),
                      SizedBox(width: 6),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.orangeAccent.withOpacity(0.4),
                        ),
                        padding: EdgeInsets.all(4),
                        child: Text(rc.recipe.value?.servings.toString() ?? ""),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: rc.recipe.value?.ingredients?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          padding: EdgeInsets.all(4),
                          margin: EdgeInsets.only(right: 12),
                          child: Text(
                            rc.recipe.value?.ingredients?[index] ?? "",
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Instructions",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: rc.recipe.value?.instructions?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(4),
                        margin: EdgeInsets.only(right: 12),
                        child: Text(
                          "${index + 1}. ${rc.recipe.value?.instructions?[index] ?? ""}",
                          style: TextStyle(fontSize: 16),
                        ),
                      );
                    },
                  ),
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
