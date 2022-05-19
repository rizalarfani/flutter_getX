import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0.obs;
  TextEditingController controller = TextEditingController();

  void increment() => count++;
  void clear() => count.value = 0;

  @override
  void onInit() {
    print("on Init");

    // workers
    // Jalankan terus ketika ada perubahan dilistener
    ever(
      count,
      (_) => print('jalankan sesuatu'),
    );
    // Jalankan terus ketika ada perubahan dilistener dengan list listener
    everAll(
      [count],
      (_) => print('Jalankan sesuatu'),
    );
    // Jalakan 1 kali ketika ada perubahan dilistener
    once(
      count,
      (_) => print("Jalankan sesuatu!"),
    );

    // Dijalkan ketika ada perubahan terakhir pada listener dan ada time
    debounce(
      count,
      (_) => print("Jalankan sesuatu"),
      time: const Duration(seconds: 2),
    );

    interval(
      count,
      (_) => print("Jalankan sesuatu"),
      time: const Duration(seconds: 3),
    );

    super.onInit();
  }
}
