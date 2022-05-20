import 'package:get/route_manager.dart';
import 'package:get_navigation/routes/route_name.dart';

import '../pages/home.dart';
import '../pages/profile.dart';

class AppRoute {
  static final List<GetPage> pages = [
    GetPage(
      name: RouteName.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RouteName.profile,
      page: () => const ProfilePage(),
    ),
  ];
}
