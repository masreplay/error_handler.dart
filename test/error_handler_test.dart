import 'package:error_handler/error_handler.dart';
import 'package:test/test.dart';

import 'api_call.dart';

void main() {
  setUp(() {
    // Additional setup goes here.
  });
  group('Errors', () {
    test('First Test', () async {
      await safeApiCall(() => getUser({"name": "Alex"}))
          .listen((event) => print(event))
          .asFuture();
    });
  });
}
