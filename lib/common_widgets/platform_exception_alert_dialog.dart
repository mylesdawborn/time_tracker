import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:time_tracker/common_widgets/platform_alert_dialog.dart';

class PlatformExceptionAlertDialog extends PlatformAlertDialog {
  PlatformExceptionAlertDialog({
    @required String title,
    @required PlatformException exception,
  }) : super(
    title: title,
    content: _message(exception),
    defaultActionText: 'OK'
  );

  static String _message(PlatformException exception) {
    return _errors[exception.code] ?? exception.message;
  }

  static Map<String, String> _errors = {
    'ERROR_WEAK_PASSWORD': 'The password provided is too weak. Please use 6 or more characters',
    'ERROR_INVALID_EMAIL': 'The email provided is invalid.',
    'ERROR_EMAIL_ALREADY_IN_USE': 'The email provided already has an account.',
    'ERROR_WRONG_PASSWORD': 'The password provided is incorrect.',
    'ERROR_USER_NOT_FOUND': 'There is no account associated with the email provided.',
    'ERROR_USER_DISABLED': 'The account assoicated with the email provided has been disabled. Contact support.',
    'ERROR_TOO_MANY_REQUESTS': 'You have attempted to sign in too many times. Account sign-in timed out.',
    'ERROR_OPERATION_NOT_ALLOWED': 'Account sign-in has been diabled',
  };
}
