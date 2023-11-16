import 'package:flutter_test/flutter_test.dart';
import '../test/login_service.dart';

void main() {
  group('AuthService tests', () {
    test('Valid email format', () {
      var regService = LoginService();
      var result = regService.isValidEmail('test@example.com');
      expect(result, true);
    });

    test('Invalid email format', () {
      var regService = LoginService();
      var result = regService.isValidEmail('invalid_email');
      expect(result, false);
    });

    test('Valid password format', () {
      var regService = LoginService();
      var result = regService.isValidPassword('secure123');
      expect(result, true);
    });

    test('Invalid password format', () {
      var regService = LoginService();
      var result = regService.isValidPassword('weak');
      expect(result, false);
    });
  });
}
