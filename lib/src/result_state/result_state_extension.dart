import 'package:error_handler/error_handler.dart';

// check current state type
extension ResultStateExtension<T> on ResultState<T> {
  bool get isIdle => this is Idle<T>;
  bool get isNotIdle => !isIdle;

  bool get isLoading => this is Loading<T>;
  bool get isNotLoading => !isLoading;

  bool get isData => this is Data<T>;
  bool get isNotData => !isData;

  bool get isError => this is Error<T>;
  bool get isNotError => !isError;

  bool get isDataOrError => isData || isError;
  bool get isIdleOrLoading => isIdle || isLoading;

  bool isOr<State1 extends ResultState<T>, State2 extends ResultState<T>>() =>
      this is State1 && this is State2;
}
