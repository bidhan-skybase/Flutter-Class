import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var product = Get.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("Details page")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product['imageUrl'],
              width: Get.width,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    product['name'],
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  Row(children: [
                    Text(product['category']),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text("|"),
                    ),
                    Text(product['price']),
                  ],),
                  SizedBox(
                    height: 20,
                  ),
                  Text(product['detail']),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
