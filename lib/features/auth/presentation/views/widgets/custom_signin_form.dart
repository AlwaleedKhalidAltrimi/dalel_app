import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/auth/presentation/controllers/signin_controller.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:dalel_app/features/auth/presentation/views/widgets/forgot_password_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSignInForm extends GetWidget<SigninController> {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            labelText: "19".tr,
            keyboardType: TextInputType.emailAddress,
            validationType: ValidationType.email,
            onChanged: (email) {
              controller.updateEmail(email);
            },
          ),
          Obx(
            () => CustomTextFormField(
              labelText: "20".tr,
              keyboardType: TextInputType.visiblePassword,
              validationType: ValidationType.password,
              suffixIcon: IconButton(
                icon: Icon(
                  controller.obscurePassword.value
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
                onPressed: controller.togglePasswordVisibility,
              ),
              obscureText: controller.obscurePassword.value,
              onChanged: (password) {
                controller.updatePassword(password);
              },
            ),
          ),
          const SizedBox(height: 16),
          const ForgotPasswordTextWidget(),
          const SizedBox(height: 102),
          Obx(
            () => controller.isLoading.value
                ? CircularProgressIndicator(color: AppColors.primaryColor)
                : CustomButton(onPressed: controller.signIn, text: "16".tr),
          ),
        ],
      ),
    );
  }
}
