import 'package:get/get.dart';

import '../controllers/hasil_lapor_page_controller.dart';

//deklarasi class yang merupakan binding class.
//Ini harus meng-extend Bindings dari GetX untuk mengimplementasikan metode yang diperlukan.
class HasilLaporPageBinding extends Bindings {
  //metode yang mengatur dependensi dan injeksi controller.
  @override
  void dependencies() {
    //menggunakan GetX untuk menginject instance dari HasilLaporPageController
    //Get.lazyPut digunakan untuk menunda pembuatan objek hingga objek tersebut benar-benar diperlukan, yang efisien dalam hal penggunaan sumber daya. 
    Get.lazyPut<HasilLaporPageController>(
      () => HasilLaporPageController(),
    );
  }
}
