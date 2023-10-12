import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

// deklarasi kelas LoginPageBinding yang menggantungkan controller ke view halaman login.
class LoginPageBinding extends Bindings {
  @override
  //method yang menggambarkan hubungan antara controller dan view.
  void dependencies() {
    //digunakan untuk membangun objek secara malas (hanya saat diperlukan), sehingga tidak membebani aplikasi saat pertama kali dijalankan.
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(),
    );
  }
}
