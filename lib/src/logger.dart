import 'package:error_handler/error_handler.dart';

void stateLogger<T>(
  ResultState<T> resultState,
  Object? error,
  StackTrace? trace,
) {
  print("resultState: $resultState");
  if (error != null || trace != null) {
    print(error);
    print(trace);
  }
}