import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/utils/dimensions.dart';
import 'package:flutter_recruitment_task/utils/errors.dart';
import 'package:flutter_recruitment_task/utils/extensions.dart';

class ErrorComponent extends StatelessWidget {
  final AppError error;
  final VoidCallback? onRetry;

  const ErrorComponent({required this.error, this.onRetry, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: context.screenHeight * 0.3,
        horizontal: Dimensions.PADDING_M,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              error.text(context),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: Dimensions.PADDING_S),
              SizedBox(
                height: Dimensions.ICON_SIZE_XL,
                width: Dimensions.ICON_SIZE_XL,
                child: IconButton(
                  onPressed: onRetry,
                  padding: EdgeInsets.zero,
                  icon: const Align(
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
      ),
    );
  }
}
