import 'package:bet_blocker/constants/app_colors.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.style,
  });

  final void Function() onPressed;
  final ButtonStyle? style;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: (style ?? TextButton.styleFrom()).merge(TextButton.styleFrom(
        backgroundColor: AppColors.cMain,
        foregroundColor: AppColors.cSecond,
        minimumSize: Size(0, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          side: BorderSide.none,
        ),
        padding: EdgeInsets.symmetric(vertical: 14.5, horizontal: 20),
      )),
      child: child,
    );
  }
}
