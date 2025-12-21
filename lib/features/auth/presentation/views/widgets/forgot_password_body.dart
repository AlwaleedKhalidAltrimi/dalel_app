import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_forgot_password_form.dart';
import 'custom_welcome_text.dart';
import 'forgot_password_image.dart';
import 'forgot_password_sub_title.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        const SizedBox(height: 108),
        CustomWelcomeText(text: "43".tr),
        const SizedBox(height: 40),
        const ForgotPasswordImage(),
        const SizedBox(height: 72),
        const ForgotPasswordSubTitle(),
        const SizedBox(height: 48),
        const CustomForgotPasswrodForm(),
        const SizedBox(height: 17),
      ]),
    );
  }
}
// const SizedBox(height: 129),