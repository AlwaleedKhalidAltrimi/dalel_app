import 'package:dalel_app/core/utils/app_images.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/app_styles.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.310,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("1".tr, style: AppStyles.font32boldsaira),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(AppImages.imagesSignIn1),
              SvgPicture.asset(AppImages.imagesSignIn2),
            ],
          ),
        ],
      ),
    );
  }
}
