import 'package:demoapp/views/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("First page"),
      ),
      body: Column(

        children: [
          ElevatedButton(
            onPressed: () {
              // Get.to(()=>SecondPage());
              // Get.off(()=>SecondPage());
              Get.offAll(()=>SecondPage());

            },
            child: Text("Press for Second page"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Press for First page"),
          ),
        ],
      ),
    );
  }
}
