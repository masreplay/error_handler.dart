import 'package:error_handler/error_handler.dart';
import 'package:test/scaffolding.dart';

import 'client/_.dart';

class UserTypeException implements Exception {}

class UserTypeNetworkExceptionFilter extends NetworkExceptionFilter {
  @override
  NetworkException whenResponseException(ResponseValue response) {
    if (response.data["userType"] == "Agent") {
      return NetworkException.definedException(UserTypeException());
    }

    return super.whenResponseException(response);
  }
}

void main() {
  group("filter", () {
    test("NetworkException.definedException", () async {
      final errorHandler = ErrorHandler();
      final state = await errorHandler.future(getPost);

      state.whenOrNull(
        error: (error) {
          error.whenOrNull(
            definedException: (Exception exception) {
              
              if (exception is UserTypeException) {
                print("Hello");
              }
            },
          );
        },
      );
    });
  });
}
