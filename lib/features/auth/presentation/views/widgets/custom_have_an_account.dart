import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomHaveAnAccount extends StatelessWidget {
  final String promptText, linkText;
  final VoidCallback? onTap;
  const CustomHaveAnAccount({
    super.key,
    required this.promptText,
    required this.linkText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: promptText, style: AppStyles.font12regularpoppins),
              const WidgetSpan(child: SizedBox(width: 8)),
              TextSpan(
                text: linkText,
                style: AppStyles.font12regularpoppins.copyWith(
                  color: AppColors.lightGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
