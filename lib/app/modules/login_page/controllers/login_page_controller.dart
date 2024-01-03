import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//digunakan sebagai controller untuk halaman login dalam aplikasi.
class LoginPageController extends GetxController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

//digunakan untuk mencoba proses login pengguna
//Menerima dua parameter, yaitu alamat email dan kata sandi
  Future signIn(String email, String pass) async {
    //Jika login berhasil, maka pengguna akan diarahkan ke halaman beranda dengan menggunakan Get.offAllNamed().
    try {
      await _firebaseAuth.signIn(email, pass);
      await _firebaseAuth.getUser();
      Get.offAllNamed(Routes.BOTTOM_NAVIGATION);
    }
    //Jika terjadi kesalahan selama proses login, kode menangani beberapa jenis kesalahan yang mungkin terjadi (INVALID_EMAIL, INVALID_PASSWORD, EMAIL_NOT_FOUND) dan menampilkan pesan kesalahan menggunakan snackbar melalui GetX.
    catch (e) {
      if (e.toString() == "AuthException: INVALID_EMAIL") {
        Get.showSnackbar(
          const GetSnackBar(
            title: "Login Error",
            message: "Format email tidak sesuai",
            duration: Duration(seconds: 2),
          ),
        );
      } else if (e.toString() == "AuthException: INVALID_PASSWORD") {
        Get.showSnackbar(
          const GetSnackBar(
            title: "Login Error",
            message: "Password salah",
            duration: Duration(seconds: 2),
          ),
        );
      } else if (e.toString() == "AuthException: EMAIL_NOT_FOUND") {
        Get.showSnackbar(
          const GetSnackBar(
            title: "Login Error",
            message: "User belum terdaftar",
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }
}

  //TODO: Implement LoginPageController

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
