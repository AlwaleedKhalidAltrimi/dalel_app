import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final TextStyle textStyle;
  final TextDecoration? textDecoration;
  final AlignmentGeometry? alignment;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.textStyle,
    this.textDecoration,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          textStyle: textStyle.copyWith(
            decoration: textDecoration,
            decorationThickness: 1.5,
          ),
          foregroundColor: textStyle.color,
        ),
        child: Text(text.tr),
      ),
    );
  }
}
