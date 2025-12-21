import 'package:dalel_app/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/app_styles.dart';
import '../controllers/on_boarding_controller.dart';
import 'widgets/on_boarding_navigation_buttons.dart';
import 'widgets/on_boarding_view_body.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 40),
                    // Using Obx properly with scoped observable variable
                    Obx(() {
                      return Visibility(
                        visible: controller.showSkipButton,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child: CustomTextButton(
                          text: "2".tr,
                          onTap: () {
                            // Navigate to the third onboarding page
                            controller.pageController.animateToPage(
                              2,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          textStyle: AppStyles.font16regularpoppins,
                          alignment: Alignment.centerRight,
                        ),
                      );
                    }),
                    const SizedBox(height: 32),
                    Expanded(
                      child: OnBoardingViewBody(
                        controller: controller.pageController,
                        onPageChanged: (index) {
                          controller.updatePageIndex(index);
                        },
                      ),
                    ),
                    const SizedBox(height: 32),
                    Obx(
                      () => OnBoardingNavigationButtons(
                        currentIndex: controller.currentPageIndex.value,
                        controller: controller.pageController,
                      ),
                    ),
                    const SizedBox(height: 17),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
