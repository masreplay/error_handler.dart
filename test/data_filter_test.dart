import 'package:error_handler/error_handler.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'client/user.dart';

// TODO(masreplay): fix identical problem

final agentRoleException = DefinedException(tag: "AgentRole");
final blockedUserException = DefinedException(tag: "BlockedUser");

// Agent-type user not allowed to login in the mobile app
class UserRoleDataFilter implements DataFilter<User> {
  @override
  ResultState<User>? handle(User user, ResponseValue response) {
    if (user.role == Role.agent) return agentRoleException.toResultState();

    return null;
  }
}

class BlockedUserDataFilter implements DataFilter<User> {
  @override
  ResultState<User>? handle(User user, ResponseValue response) {
    const usernames = ["@masreplay", "@bilalrad"];

    for (var username in usernames) {
      if (user.name == username) {
        return blockedUserException.toResultState();
      }
    }

    return null;
  }
}

void main() {
  group("DataFilter", () {
    test(".handle changed", () async {
      final state = await errorHandler.future(
        () {
          return login(
            username: "@masreplay",
            password: "password",
            returnUserRole: Role.agent,
          );
        },
        dataFilters: [UserRoleDataFilter()],
      );

      expect(state.isError, true);

      state.whenDefinedException(agentRoleException, ifEqual: (error) {
        expect(error.exception, equals(agentRoleException));
      });
    });

    test(".handle user same type", () async {
      final state = await errorHandler.future(
        () => login(
          username: "@masreplay",
          password: "password",
          returnUserRole: Role.customer,
        ),
        dataFilters: [UserRoleDataFilter()],
      );

      expect(state.isData, equals(true));

      state.whenOrNull(data: (User user, response) {});
    });

    test(".handle multiple filters", () async {
      final state = await ErrorHandler().future(
        () {
          return login(
            username: "@masreplay",
            password: "password",
            returnUserRole: Role.agent,
          );
        },
        dataFilters: [UserRoleDataFilter(), BlockedUserDataFilter()],
      );

      expect(state.isError, equals(true));

      state.whenOrNull(
        error: (exception) {
          exception.whenOrNull(
            definedException: (exception) {
              expect(exception, agentRoleException);
            },
          );
        },
      );

      state
        ..whenDefinedException(agentRoleException, ifEqual: (error) {})
        ..whenDefinedException(blockedUserException, ifEqual: (error) {});
    });
  });
}
