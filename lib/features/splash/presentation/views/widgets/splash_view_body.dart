import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:get/get.dart';
import 'fade_scale_text.dart';
import '../../controllers/splash_controller.dart';

class SplashViewBody extends GetView<SplashController> {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeScaleTransition(
      animation: controller.fadeScaleAnimation,
      child: const Center(child: FadeScaleText()),
    );
  }
}
