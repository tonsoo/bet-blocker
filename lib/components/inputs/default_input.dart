import 'package:bet_blocker/constants/app_colors.dart';
import 'package:flutter/material.dart';

class DefaultInput extends StatelessWidget {
  const DefaultInput({
    super.key,
    this.decoration = const InputDecoration(),
    this.style = const TextStyle(),
    this.cursorColor = AppColors.cMain,
  });

  final InputDecoration decoration;
  final TextStyle style;
  final Color cursorColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: decoration.applyDefaults(
        InputDecorationTheme(
          fillColor: AppColors.cSecond100,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            borderSide: BorderSide(color: AppColors.cMain, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            borderSide: BorderSide(color: AppColors.cMain, width: 1),
          ),
          hintStyle: TextStyle(
            color: AppColors.cFourth,
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
        ),
      ),
      style: TextStyle(
        color: AppColors.cThird,
        fontWeight: FontWeight.w600,
        fontSize: 13,
      ).merge(style),
      cursorColor: cursorColor,
    );
  }
}
