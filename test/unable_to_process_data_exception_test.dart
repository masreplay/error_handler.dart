import 'package:dio/dio.dart';
import 'package:error_handler/error_handler_base.dart';
import 'package:error_handler/src/https_response.dart';
import 'package:error_handler/src/network_exception.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test/test.dart';

import '_.dart';

class User {
  final String name;

  const User(this.name);

  factory User.fromJson(Map<String, dynamic> json) => User(json["name"]);
}

Future<HttpResponse<User>> getUser() async {
  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  const path = 'https://example.com';

  dioAdapter.onGet(
    path,
    (server) => server.reply(
      200,
      {'message': 'Success!'},
      delay: const Duration(seconds: 1),
    ),
  );

  final response = await dio.get(path);

  return HttpResponse(User.fromJson(response.data), response);
}

// TODO(masreplay): implement logger
void main() {
  group(
    "UnableToProcessData exception",
    () {
      test("if Model.fromJson() failed", () async {
        final state = await safeApiCallFuture<User>(
          getUser,
          logger: testLogger,
        );

        state.whenOrNull(
          error: (error) {
            expect(error, NetworkException.unableToProcessData());
          },
        );
      });
    },
  );
}
