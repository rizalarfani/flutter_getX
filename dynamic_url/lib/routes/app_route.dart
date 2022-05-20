import 'package:dynamic_url/pages/detail.dart';
import 'package:get/route_manager.dart';

class AppRoute {
  static final List<GetPage> pages = [
    GetPage(
      name: '/detail/:id?',
      page: () => const DetailProduk(),
    ),
  ];
}
