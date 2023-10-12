import 'package:final_project_2023/app/modules/home/views/home_view.dart';
import 'package:final_project_2023/app/modules/lapor_page/views/lapor_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navigation_controller.dart';

//widget untuk menampilkan tampilan navigasi bawah dengan dua halaman yang dapat diakses.
//untuk mengelola state dengan bantuan BottomNavigationController, yang tampaknya mengontrol indeks halaman yang ditampilkan.
class BottomNavigationView extends GetView<BottomNavigationController> {
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  BottomNavigationView({Key? key}) : super(key: key);

  final screens = [
    const HomeView(),
    const LaporPageView(),
  ];

//widget ini menggunakan Scaffold untuk mengatur struktur tampilan dengan Obx widget, yang akan memperbarui tampilan saat terjadi perubahan pada state yang terkelola oleh BottomNavigationController.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //digunakan untuk menampilkan satu halaman pada suatu waktu berdasarkan indeks yang diatur oleh bottomNavigationController.selectedIndex.value. 
      body: Obx(() => IndexedStack(
            index: bottomNavigationController.selectedIndex.value,
            children: screens,
          )),
          //untuk menampilkan tampilan navigasi bawah dengan dua item: "Home" dan "Lapor". 
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            //Dalam onTap, ketika salah satu item dipilih, indeksnya diperbarui dengan mengubah nilai di bottomNavigationController,
            //sehingga akan memicu perubahan tampilan halaman dengan mengubah indeks pada IndexedStack.
            onTap: (index) {
              bottomNavigationController.changeIndex(index);
            },
            currentIndex: bottomNavigationController.selectedIndex.value,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Color(0xFF9354B9),
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.report),
                label: "Lapor",
                backgroundColor: Color.fromARGB(255, 20, 162, 101),
              ),
            ],
          )),
    );
  }
}
