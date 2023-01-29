import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/form_page_controller.dart';

class FormPageView extends GetView<FormPageController> {
  const FormPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FormPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
