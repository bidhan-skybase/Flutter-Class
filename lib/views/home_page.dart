import 'package:demoapp/colors.dart';
import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final c = Get.put((HomePageController()));

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Obx((){
      return Scaffold(
        backgroundColor: c.bgColor.value,
        appBar: AppBar(title: Text("Home Page")),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(onPressed: () {
                  c.onColorPressed(AppColors.primaryColor);

                }, child: Text("Primary color")),
                ElevatedButton(
                  onPressed: () {
                    c.onColorPressed(AppColors.signUpColor);
                  },
                  child: Text("signUpColor color"),
                ),
                ElevatedButton(onPressed: () {
                  c.onColorPressed(AppColors.refreshingColor);
                }, child: Text("refreshing color")),
              ],
            ),
          ),
        ),
      );
    });

  }
}
