import 'package:get/get.dart';

//kelas yang akan mengendalikan logika dan state untuk halaman atau komponen tertentu dalam aplikasi 
class LaporPageController extends GetxController {
  //TODO: Implement LaporPageController

//variabel yang digunakan untuk mengikuti dan mengelola jumlah atau state tertentu dalam kelas 'LaporPageController'.
  final count = 0.obs;
  @override
  //onInit() dipanggil saat controller diinisialisasi,
  void onInit() {
    super.onInit();
  }
//onReady() dipanggil setelah controller selesai diinisialisasi,
  @override
  void onReady() {
    super.onReady();
  }

//onClose() dipanggil saat controller dihancurkan atau tidak lagi digunakan.
  @override
  void onClose() {
    super.onClose();
  }

//digunakan untuk meningkatkan nilai count dengan satu setiap kali dipanggil.
  void increment() => count.value++;
}
