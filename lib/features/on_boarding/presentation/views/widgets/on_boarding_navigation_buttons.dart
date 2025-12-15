import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/services/app_services.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../data/models/on_boarding_model.dart';
import '../../functions/on_boarding_visited.dart';

class OnBoardingNavigationButtons extends StatelessWidget {
  const OnBoardingNavigationButtons({
    super.key,
    required this.currentIndex,
    required this.controller,
  });
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    final appServices = Get.find<AppServices>();
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: "10".tr,
            onPressed: () {
              onBoardingVisited(appServices);
              Get.offAllNamed(AppRoutes.signUp);
            },
          ),
          const SizedBox(height: 16),
          CustomTextButton(
            text: "11".tr,
            onTap: () {
              onBoardingVisited(appServices);
              Get.offAllNamed(AppRoutes.signUp);
            },
            textStyle: AppStyles.font16regularpoppins.copyWith(
              color: AppColors.deepGrey,
            ),
            textDecoration: TextDecoration.underline,
          ),
        ],
      );
    } else {
      return CustomButton(
        text: "9".tr,
        onPressed: () {
          controller.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
      );
    }
  }
}
