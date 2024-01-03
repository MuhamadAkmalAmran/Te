import 'package:final_project_2023/app/data/hive.dart';
import 'package:final_project_2023/app/data/token_adapter.dart';
import 'package:final_project_2023/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:final_project_2023/app/modules/login_page/controllers/login_page_controller.dart';
import 'package:firedart/firedart.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  group('LoginController integration testing', () {
    setUp(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Hive.initFlutter();
      Hive.registerAdapter(TokenAdapter());
      FirebaseAuth.initialize(apiKey, await HiveStore.create());
      Firestore.initialize(projectId);
    });

    testWidgets('Login Berhasil', (WidgetTester tester) async {
      final loginController = LoginPageController();
      const email = 'kelompok10@gmail.com';
      const pass = '123456789';

      loginController.signIn(email, pass);
    });
  });
}
