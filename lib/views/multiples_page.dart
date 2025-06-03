import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiplesPage extends StatelessWidget {
  const MultiplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    int? args = int.tryParse(Get.arguments);

    print((args ?? 1) * 2);
    print(args);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [Text("The twice of $num is ${(args ?? 0) * 2}")],
          ),
        ),
      ),
    );
  }
}
