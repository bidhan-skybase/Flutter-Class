import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: Text("Second page")),
      body: Column(children: [Text(data.toString())]),
    );
  }
}
