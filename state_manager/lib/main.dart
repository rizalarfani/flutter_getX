import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manager/controllers/count_controller.dart';
// import 'package:state_manager/controllers/orang_controllers.dart';
// import 'package:state_manager/models/orang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

// With GetBuilder state simple
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Manager GetX"),
      ),
      body: Center(
        child: GetBuilder<CountController>(
          init: CountController(),
          builder: (controller) => Text(
            "Anggka ${controller.counter}",
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            tooltip: 'Counter',
            child: const Icon(Icons.plus_one),
            onPressed: () => Get.find<CountController>().incrementSimple(),
          )
        ],
      ),
    );
  }
}


// With GetX state Reactive
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("State Manager GetX"),
//       ),
//       body: Center(
//         child: GetX<CountController>(
//           init: CountController(),
//           builder: (controller) => Text(
//             "Anggka ${controller.counter}",
//             style: const TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             tooltip: 'Counter',
//             child: const Icon(Icons.plus_one),
//             onPressed: () => Get.find<CountController>().increment(),
//           )
//         ],
//       ),
//     );
//   }
// }


// With Obx state Reactive
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // final counController = Get.put(CountController());
//     // var orang = Orang(nama: 'rijal arfani', umur: 22).obs;
//     final orangController = Get.put(OrangController());
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("State Manager GetX"),
//       ),
//       body: Center(
//         child: Obx(
//           () => Text(
//             "Nama saya ${orangController.orang.nama}",
//             style: const TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             tooltip: 'UpperCase',
//             child: const Icon(Icons.plus_one),
//             onPressed: () {
//               // orang.nama.value = orang.nama.value.toUpperCase();

//               // With Class Obs
//               // orang.update((_) =>
//               //     orang.value.nama = orang.value.nama.toString().toUpperCase());
//               orangController.changeUpperCase();
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
