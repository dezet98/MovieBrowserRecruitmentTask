import 'package:flutter/cupertino.dart';
import 'package:flutter_recruitment_task/utils/extensions.dart';

class AppError {}

class NoInternetError implements AppError {}

extension ExceptionExt on AppError {
  String text(BuildContext context) {
    if (this is NoInternetError) {
      return context.strings.noInternet;
    }

    return context.strings.errorOccur;
  }
}
