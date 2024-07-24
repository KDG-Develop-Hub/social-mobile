import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostIconButton extends StatelessWidget {
  const PostIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final String icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: IconButton(
        padding: EdgeInsets.zero,
        iconSize: 20,
        onPressed: onPressed,
        icon: SvgPicture.asset(
          icon,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
