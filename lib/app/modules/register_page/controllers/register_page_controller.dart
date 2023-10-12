import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPageController extends GetxController {
  //loginFormKey adalah sebuah GlobalKey yang digunakan untuk mengakses dan memanipulasi form dalam aplikasi.
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  //instance dari Firebase Authentication, yang akan digunakan untuk proses otentikasi pengguna.
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//Metode ini mengambil alamat email dan kata sandi, kemudian mencoba melakukan pendaftaran.
    Future signUp(String email, String pass) async {
    //Jika berhasil, dia menampilkan dialog sukses; 
    try{
    await _firebaseAuth.signUp(email, pass);
    Get.defaultDialog(
      title: "Berhasil",
      middleText: "Akun berhasil diregister",
      onConfirm: () {
        Get.back();
        Get.back();
      },
      textConfirm: "okay",
    );
  }
  //jika gagal, dia menampilkan pesan kesalahan yang sesuai berdasarkan jenis kesalahan yang terjadi.
  catch (e) {
      if (e.toString() == "AuthException: INVALID_EMAIL") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Format email tidak sesuai",
          duration: Duration(seconds: 2),
        ));
      } else if (e.toString() == "AuthException: EMAIL_EXISTS") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Email sudah terdaftar",
          duration: Duration(seconds: 2),
        ));
      } else if (e.toString() == "AuthException: WEAK_PASSWORD") {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Password terlalu lemah",
          duration: Duration(seconds: 2),
        ));
      } else {
        Get.showSnackbar(const GetSnackBar(
          title: "Register Error",
          message: "Unknow Error",
          duration: Duration(seconds: 2),
        ));
      }
    }
  }
  //TODO: Implement RegisterPageController

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
