import 'package:demoapp/colors.dart';
import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final c = Get.put((HomePageController()));

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: c.bgColor.value,
        appBar: AppBar(title: Text("Home Page")),
        body: Center(
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: c.bgColorMap.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {
                      c.onColorPressed(c.bgColorMap[index]['color']);
                    },
                    child: Text(c.bgColorMap[index]['title']),
                  );
                },
              ),
              //wrap with sizedbox in case of horizontal scrolling

              SizedBox(
                height: 40,
                child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(right: 40),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    if(index.isEven){
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("test $index"),
                        ),
                      );
                    }else{
                      return SizedBox();
                    }

                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
