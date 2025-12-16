import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/routes/app_routes.dart';
import 'custom_have_an_account.dart';
import 'custom_signin_form.dart';
import 'custom_welcome_text.dart';
import 'welcome_banner.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        const WelcomeBanner(),
        const SizedBox(height: 32),
        CustomWelcomeText(text: "38".tr),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomSignInForm(),
        ),
        const SizedBox(height: 16),
        CustomHaveAnAccount(
          promptText: "39".tr,
          linkText: "21".tr,
          onTap: () {
            Get.offNamed(AppRoutes.signUp);
          },
        ),
        const SizedBox(height: 17),
      ]),
    );
  }
}
