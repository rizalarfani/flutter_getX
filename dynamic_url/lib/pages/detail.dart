import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailProduk extends StatelessWidget {
  const DetailProduk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Name ${Get.parameters['name']}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Produk id ${Get.parameters['id']}'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Produk Name ${Get.parameters['name']}'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Produk Harga ${Get.parameters['harga']}'),
            ),
          ],
        ),
      ),
    );
  }
}
