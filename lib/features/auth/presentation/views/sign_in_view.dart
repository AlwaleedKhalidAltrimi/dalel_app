import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/app_colors.dart';
import '../controllers/signin_controller.dart';
import 'widgets/sign_in_view._body.dart';

class SignInView extends GetView<SigninController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [SignInViewBody()],
      ),
    );
  }
}
