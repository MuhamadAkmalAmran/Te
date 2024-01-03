import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Nama FormPageController adalah sebuah konvensi yang baik, sesuai dengan tujuannya.
class FormPageController extends GetxController {
  //mengelola form
    final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
    // untuk berinteraksi dengan koleksi 'sampah' pada Firestore.
  CollectionReference menucollection = Firestore.instance.collection('sampah');
    late TextEditingController namaC, descC, lokasiC;

  @override
  void onInit() {
    super.onInit();
    namaC = TextEditingController();
    descC = TextEditingController();
    lokasiC = TextEditingController();
  }

//untuk melakukan validasi input.
//Ini baik untuk memastikan bahwa data yang dimasukkan oleh pengguna memenuhi kriteria tertentu.
    String? validateName(String value) {
    if (value.isEmpty) {
      return "nama harus di isi";
    }
    return null;
  }

  String? validatedesc(String value) {
    if (value.isEmpty) {
      return "deskripsi harus di isi";
    }
    return null;
  }

    String? validatelokasi(String value) {
    if (value.isEmpty) {
      return "Lokasi harus di isi";
    }
    return null;
  }

//mengirimkan data ke Firestore setelah validasi form.
//Ini juga menggunakan GetX untuk menampilkan dialog konfirmasi setelah operasi berhasil dilakukan.
  Future savedata(String nama, String desc, String lokasi) async {
    if (loginFormKey.currentState!.validate()) {
      loginFormKey.currentState!.save();
      await menucollection.add({"nama": nama, "deskripsi sampah": desc, "Lokasi sampah":lokasi});
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "data telah ditambah",
        onConfirm: () {
          Get.back();
          Get.back();
        },
        textConfirm: "okay",
      );
    }
  }

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
