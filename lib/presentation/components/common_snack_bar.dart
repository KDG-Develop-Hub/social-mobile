import 'package:flutter/material.dart';

class CommonSnackBar extends SnackBar {
  CommonSnackBar({
    super.key,
    required String message,
    required super.backgroundColor,
    required TextStyle textStyle,
    super.duration,
  }) : super(
          content: Flexible(
            child: Text(
              message,
              style: textStyle,
            ),
          ),
          behavior: SnackBarBehavior.floating,
        );
}
