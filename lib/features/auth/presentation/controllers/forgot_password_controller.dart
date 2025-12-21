import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/functions/show_custom_toast.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/widgets/custom_snackbar.dart';

class ForgotPasswordController extends GetxController {
  // Form fields
  final emailAddress = ''.obs;

  // Form state
  final isLoading = false.obs;

  // Form key for validation
  final formKey = GlobalKey<FormState>();

  void updateEmail(String value) {
    emailAddress.value = value;
  }

  Future<void> resetPasswordWithLink() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;

      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(
          email: emailAddress.value,
        );

        // Successfully sent reset email
        isLoading.value = false;

        showCustomToast("48".tr);
        Get.offAllNamed(AppRoutes.signIn);
      } on FirebaseAuthException catch (e) {
        _handleException(e);
      } catch (e) {
        debugPrint("********** $e");
        isLoading.value = false;
        showCustomSnackBar(
          title: "28".tr,
          message: "49".tr,
          type: SnackType.error,
        );
      }
    }
  }

  void _handleException(FirebaseAuthException e) {
    debugPrint("********** ${e.code}");
    isLoading.value = false;

    if (e.code == 'user-not-found') {
      showCustomSnackBar(
        title: "28".tr,
        message: "44".tr,
        type: SnackType.error,
      );
    } else {
      showCustomSnackBar(
        title: "28".tr,
        message: "49".tr,
        type: SnackType.error,
      );
    }
  }
}
