import 'package:flutter/material.dart';

class RecipeDetailsPage extends StatelessWidget {
  static const routeName = "/recipe-details-page";

  const RecipeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(child: Column()),
    );
  }
}
