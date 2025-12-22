import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/get_utils.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_header_text.dart';

class PeriodDetailsSection extends StatelessWidget {
  const PeriodDetailsSection({
    super.key,
    required this.periodName,
    required this.description,
    required this.imageUrl,
  });
  final String periodName;
  final String description;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomHeaderText(text: "${"54".tr} $periodName"),
            const SizedBox(width: 7),
            SvgPicture.asset(AppImages.imagesDetails1),
          ],
        ),
        const SizedBox(height: 47),
        Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -24,
                  child: SvgPicture.asset(AppImages.imagesDetails2),
                ),
                SizedBox(
                  width: 196,
                  height: 220,
                  child: Text(
                    description,
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.font18mediumpoppins.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: 131,
              height: 203,
              child: CachedNetworkImage(imageUrl: imageUrl),
            ),
          ],
        ),
      ],
    );
  }
}
