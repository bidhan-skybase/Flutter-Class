import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  //to bring home page controller in the view
  final c = Get.put((HomePageController()));

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Obx(() {
                if (c.isLoading.value) {
                  return CircularProgressIndicator();
                } else {
                  return Expanded(
                    child: GridView.builder(
                      itemCount: c.recipes.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, //column count
                            crossAxisSpacing: 8,
                            childAspectRatio: 0.8,
                            mainAxisSpacing: 8,
                          ),
                      itemBuilder: (context, index) {
                        var recipe = c.recipes[index];
                        return Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            // Required for shadow to be visible
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 6,
                                offset: Offset(
                                  0,
                                  3,
                                ), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(child: Image.network(recipe.image ?? "")),
                              Text(recipe.name ?? "",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              Row(
                                children: [
                                  Text("Difficulty: ",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                  Text(recipe.difficulty??"",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Cuisine: ",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                  Text(recipe.cuisine??"",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                ],
                              )

                            ],
                          ),
                        );
                      },
                    ),
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
