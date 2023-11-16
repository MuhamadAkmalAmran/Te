import 'package:flutter_test/flutter_test.dart';

main() {
  test('Valid email and password', () {
    expect(validateIdAndPassword('akmal@gmail.com', '12345678'), isTrue);
  });
}

bool validateIdAndPassword(String id, String password) {
  if (id.isEmpty || password.isEmpty) {
    return false;
  }
  if (id.contains(' ')) {
    return false;
  }

  if (password.length < 6 || password.length > 16) {
    return false;
  }

  return true;
}

