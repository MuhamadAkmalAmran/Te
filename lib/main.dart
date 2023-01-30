import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

const apiKey = "AIzaSyCjlDqahWTLvB6u7P9zhak8yPqkcTpj_ps";
const projectId ="final-project-2023-5b9d5";

void main() {
    Firestore.initialize(projectId);
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return     GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
