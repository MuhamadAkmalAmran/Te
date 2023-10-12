import 'package:get/get.dart';

import '../controllers/home_controller.dart';

//untuk mengatur dependensi yang dibutuhkan oleh controller atau halaman tertentu.
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // berguna untuk menghindari pembuatan instance yang berlebihan dan memastikan bahwa kita selalu bekerja dengan instance yang sama di seluruh aplikasi.
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
