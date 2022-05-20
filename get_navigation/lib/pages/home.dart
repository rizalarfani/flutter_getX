import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/route_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Tanpa getX
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const ProfilePage(),
                // ));

                // Dengan getX tanpa nama
                // Get.to(const ProfilePage());

                // Dengan getX menggunakan pushReplament
                // Get.off(const ProfilePage());

                // Dengan getX pushReplamentAll menghapus page tumpukan semau
                // Get.offAll(const ProfilePage());

                // Dengan getX mengirim argument
                Get.toNamed(RouteName.profile, arguments: "Ini dari Page Home");

                // Dengan getX pakai nama
                // Get.toNamed(RouteName.profile);
              },
              child: const Text("Next Page >>"),
            )
          ],
        ),
      ),
    );
  }
}
