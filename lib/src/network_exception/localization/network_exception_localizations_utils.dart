import 'package:error_handler/error_handler.dart';

typedef ResponseTranslateCallback = String Function(ResponseValue response)?;

extension NetworkErrorExtension on NetworkException {
  /// translate error
  ///
  /// - [translation] provide localization messages
  /// - [httpErrorStringCallBack] provide specific messages for each http response
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
        definedException: (error) => translation.unexpectedError,
      );

  /// get default translate messages
  String defaultErrorMessage() => getErrorMessage(this);
}

String getErrorMessage(NetworkException error) {
  return error.getLocalizedErrorMessage(NetworkErrorLocalizationsDefault());
}
