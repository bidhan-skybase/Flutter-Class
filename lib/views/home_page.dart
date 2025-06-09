import 'dart:convert';

import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:demoapp/models/joke_model.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () async {
                  c.fetchJoke();
                },
                child: Text("Hit api"),
              ),

              SizedBox(height: 20),
              Obx(() {
                return Column(
                  children: [
                    Text(
                      "Question: ${c.joke.value?.setup ?? ""}",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      "Answer: ${c.joke.value?.punchline ?? ""}",
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                );
              })

            ],
          ),
        ),
      ),
    );
  }
}
