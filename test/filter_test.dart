import 'package:error_handler/error_handler.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'client/user.dart';

class _RoleException extends DefinedException {
  const _RoleException() : super(tag: "Role");
}

// user don't have the action to perform such action
class RoleExceptionFilter extends NetworkExceptionFilter {
  @override
  NetworkException whenResponseException(ResponseValue response) {
    if (response.statusCode == 400 &&
        response.data["error"] == "USER_TYPE_ERROR") {
      return _RoleException().get();
    }

    return super.whenResponseException(response);
  }
}

void main() {
  group("filter", () {
    test("NetworkException.definedException", () async {
      final handler = ErrorHandler(filter: RoleExceptionFilter());

      final state = await handler.future(
        () => loginError(username: "@masreplay", password: "password"),
      );

      state.whenDefinedException(_RoleException(), ifEqual: (error) {
        expect(error.exception, equals(_RoleException()));
      });
    });
  });
}
