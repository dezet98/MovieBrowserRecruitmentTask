import 'package:flutter/cupertino.dart';
import 'package:flutter_recruitment_task/generated/l10n.dart';

extension BuildContextExt on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;

  S get strings => S.of(this);

  String get languageCode => 'pl';
}
