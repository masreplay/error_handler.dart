import 'package:error_handler/error_handler_base.dart';
import 'package:error_handler/src/network_exception.dart';
import 'package:test/test.dart';

import '_.dart';
import 'api_call.dart';
import 'models.dart';

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
