import 'package:demoapp/controllers/home_page_controller.dart';
import 'package:demoapp/controllers/recipe_controller.dart';
import 'package:demoapp/views/home_page.dart';
import 'package:demoapp/views/recipe_details_page.dart';
import 'package:get/get.dart';

final List<GetPage> getPages = <GetPage>[
  GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => HomePageController());
      })),
  GetPage(
      name: RecipeDetailsPage.routeName,
      page: () => RecipeDetailsPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => RecipeController());
      })),
];