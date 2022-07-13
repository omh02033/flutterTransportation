import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  static HomeScreenController get to => Get.find();
  int selectNavigationBarIdx = 0;

  void changeIdx(int idx) {
    selectNavigationBarIdx = idx;
    update();
  }
}