import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_navigation/pages/home.dart';
import 'routes/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialRoute: '/',
      getPages: AppRoute.pages,
    );
  }
}
