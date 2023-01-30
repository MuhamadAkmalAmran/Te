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
        key: controller.loginFormKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  label: const Text('Nama'),
                  hintText: 'Isi Namamu',
                  border: OutlineInputBorder(),
                ),
                onSaved: (newValue) {},
                validator: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  label: const Text('Deskripsi sampah'),
                  hintText: 'Isi Deskripsi',
                  border: OutlineInputBorder(),
                ),
                onSaved: (newValue) {},
                validator: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  label: const Text('Lokasi'),
                  hintText: 'Isi Lokasi sampah',
                  border: OutlineInputBorder(),
                ),
                onSaved: (newValue) {},
                validator: (value) {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("save"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
