import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostMenuButton extends StatelessWidget {
  const PostMenuButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.isRedText = false,
  });
  final void Function() onPressed;
  final String icon;
  final String label;
  final bool isRedText;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: TextButton.icon(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          icon,
          width: 19,
          height: 19,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.centerLeft,
        ),
        label: Text(
          label,
          style: textStyle.labelLarge?.copyWith(
            color: isRedText ? colorTheme.error : colorTheme.onSurface,
          ),
        ),
      ),
    );
  }
}
