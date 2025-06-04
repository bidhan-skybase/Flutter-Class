import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:demoapp/views/error_page.dart';
import 'package:demoapp/views/explore_page.dart';
import 'package:demoapp/views/landing_page.dart';
import 'package:demoapp/views/profile_pag.dart';
import 'package:demoapp/views/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  //to bring home page controller in the view
  final c = Get.put((HomePageController()));

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: c.currentIndex.value,
          onTap: (index) {
            c.changePage(index);
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: List.generate(c.pages.length, (index) {
            final page = c.pages[index];
            return BottomNavigationBarItem(
              icon: Icon(page["icon"]),
              label: page["label"],
            );
          }),
        ),
      ),
      body: Obx((){
        if(c.currentIndex.value==0){
          return LandingPage();
        }else if(c.currentIndex.value==1){
          return ExplorePage();
        }else if(c.currentIndex.value==2){
          return ProfilePage();
        }else if(c.currentIndex.value==3){
          return SettingsPage();
        }else{
          return ErrorPage();
        }
      }),
    );
  }
}
