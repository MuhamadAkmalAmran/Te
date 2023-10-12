import 'package:get/get.dart';

import '../controllers/form_page_controller.dart';

//digunakan untuk mengatur dependensi yang diperlukan untuk halaman atau komponen tertentu.
class FormPageBinding extends Bindings {
  @override
  //deklarasi metode dependencies yang akan digunakan untuk menentukan dependensi apa yang diperlukan untuk halaman atau komponen ini.
  void dependencies() {
    //Get.lazyPut<FormPageController>(() => FormPageController(),);: Dalam metode dependencies, kita menggunakan Get.lazyPut untuk menambahkan dependensi.
    //Ini akan membuat instance dari FormPageController hanya jika diperlukan (lazy), dan kemudian dapat diakses di halaman terkait. 
    //Dengan demikian, kita mengatur controller yang akan digunakan dalam halaman ini.
    Get.lazyPut<FormPageController>(
      () => FormPageController(),
    );
  }
}
