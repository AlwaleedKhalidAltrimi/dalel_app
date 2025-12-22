import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/functions/show_custom_toast.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/custom_snackbar.dart';

class SigninController extends GetxController {
  // Form fields
  final emailAddress = ''.obs;
  final password = ''.obs;

  // Form state
  final obscurePassword = true.obs;
  final isLoading = false.obs;

  // Form key for validation
  final formKey = GlobalKey<FormState>();

  void togglePasswordVisibility() {
    obscurePassword.toggle();
  }

  void updateEmail(String value) {
    emailAddress.value = value;
  }

  void updatePassword(String value) {
    password.value = value;
  }

  Future<void> signIn() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;

      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: emailAddress.value,
              password: password.value,
            );

        // Successfully signed in
        isLoading.value = false;

        // Check if email is verified
        if (credential.user!.emailVerified) {
          Get.offAllNamed(AppRoutes.homeNavBar);
        } else {
          showCustomToast("42".tr);
          // showCustomSnackBar(
          //   title: "41".tr,
          //   message: "42".tr,
          //   type: SnackType.warning,
          // );
        }
      } on FirebaseAuthException catch (e) {
        _signInHandleException(e);
      } catch (e) {
        debugPrint("********** $e");
        isLoading.value = false;
        showCustomSnackBar(
          title: "28".tr,
          message: "46".tr,
          type: SnackType.error,
        );
      }
    }
  }

  void _signInHandleException(FirebaseAuthException e) {
    debugPrint("********** ${e.code}");
    isLoading.value = false;

    if (e.code == 'user-not-found') {
      showCustomSnackBar(
        title: "28".tr,
        message: "44".tr,
        type: SnackType.error,
      );
    } else if (e.code == 'wrong-password') {
      showCustomSnackBar(
        title: "28".tr,
        message: "45".tr,
        type: SnackType.error,
      );
    } else {
      showCustomSnackBar(
        title: "28".tr,
        message: "46".tr,
        type: SnackType.error,
      );
    }
  }
}
