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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  c.fetchImage();
                },
                child: Text("data"),
              ),
              SizedBox(height: 20),
              Obx(() {
                if (c.isLoading.value) {
                  return CircularProgressIndicator();
                } else {
                  return Image.network(c.imageUrl.value ?? "");
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
