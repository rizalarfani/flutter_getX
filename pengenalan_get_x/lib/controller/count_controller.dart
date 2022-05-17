import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
  var isDark = false.obs;

  void increment() => counter++;
  void decrement() => counter--;

  void changeDart() => isDark.value = !isDark.value;
}
