import 'package:get/get.dart';

import '../controllers/bottom_navigation_controller.dart';

//untuk mengatur dependensi atau pengikatan (bindings) dalam aplikasi
class BottomNavigationBinding extends Bindings {
  @override
  //mendefinisikan dependensi (bindings) yang dibutuhkan oleh aplikasi
  void dependencies() {
    //hanya akan diinisialisasi saat diperlukan, tidak saat aplikasi pertama kali dimulai. Anda juga memberikan fungsi lambda yang akan digunakan untuk membuat instance BottomNavigationController ketika diperlukan.
    Get.lazyPut<BottomNavigationController>(
      () => BottomNavigationController(),
    );
  }
}
