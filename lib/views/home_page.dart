import 'package:demoapp/colors.dart';
import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final c = Get.put((HomePageController()));

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => c.isSearchFieldTap.value = false,
      child: Scaffold(
        appBar: AppBar(title: Text("Home Page")),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: c.sc,
                    onTap: () {
                      c.isSearchFieldTap.value = true;
                    },
                    onChanged: (value) {
                      c.debouncer.debounce(
                        duration: Duration(milliseconds: 300),
                        onDebounce: () {
                          c.searchText(value);
                        },
                      );
                    },
                    decoration: InputDecoration(
                      prefixIcon: Obx(() {
                        return Icon(
                          Icons.search,
                          color:
                              c.isSearchFieldTap.value == true
                                  ? Colors.blue
                                  : Colors.grey,
                        );
                      }),

                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  Obx(() {
                    return ListView.builder(
                      itemCount: c.filteredItems.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(title: Text(c.filteredItems[index]));
                      },
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
