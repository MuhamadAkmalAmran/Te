import 'package:final_project_2023/app/modules/home/views/home_view.dart';
import 'package:final_project_2023/app/modules/lapor_page/views/lapor_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  BottomNavigationView({Key? key}) : super(key: key);

  final screens = [
    const HomeView(),
    const LaporPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: bottomNavigationController.selectedIndex.value,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          bottomNavigationController.changeIndex(index);
        },
        currentIndex: bottomNavigationController.selectedIndex.value,
        items: [
          
        ],
      ),
    );
  }
}
