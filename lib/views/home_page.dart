import 'dart:convert';

import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:demoapp/models/joke_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

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
              ElevatedButton(onPressed: () async{

                //1. Declaring the uri
                var url = Uri.parse("https://official-joke-api.appspot.com/random_joke");

                //2. Hitting the uri
                http.Response response = await http.get(url);

                //3. Converting the uri to map
                dynamic data = json.decode(response.body);

                //4. Converting the map to custom flutter model
                JokeModel jokeResponse=JokeModel.fromJson(data);
                print(jokeResponse.type);
                print(response);
              }, child: Text("Hit api")),
            ],
          ),
        ),
      ),
    );
  }
}
