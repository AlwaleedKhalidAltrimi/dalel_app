import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/functions/show_custom_toast.dart';
import '../../../../core/routes/app_routes.dart';

class SignupController extends GetxController {
  // Form fields
  final firstName = ''.obs;
  final lastName = ''.obs;
  final emailAddress = ''.obs;
  final password = ''.obs;

  // Form state
  final obscurePassword = true.obs;
  final isLoading = false.obs;
  final termsAccepted = false.obs;

  // Form key for validation
  final formKey = GlobalKey<FormState>();

  void togglePasswordVisibility() {
    obscurePassword.toggle();
  }

  void toggleTermsAccepted(bool? value) {
    termsAccepted.value = value ?? false;
  }

  void updateFirstName(String value) {
    firstName.value = value;
  }

  void updateLastName(String value) {
    lastName.value = value;
  }

  void updateEmail(String value) {
    emailAddress.value = value;
  }

  void updatePassword(String value) {
    password.value = value;
  }

  Future<void> signUp() async {
    if (!termsAccepted.value) {
      // Show error message if terms are not accepted
      Get.snackbar("Error", "Please accept the terms and conditions");
      return;
    }

    if (formKey.currentState!.validate()) {
      isLoading.value = true;

      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      isLoading.value = false;

      showCustomToast("21".tr);
      Get.offAllNamed(AppRoutes.signUp);
    }
  }
}
