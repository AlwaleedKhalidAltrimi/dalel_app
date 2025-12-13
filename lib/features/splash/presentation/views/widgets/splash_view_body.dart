import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:get/get.dart';
import '../../../../../core/routes/app_routes.dart';
import 'fade_scale_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeScaleAnimation;

  @override
  void initState() {
    super.initState();

    _initFadeScaleAnimation();
    _navigateToOnBoarding();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _initFadeScaleAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _fadeScaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.forward();
  }

  void _navigateToOnBoarding() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offNamed(AppRoutes.onBoarding),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FadeScaleTransition(
      animation: _fadeScaleAnimation,
      child: const Center(child: FadeScaleText()),
    );
  }
}
