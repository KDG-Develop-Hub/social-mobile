import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TextFieldWidget extends HookWidget {
  const TextFieldWidget({
    super.key,
    required this.labelText,
    this.helperText,
    this.maxLength,
    this.maxLines,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    required this.controller,
  });
  final String labelText;
  final String? helperText;
  final int? maxLength;
  final int? maxLines;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final inputTextLength = useState(0);
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 0,
      ),
      child: TextFormField(
        validator: validator,
        controller: controller,
        onChanged: (value) {
          inputTextLength.value = value.length;
          onChanged?.call(value);
        },
        onFieldSubmitted: onFieldSubmitted,
        style: textTheme.bodyLarge?.copyWith(
          color: colorTheme.onSurface,
        ),
        maxLength: maxLength,
        maxLines: maxLines,
        cursorColor: colorTheme.onSurface,
        cursorErrorColor: colorTheme.error,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
          labelStyle: textTheme.bodyLarge?.copyWith(
            color: colorTheme.onSurfaceVariant,
          ),
          counter: maxLength != null
              ? Text(
                  '${inputTextLength.value}/$maxLength',
                  style: textTheme.bodySmall?.copyWith(
                    color: colorTheme.onSurfaceVariant,
                  ),
                )
              : null,
          helperText: helperText,
          helperStyle: textTheme.bodyLarge?.copyWith(
            color: colorTheme.onSurfaceVariant,
          ),
          errorStyle: textTheme.bodyLarge?.copyWith(
            color: colorTheme.error,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorTheme.outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorTheme.primary,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorTheme.error),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: colorTheme.error,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
