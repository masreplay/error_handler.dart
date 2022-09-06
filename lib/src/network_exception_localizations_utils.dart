import 'package:error_handler/error_handler.dart';
import 'package:error_handler/src/network_exception_localizations.dart';
import 'package:error_handler/src/network_exception_localizations_default.dart';

typedef ResponseTranslateCallback = String Function(ResponseValue response)?;

extension NetworkErrorExtension on NetworkException {
  String getLocalizedErrorMessage(
    NetworkErrorLocalizations translation, {
    ResponseTranslateCallback? httpErrorStringCallBack,
  }) =>
      when(
        responseException: (ResponseValue response) =>
            httpErrorStringCallBack?.call(response) ??
            translation.responseException,
        requestCancelled: () => translation.requestCancelled,
        unexpectedError: () => translation.unexpectedError,
        connectTimeout: () => translation.requestTimeout,
        noInternetConnection: () => translation.noInternetConnection,
        sendTimeout: () => translation.sendTimeout,
        unableToProcessData: () => translation.unableToProcessData,
        otherException: () => translation.otherException,
        receiveTimeout: () => translation.receiveTimeout,
        userDefinedException: (error) => translation.unexpectedError,
      );

  String defaultErrorMessage() => getErrorMessage(this);
}

String getErrorMessage(NetworkException error) {
  return error.getLocalizedErrorMessage(NetworkErrorLocalizationsDefault());
}
