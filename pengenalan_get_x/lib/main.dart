import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pengenalan_get_x/controller/count_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterController = Get.put(CounterController());
    return Obx(
      () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: counterController.isDark.value
            ? ThemeData.dark()
            : ThemeData.light(),
        home: const MyHome(),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterController = Get.find<CounterController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengenalan getX'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            tooltip: "Increment",
            child: const Icon(Icons.plus_one),
            onPressed: () => counterController.increment(),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            tooltip: "Decrement",
            child: const Icon(Icons.remove),
            onPressed: () => counterController.decrement(),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            tooltip: "Change Theme Data",
            child: const Icon(Icons.three_mp),
            onPressed: () => counterController.changeDart(),
          )
        ],
      ),
      body: Center(
        child: Obx(
          () => Text(
            'Anggka ${counterController.counter.value}',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
