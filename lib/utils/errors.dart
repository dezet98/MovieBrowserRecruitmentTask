import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_recruitment_task/utils/extensions.dart';

class AppError extends Equatable {
  @override
  List<Object?> get props => [];
}

class NoInternetError extends Equatable implements AppError {
  @override
  List<Object> get props => [];
}

extension ExceptionExt on AppError {
  String text(BuildContext context) {
    if (this is NoInternetError) {
      return context.strings.noInternet;
    }

    return context.strings.errorOccur;
  }
}
