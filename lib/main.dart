import 'package:final_project_2023/app/data/hive.dart';
import 'package:final_project_2023/app/data/token_adapter.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/routes/app_pages.dart';

// dua konstanta global (apiKey dan projectId) yang digunakan dalam aplikasi.
const apiKey = "AIzaSyCjlDqahWTLvB6u7P9zhak8yPqkcTpj_ps";
const projectId ="final-project-2023-5b9d5";

//Fungsi main adalah titik masuk utama untuk aplikasi Flutter
void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(TokenAdapter());

  FirebaseAuth.initialize(apiKey, await HiveStore.create());

  Firestore.initialize(projectId);

  runApp(MyApp()
  );
}

//Kelas ini mewarisi dari StatelessWidget yang sesuai
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
