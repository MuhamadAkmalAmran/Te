import 'package:get/get.dart';

import '../controllers/register_page_controller.dart';

//digunakan untuk menentukan dependensi yang diperlukan untuk halaman pendaftaran.
class RegisterPageBinding extends Bindings {
  @override
  //implementasi dari metode "dependencies" yang mendefinisikan dependensi untuk halaman pendaftaran.
  void dependencies() {
    // Fungsi Get.lazyPut akan membuat instance RegisterPageController dan memasukkannya ke dalam konteks GetX sehingga dapat diakses dan digunakan di halaman pendaftaran.
    Get.lazyPut<RegisterPageController>(
      () => RegisterPageController(),
    );
  }
}
