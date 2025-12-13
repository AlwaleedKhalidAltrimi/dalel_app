import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final Color? color;
  final String text;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    this.color,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(text, style: AppStyles.font18mediumpoppins),
      ),
    );
  }
}
