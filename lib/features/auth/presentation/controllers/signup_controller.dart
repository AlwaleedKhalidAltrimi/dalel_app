import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/functions/show_custom_toast.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/custom_snackbar.dart';

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
      showCustomSnackBar(
        title: "28".tr,
        message: "22".tr,
        type: SnackType.error,
      );
      return;
    }

    if (formKey.currentState!.validate()) {
      isLoading.value = true;

      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailAddress.value,
          password: password.value,
        );

        // Successfully created user
        isLoading.value = false;
        showCustomSnackBar(
          title: "29".tr,
          message: "27".tr,
          type: SnackType.success,
        );
        Get.offAllNamed(AppRoutes.signIn);
      } on FirebaseAuthException catch (e) {
        isLoading.value = false;

        if (e.code == 'weak-password') {
          showCustomSnackBar(
            title: "28".tr,
            message: "24".tr,
            type: SnackType.error,
          );
        } else if (e.code == 'email-already-in-use') {
          showCustomSnackBar(
            title: "28".tr,
            message: "25".tr,
            type: SnackType.error,
          );
        } else {
          showCustomSnackBar(
            title: "28".tr,
            message: e.message ?? "25".tr,
            type: SnackType.error,
          );
        }
      }
    }
  }
}
