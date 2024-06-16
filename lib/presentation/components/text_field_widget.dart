import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:social_mobile/utils/theme/extension/theme_extension.dart';

class TextFieldWidget extends HookWidget {
  const TextFieldWidget({
    super.key,
    required this.labelText,
    required this.helperText,
    required this.maxLength,
    this.validator,
    this.onFieldSubmitted,
    required this.controller,
  });
  final String labelText;
  final String helperText;
  final int maxLength;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final inputTextLength = useState(0);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextFormField(
        validator: validator,
        controller: controller,
        onChanged: (value) {
          inputTextLength.value = value.length;
        },
        onFieldSubmitted: onFieldSubmitted,
        // style: textTheme.body.copyWith(
        //   color: colorTheme.neutral[10],
        // ),
        maxLength: maxLength,
        // cursorColor: colorTheme.primary[40],
        // cursorErrorColor: colorTheme.error[40],
        decoration: InputDecoration(
          labelText: labelText,
          // labelStyle: textTheme.body.copyWith(
          //   color: colorTheme.neutral[30],
          // ),
          counter: Text(
            '${inputTextLength.value}/$maxLength',
            // style: textTheme.body.copyWith(
            //   color: colorTheme.neutral[30],
            // ),
          ),
          helperText: helperText,
          // helperStyle: textTheme.body.copyWith(
          //   color: colorTheme.neutral[30],
          // ),
          // errorStyle: textTheme.body.copyWith(
          //   color: colorTheme.error[40],
          // ),
          contentPadding: const EdgeInsets.all(16),
          // enabledBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: colorTheme.neutral[50]!),
          // ),
          // focusedBorder: OutlineInputBorder(
          //   borderSide: BorderSide(
          //     color: colorTheme.primary[40]!,
          //     width: 2,
          //   ),
          // ),
          // errorBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: colorTheme.error[40]!),
          // ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderSide: BorderSide(
          //     color: colorTheme.error[40]!,
          //     width: 2,
          //   ),
          // ),
        ),
      ),
    );
  }
}
