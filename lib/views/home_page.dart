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
              //to reflect observable variable changes
              Obx((){
                return Text(
                  c.count.value.toString(),
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                );
              }),
             Text("this is the count")
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        c.increaseCount();
      }),
    );
  }
}
