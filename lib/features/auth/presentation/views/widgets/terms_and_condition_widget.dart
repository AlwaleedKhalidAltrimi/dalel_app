import '../../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_check_box.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: "13".tr, style: AppStyles.font12regularpoppins),
              TextSpan(
                text: "14".tr,
                style: AppStyles.font12regularpoppins.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
