import 'package:flutter_map_directions/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}