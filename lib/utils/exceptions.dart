import 'package:flutter/cupertino.dart';
import 'package:flutter_recruitment_task/utils/extensions.dart';

class AppException {}

extension exceptionExt on AppException {
  String text(BuildContext context) {
    return context.strings.errorOccur;
  }
}
