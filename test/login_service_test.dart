import 'package:flutter_test/flutter_test.dart';
import '../test/login_service.dart';

void main() {
  group('AuthService tests', () {
    test('Valid email format', () {
      var authService = LoginService();
      var result = authService.isValidEmail('test@example.com');
      expect(result, true);
    });

    test('Invalid email format', () {
      var authService = LoginService();
      var result = authService.isValidEmail('invalid_email');
      expect(result, false);
    });

    test('Valid password format', () {
      var authService = LoginService();
      var result = authService.isValidPassword('secure123');
      expect(result, true);
    });

    test('Invalid password format', () {
      var authService = LoginService();
      var result = authService.isValidPassword('weak');
      expect(result, false);
    });
  });
}
