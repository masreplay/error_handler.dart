import 'package:dio/dio.dart';
import 'package:error_handler/src/https_response.dart';
import 'package:error_handler/error_handler.dart';
import 'package:test/test.dart';

class User {
  final String name;

  const User(this.name);

  factory User.fromJson(Map<String, dynamic> json) => User(json["name"]);
}

Future<HttpResponse<User>> getUser() async {
  final dio = Dio();

  final response = await dio.get("https://google.com");

  final user = User.fromJson(response.data);

  return HttpResponse(user, response);
}

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
