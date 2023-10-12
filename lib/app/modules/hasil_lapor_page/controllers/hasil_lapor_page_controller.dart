import 'package:firedart/firedart.dart';
import 'package:get/get.dart';

//mendeklarasikan kelas HasilLaporPageController yang merupakan pengontrol GetX.
class HasilLaporPageController extends GetxController {
  //menginisialisasi objek Firestore
  Firestore firestore = Firestore.instance;
  
//untuk mendapatkan data dari koleksi 'sampah'. Ini adalah metode asinkron yang mengembalikan objek Page<Document>.
  Future<Page<Document>> getReport() async {
    CollectionReference laporan = firestore.collection('sampah');

    return laporan.get();
  }
  //untuk mendapatkan data dari koleksi 'sampah', tetapi berbeda dalam implementasi.
   Future<void> getData() async {
    final firestore = Firestore.instance;
    final laporan = firestore.collection('sampah');
    final snapshot = await laporan.get();
  }

  //TODO: Implement HasilLaporPageController

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
