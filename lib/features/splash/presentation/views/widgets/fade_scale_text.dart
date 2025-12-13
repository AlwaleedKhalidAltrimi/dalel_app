import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/app_styles.dart';

class FadeScaleText extends StatelessWidget {
  const FadeScaleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("1".tr, style: AppStyles.font64regularPacifico);
  }
}
