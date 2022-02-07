import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/utils/dimensions.dart';
import 'package:flutter_recruitment_task/utils/exceptions.dart';
import 'package:flutter_recruitment_task/utils/extensions.dart';

class ErrorComponent extends StatelessWidget {
  final AppException exception;
  final VoidCallback? onRetry;

  const ErrorComponent({required this.exception, this.onRetry, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_M),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: context.screenHeight * 0.3),
          Text(
            exception.text(),
            textAlign: TextAlign.center,
          ),
          if (onRetry != null) ...[
            SizedBox(height: Dimensions.PADDING_S),
            SizedBox(
              height: Dimensions.ICON_SIZE_XL,
              width: Dimensions.ICON_SIZE_XL,
              child: IconButton(
                onPressed: onRetry,
                padding: EdgeInsets.zero,
                icon: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.repeat,
                    size: Dimensions.ICON_SIZE_XL,
                  ),
                ),
              ),
            )
          ]
        ],
      ),
    );
  }
}
