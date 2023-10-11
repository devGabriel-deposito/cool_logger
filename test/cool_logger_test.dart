import 'dart:io';

import 'package:test/test.dart';
import 'package:cool_logger/cool_logger.dart';

void main() {
  group('CoolLogger Tests', () {
    setUp(() {
      // Add any setup code here.
    });

    test('Info method writes to file', () async {
      final logContent = 'Test log content';
      await CoolLogger.info(logContent);

      // Read the content of the log file and assert that it contains the expected content.
      final fileContent = await File('dart.log').readAsString();
      expect(fileContent, contains(logContent));
    });

    test('Info method handles different data types', () async {
      final dynamic data = {
        'name': 'Gabriel G. Freitas',
        'email': 'gabriel.goncal.freitas@gmail.com'
      };

      await CoolLogger.info(data);

      // Read the content of the log file and assert that it contains the JSON representation of the data.
      final fileContent = await File('dart.log').readAsString();
      expect(fileContent, contains(data.toString()));
    });

    // Add more tests as needed.
  });
}
