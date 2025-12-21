import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/app_styles.dart';

class ForgotPasswordSubTitle extends StatelessWidget {
  const ForgotPasswordSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: Text(
        "47".tr,
        style: AppStyles.font14regularpoppins.copyWith(
          color: AppColors.deepGrey,
          height: 1.71,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
