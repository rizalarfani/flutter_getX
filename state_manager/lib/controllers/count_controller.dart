import 'package:get/get.dart';

class CountController extends GetxController {
  var counter = 0.obs;
  var counterSimple = 0;

  void increment() => counter++;

  void incrementSimple() {
    counterSimple++;
    update();
  }
}
