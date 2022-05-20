import 'package:dynamic_url/pages/home_page.dart';
import 'package:dynamic_url/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

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
