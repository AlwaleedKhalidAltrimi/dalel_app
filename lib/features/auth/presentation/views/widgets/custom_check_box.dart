import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/signup_controller.dart';

class CustomCheckBox extends GetWidget<SignupController> {
  const CustomCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Checkbox(
        activeColor: AppColors.deepBrown,
        value: controller.termsAccepted.value,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: BorderSide(color: AppColors.navyLight.withValues(alpha: 0.20)),
        onChanged: (newValue) {
          controller.toggleTermsAccepted(newValue);
        },
      ),
    );
  }
}
