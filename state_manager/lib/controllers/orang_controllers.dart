import 'package:get/get.dart';
import 'package:state_manager/models/orang.dart';

class OrangController extends GetxController {
  Orang orang = Orang();

  void changeUpperCase() => orang.nama.value = orang.nama.value.toUpperCase();
}
