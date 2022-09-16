import 'package:error_handler/data_filter.dart';
import 'package:error_handler/error_handler.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'client/user.dart';

class AgentRoleException extends DefinedException {}

// Agent-type user not allowed to login in the mobile app
class UserRoleDataFilter implements DataFilter<User> {
  @override
  ResultState<User>? handle(User data, ResponseValue response) {
    if (data.role == "AGENT") return AgentRoleException().getResultState();

    return null;
  }
}

void main() {
  group("DataFilter", () {
    test(".handle", () async {
      final state = await errorHandler.future(
        () => login(username: "@masreplay", password: "password"),
        dataFilters: [UserRoleDataFilter()],
      );

      state.whenDefinedException(AgentRoleException(), ifEqual: (error) {
        expect(error.exception, equals(AgentRoleException()));
      });
    });
  });
}
