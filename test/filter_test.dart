import 'package:error_handler/error_handler.dart';
import 'package:error_handler/src/network_exception/defined_exception.dart';
import 'package:test/scaffolding.dart';

import 'client/user.dart';

class RoleException extends DefinedException {}

// user don't have the action to perform such action
class UserTypeNEFilter extends NetworkExceptionFilter {
  @override
  NetworkException whenResponseException(ResponseValue response) {
    if (response.data["role"] == "Agent") return RoleException().get();
    return super.whenResponseException(response);
  }
}

void main() {
  group("filter", () {
    test("NetworkException.definedException", () async {
      final username = "Mas";
      final password = "password";

      final errorHandler = ErrorHandler(filter: UserTypeNEFilter());

      final state = await errorHandler.future(
        () => login(username: username, password: password),
      );

      state.whenDefinedException(RoleException(), ifEqual: (exception) {
        print("Hello there $exception");
      });
    });
  });
}
