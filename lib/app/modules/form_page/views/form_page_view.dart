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
                controller: controller.namaC,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  label: const Text('Nama'),
                  hintText: 'Isi Namamu',
                  border: OutlineInputBorder(),
                ),
                onSaved: (newValue) {
                  if (newValue != null) {
                    controller.namaC.text = newValue;
                  }
                },
                validator: (value) {
                  return controller.validateName(value!);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: controller.descC,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  label: const Text('Deskripsi sampah'),
                  hintText: 'Isi Deskripsi',
                  border: OutlineInputBorder(),
                ),
                onSaved: (newValue) {
                  if (newValue != null) {
                    controller.descC.text = newValue;
                  }
                },
                validator: (value) {
                  return controller.validatedesc(value!);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: controller.lokasiC,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  label: const Text('Lokasi'),
                  hintText: 'Isi Lokasi sampah',
                  border: OutlineInputBorder(),
                ),
                onSaved: (newValue) {
                  if (newValue != null) {
                    controller.lokasiC.text = newValue;
                  }
                },
                validator: (value) {
                  return controller.validatelokasi(value!);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await controller.savedata(controller.namaC.text,
                        controller.descC.text, controller.lokasiC.text);
                  },
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
