import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/forgot_password_controller.dart';
import 'custom_text_field.dart';

class CustomForgotPasswrodForm extends GetWidget<ForgotPasswordController> {
  const CustomForgotPasswrodForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            CustomTextFormField(
              labelText: "19".tr,
              onChanged: (email) {
                controller.updateEmail(email);
              },
            ),
            const SizedBox(height: 129),
            Obx(
              () => controller.isLoading.value
                  ? CircularProgressIndicator(color: AppColors.primaryColor)
                  : CustomButton(
                      onPressed: () async {
                        await controller.resetPasswordWithLink();
                      },
                      text: "50".tr,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
