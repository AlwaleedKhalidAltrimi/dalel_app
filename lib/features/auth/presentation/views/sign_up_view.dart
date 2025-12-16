import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/sign_up_view._body.dart';
import '../controllers/signup_controller.dart';

class SignUpView extends GetView<SignupController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [SignUpViewBody()],
        ),
      ),
    );
  }
}
