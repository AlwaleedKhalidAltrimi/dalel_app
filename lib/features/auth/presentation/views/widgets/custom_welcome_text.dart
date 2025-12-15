import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomWelcomeText extends StatelessWidget {
  final String text;
  const CustomWelcomeText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(child: Text(text, style: AppStyles.font28semiBoldpoppins));
  }
}
