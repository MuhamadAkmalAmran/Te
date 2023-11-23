import 'package:firedart/firedart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:get/get.dart';
import 'package:final_project_2023/app/modules/login_page/controllers/login_page_controller.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  test('signIn should succeed with valid credentials', () async {
    // Arrange
    final loginPageController = LoginPageController();
    final firebaseAuth = FirebaseAuth.instance;

    // Act
    await loginPageController.signIn('email@example.com', 'password');

    // Assert
    expect(loginPageController.loginFormKey.currentState.validate(), true);
    expect(Get.find<LoginPageController>().loginFormKey.currentState.validate(), true);
  });
}

// import 'package:flutter_test/flutter_test.dart';

// main() {
//   test('Valid email and password', () {
//     expect(validateIdAndPassword('akmal@gmail.com', '12345678'), isTrue);
//   });
// }

// bool validateIdAndPassword(String id, String password) {
//   if (id.isEmpty || password.isEmpty) {
//     return false;
//   }
//   if (id.contains(' ')) {
//     return false;
//   }

//   if (password.length < 6 || password.length > 16) {
//     return false;
//   }

//   return true;
// }
