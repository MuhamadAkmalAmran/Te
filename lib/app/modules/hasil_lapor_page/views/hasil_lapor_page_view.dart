import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hasil_lapor_page_controller.dart';

class HasilLaporPageView extends GetView<HasilLaporPageController> {
  const HasilLaporPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HasilLaporPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HasilLaporPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
