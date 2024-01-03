import 'package:final_project_2023/app/data/hive.dart';
import 'package:final_project_2023/app/modules/register_page/controllers/register_page_controller.dart';
import 'package:final_project_2023/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firedart/firedart.dart';

void main() {
  group('Register Controller integration testing', () {
    setUp(() async {
      WidgetsFlutterBinding.ensureInitialized();
      FirebaseAuth.initialize(apiKey, await HiveStore.create());
      Firestore.initialize(projectId);
    });

    testWidgets('Register Berhasil', (WidgetTester tester) async {
      final registerController = RegisterPageController();
      const email = 'coba1@gmail.com';
      const pass = '12345678';

      registerController.signUp(email, pass);
    });
  });
}
