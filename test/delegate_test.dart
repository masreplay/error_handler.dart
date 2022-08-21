import 'package:dio/dio.dart';
import 'package:error_handler/error_handler.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test/test.dart';

import '_.dart';
import 'models.dart';

class UserTypeNetworkExceptionDelegate extends NetworkExceptionDelegate {
  @override
  NetworkException whenResponseException(Response response) {
    if (response.data["userType"] == "Agent") {
      return NetworkException.unexpectedError();
    }

    return super.whenResponseException(response);
  }
}

FutureResponse<User> getUser(Map<String, dynamic> data) async {
  final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  const path = 'https://example.com';

  dioAdapter.onGet(
    path,
    (server) => server.reply(
      200,
      data,
      delay: const Duration(seconds: 1),
    ),
  );

  final response = await dio.get(path);

  return HttpResponse(User.fromJson(response.data), response);
}

void main() {
  group(
    "UnableToProcessData exception",
    () {
      test("if Model.fromJson() failed", () async {
        final state = await safeApiCallFuture<User>(
          () => getUser({"message": "Hello"}),
          logger: testLogger,
        );

        state.whenOrNull(
          data: (data, statusCode) {
            expect(data, User("name"));
          },
          error: (error) {
            expect(error, NetworkException.unableToProcessData());
          },
        );
      });
    },
  );
}
