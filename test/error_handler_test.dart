import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test/test.dart';

import 'unable_to_process_data_exception_test.dart';



void main() {
  setUp(() {
    // Additional setup goes here.
  });
  group('Errors', () {
    test('First Test', () async {
      await safeApiCall(() => getUser())
          .listen((event) => print(event))
          .asFuture();
    });
  });
}
