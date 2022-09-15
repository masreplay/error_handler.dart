import 'package:error_handler/error_handler.dart';
import 'package:test/test.dart';

import 'api_call.dart';
import 'models.dart';

void main() {
  group(
    "UnableToProcessData exception",
    () {
      test("if Model.fromJson() failed", () async {
        final state = await safeApiCallFuture<User>(() {
          return getUser({"message": "Hello"});
        });

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
