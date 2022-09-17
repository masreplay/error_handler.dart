import 'package:error_handler/error_handler.dart';

typedef LoggingCallback<T> = void Function(
  ResultState<T> resultState,
  Object? error,
  StackTrace? trace,
);

void stateLogger<T>(
  ResultState<T> resultState,
  Object? error,
  StackTrace? trace,
) {
  // TODO(masreplay): use log function
  print("ResultState: $resultState");
  if (error != null || trace != null) {
    print(error);
    print(trace);
  }
}
