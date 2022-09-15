import 'package:error_handler/error_handler.dart';

extension ResultStateExtension<T> on ResultState<T> {
  bool get isIdle => this is Idle<T>;

  bool get isLoading => this is Loading<T>;

  bool get isIdleOrLoading => isIdle || isLoading;

  bool get isData => this is Data<T>;

  bool get isError => this is Error<T>;

  bool get isDataOrError => isData || isError;

  bool isOr<State1 extends ResultState<T>, State2 extends ResultState<T>>() =>
      this is State1 && this is State2;
}
