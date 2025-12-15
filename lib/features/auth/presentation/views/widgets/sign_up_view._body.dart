import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/routes/app_routes.dart';
import 'custom_have_an_account.dart';
import 'custom_signup_form.dart';
import 'custom_welcome_text.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        const SizedBox(height: 152),
        CustomWelcomeText(text: "12".tr),
        const SizedBox(height: 25),
        const CustomSignUpForm(),
        const SizedBox(height: 16),
        CustomHaveAnAccount(
          promptText: "15".tr,
          linkText: "16".tr,
          onTap: () {
            Get.offNamed(AppRoutes.signUp);
          },
        ),
        const SizedBox(height: 17),
      ]),
    );
  }
}
