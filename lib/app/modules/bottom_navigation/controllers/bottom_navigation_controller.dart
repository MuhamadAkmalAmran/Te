import 'package:get/get.dart';

//Penggunaan GetXController adalah pendekatan yang baik untuk mengelola state dalam Flutter.
//GetX adalah library yang membantu Anda dalam mengelola state dengan mudah.
class BottomNavigationController extends GetxController {

  var selectedIndex = 0.obs;

//metode yang digunakan untuk mengganti nilai selectedIndex
  void changeIndex(int index){
    selectedIndex.value = index;
  }
 //TODO: Implement BottomNavigationController

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
