import 'package:flutter_test/flutter_test.dart';
import '../test/create_service.dart';

void main() {
  group('CreateService tests', () {
    test('Valid name format', () {
      var createService = CreateService();
      var result = createService.isValidName('Akmal');
      expect(result, true);
    });

    test('Invalid name format', () {
      var createService = CreateService();
      var result = createService.isValidName('');
      expect(result, false);
    });

    test('Valid description format', () {
      var createService = CreateService();
      var result = createService.isValidDescription('Akmal');
      expect(result, true);
    });

    test('Invalid description format', () {
      var createService = CreateService();
      var result = createService.isValidDescription('');
      expect(result, false);
    });

    
    test('Valid location format', () {
      var createService = CreateService();
      var result = createService.isValidLocation('Akmal');
      expect(result, true);
    });

    test('Valid location format', () {
      var createService = CreateService();
      var result = createService.isValidLocation('');
      expect(result, false);
    });
  });
}
