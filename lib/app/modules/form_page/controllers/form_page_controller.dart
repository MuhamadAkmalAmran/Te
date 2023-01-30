import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormPageController extends GetxController {
    final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  CollectionReference menucollection = Firestore.instance.collection('sampah');
    late TextEditingController namaC, descC, lokasiC;


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
