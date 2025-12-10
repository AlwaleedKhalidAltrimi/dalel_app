import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:get/get.dart';
import 'fade_scale_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeScaleAnimation;

  @override
  void initState() {
    super.initState();

    initFadeScaleAnimation();
    // navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void initFadeScaleAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    fadeScaleAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );
    animationController.forward();
  }

  // void navigateToHome() {
  //   Future.delayed(
  //     const Duration(seconds: 3),
  //     () =>  Get.offNamed(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return FadeScaleTransition(
      animation: fadeScaleAnimation,
      child: const Center(child: FadeScaleText()),
    );
  }
}
