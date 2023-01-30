import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/form_page_controller.dart';

class FormPageView extends GetView<FormPageController> {
  const FormPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Laporan Tumpukan sampah'),
        centerTitle: true,
      ),
      body: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(),
            )
          ],
        ),
      ),
    );
  }
}
