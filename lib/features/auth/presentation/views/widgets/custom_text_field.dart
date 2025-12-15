import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../../core/helper/font_weight_helper.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool? obscureText;
  final Widget? suffixIcon;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24),
      child: TextFormField(
        cursorColor: AppColors.mediumGrey,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "This field is required";
          }

          // Email validation
          if (labelText == "Email Address".tr ||
              labelText == "عنوان البريد الإلكتروني") {
            // Email field
            final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
            if (!emailRegex.hasMatch(value)) {
              return "Please enter a valid email address";
            }
          }

          // Password validation
          if (labelText == "Password".tr || labelText == "كلمة المرور") {
            // Password field
            if (value.length < 6) {
              return "Password must be at least 6 characters";
            }
          }

          return null;
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        obscureText: obscureText ?? false,

        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppStyles.font12regularpoppins.copyWith(
            fontSize: 16,
            fontWeight: FontWeightHelper.medium,
          ),
          suffixIcon: suffixIcon,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColors.navyLight.withValues(alpha: 0.20)),
  );
}
