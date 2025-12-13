import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/routes/app_routes.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeScaleAnimation;

  @override
  void onInit() {
    super.onInit();
    _initFadeScaleAnimation();
    _navigateToOnBoarding();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void _initFadeScaleAnimation() {
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

  void _navigateToOnBoarding() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offNamed(AppRoutes.onBoarding),
    );
  }
}
