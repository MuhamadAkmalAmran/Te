import 'package:get/get.dart';

import '../controllers/lapor_page_controller.dart';

//digunakan untuk mengatur dependensi yang diperlukan oleh halaman yang akan di-bind.
class LaporPageBinding extends Bindings {
  @override
  //mengonfigurasi dependensi untuk LaporPageController, yang akan digunakan untuk mengontrol halaman. 
  void dependencies() {
    //digunakan untuk menginisialisasi LaporPageController secara lazy, yang berarti controller hanya akan dibuat saat pertama kali diperlukan.
    Get.lazyPut<LaporPageController>(
      () => LaporPageController(),
    );
  }
}
