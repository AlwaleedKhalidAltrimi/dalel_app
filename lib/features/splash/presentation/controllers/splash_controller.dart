import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/services/app_services.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeScaleAnimation;

  @override
  void onInit() {
    super.onInit();
    _initFadeScaleAnimation();
    _handleNavigation();
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

  void _handleNavigation() {
    final appServices = Get.find<AppServices>();
    final bool isOnBoardingVisited =
        appServices.sharedprf.getBool('isOnBoardingVisited') ?? false;

    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingVisited) {
        Get.offNamed(AppRoutes.signIn);
      } else {
        Get.offNamed(AppRoutes.onBoarding);
      }
    });
  }
}
