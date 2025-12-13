import 'package:dalel_app/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/utils/app_styles.dart';
import 'widgets/on_boarding_navigation_buttons.dart';
import 'widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

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

                    Visibility(
                      visible:
                          currentIndex <
                          2, // Show the child only if the condition is true
                      maintainSize:
                          true, // Keep the space even when the child is hidden
                      maintainAnimation:
                          true, // Preserve animations even when hidden
                      maintainState:
                          true, // Keep the child's state (like form inputs) when hidden
                      child: CustomTextButton(
                        text: "2".tr,
                        onTap: () => Get.offAllNamed(AppRoutes.signUp),
                        textStyle: AppStyles.font16regularpoppins,
                        alignment: Alignment.centerRight,
                      ),
                    ),

                    const SizedBox(height: 32),
                    Expanded(
                      child: OnBoardingViewBody(
                        controller: _controller,
                        onPageChanged: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 32),
                    OnBoardingNavigationButtons(
                      currentIndex: currentIndex,
                      controller: _controller,
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
