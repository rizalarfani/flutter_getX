import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/detail/1?name=Sepatu baru&harga=1000000');
              },
              child: const Text("Produk 1"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/detail/2?name=Sepatu lama&harga=5000000');
              },
              child: const Text("Produk 2"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/detail/2?name=Baju baru&harga=100000');
              },
              child: const Text("Produk 3"),
            ),
          ],
        ),
      ),
    );
  }
}
