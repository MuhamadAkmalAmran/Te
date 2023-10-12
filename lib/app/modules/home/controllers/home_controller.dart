import 'package:get/get.dart';

//deklarasi kelas HomeController yang merupakan turunan dari GetxController
class HomeController extends GetxController {
  //TODO: Implement HomeController
//properti count yang menggunakan observables (.obs) untuk memantau perubahan nilainya.
  final count = 0.obs;
  @override
  //Metode onInit() dipanggil ketika controller ini pertama kali diinisialisasi. 
  void onInit() {
    super.onInit();
  }

//onReady() dipanggil ketika konten pada layar siap untuk digunakan.
  @override
  void onReady() {
    super.onReady();
  }

//onClose() dipanggil saat controller dihancurkan
  @override
  void onClose() {
    super.onClose();
  }

//igunakan untuk meningkatkan nilai count ketika dipanggil.
  void increment() => count.value++;
}
