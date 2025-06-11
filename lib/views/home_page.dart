import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:demoapp/model/to_do_list_model.dart';
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
      body: Center(
        child: Column(
          children: [

            SizedBox(height: 20),
            Obx(() {
              return Expanded(
                child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: c.tasks.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    ToDoListModel task = c.tasks[index];
                    return ListTile(
                      title: Text(task.todo ?? ""),
                      trailing:
                      task.completed??true?
                      Icon(Icons.check):Icon(Icons.close),
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
