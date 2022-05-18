import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UniqueId extends StatelessWidget {
  const UniqueId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Manager GetX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
              id: 'hello',
              init: CountController(),
              builder: (controller) => Text(
                "Anggka ${controller.count}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GetBuilder<CountController>(
              id: 'nama',
              init: CountController(),
              builder: (controller) => Text(
                "Nama saya ${controller.nama}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            tooltip: 'Counter',
            child: const Icon(Icons.plus_one),
            onPressed: () {
              Get.find<CountController>().increment();
            },
          ),
          const SizedBox(width: 5),
          FloatingActionButton(
            tooltip: 'Change Name upperCase',
            child: const Icon(Icons.plus_one),
            onPressed: () {
              Get.find<CountController>().changeUperCase();
            },
          )
        ],
      ),
    );
  }
}

class CountController extends GetxController {
  var count = 0;
  var nama = 'rijal';
  void increment() {
    count++;
    update(['hello']);
  }

  void changeUperCase() {
    nama = nama.toUpperCase();
    update(['nama']);
  }
}
