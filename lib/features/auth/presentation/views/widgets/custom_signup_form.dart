import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/signup_controller.dart';
import 'custom_text_field.dart' show CustomTextFormField, ValidationType;
import 'terms_and_condition_widget.dart';

class CustomSignUpForm extends GetWidget<SignupController> {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            labelText: "17".tr,
            keyboardType: TextInputType.name,
            validationType: ValidationType.name,
            onChanged: (value) => controller.updateFirstName(value),
          ),
          CustomTextFormField(
            labelText: "18".tr,
            keyboardType: TextInputType.name,
            validationType: ValidationType.name,
            onChanged: (value) => controller.updateLastName(value),
          ),
          CustomTextFormField(
            labelText: "19".tr,
            keyboardType: TextInputType.emailAddress,
            validationType: ValidationType.email,
            onChanged: (value) => controller.updateEmail(value),
          ),
          Obx(
            () => Column(
              children: [
                CustomTextFormField(
                  labelText: "20".tr,
                  keyboardType: TextInputType.visiblePassword,
                  validationType: ValidationType.password,
                  obscureText: controller.obscurePassword.value,
                  suffixIcon: IconButton(
                    icon: Icon(
                      controller.obscurePassword.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    onPressed: controller.togglePasswordVisibility,
                  ),
                  onChanged: (value) => controller.updatePassword(value),
                ),
                const SizedBox(height: 16),
                const TermsAndConditionWidget(),
                const SizedBox(height: 90),
                controller.isLoading.value
                    ? CircularProgressIndicator(color: AppColors.primaryColor)
                    : CustomButton(
                        color: controller.termsAccepted.value
                            ? null
                            : AppColors.grey,
                        text: "10".tr,
                        onPressed: controller.signUp,
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
