import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../../core/helper/font_weight_helper.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:get/get.dart';

// Enum to define validation types
enum ValidationType { none, email, password, name }

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool? obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final ValidationType validationType;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText,
    this.suffixIcon,
    this.keyboardType,
    this.validationType = ValidationType.none,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24),
      child: TextFormField(
        cursorColor: AppColors.mediumGrey,
        keyboardType: keyboardType,
        autovalidateMode: AutovalidateMode.onUnfocus,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "30".tr;
          }

          String trimmedValue = value.trim();

          switch (validationType) {
            case ValidationType.email:
              if (trimmedValue.contains(' ')) {
                return "37".tr;
              }
              final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
              if (!emailRegex.hasMatch(trimmedValue)) {
                return "31".tr;
              }
              break;

            case ValidationType.password:
              if (trimmedValue.length < 6) {
                return "32".tr;
              }
              if (trimmedValue.contains(' ')) {
                return "36".tr;
              }
              break;

            case ValidationType.name:
              if (trimmedValue.length < 2) {
                return "Name must be at least 2 characters".tr;
              }
              final nameRegex = RegExp(r'^[a-zA-Z\s]+$');
              if (!nameRegex.hasMatch(trimmedValue)) {
                return "33".tr;
              }
              if (trimmedValue.contains('  ')) {
                return "35".tr;
              }
              break;

            case ValidationType.none:
              break;
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
