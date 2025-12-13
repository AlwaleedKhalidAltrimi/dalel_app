import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  final RxInt currentPageIndex = 0.obs;
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void updatePageIndex(int index) {
    currentPageIndex.value = index;
  }

  bool get showSkipButton => currentPageIndex.value < 2;
}
