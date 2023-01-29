import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lapor_page_controller.dart';

class LaporPageView extends GetView<LaporPageController> {
  const LaporPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LaporPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LaporPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
