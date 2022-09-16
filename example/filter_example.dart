import 'package:error_handler/error_handler.dart';
import 'package:error_handler/src/network_exception/defined_exception.dart';

import 'error_handler_example.dart';

class UserTypeException extends DefinedException {}

class UserTypeNetworkExceptionFilter extends NetworkExceptionFilter {
  @override
  NetworkException whenResponseException(ResponseValue response) {
    if (response.data["userType"] == "Agent") {
      return NetworkException.definedException(UserTypeException());
    }

    return super.whenResponseException(response);
  }
}

Future<void> main() async {
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
}
