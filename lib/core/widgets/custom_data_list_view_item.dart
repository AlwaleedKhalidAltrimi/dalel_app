import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalel_app/core/models/data_model.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/app_styles.dart';

class CustomDataListViewItem extends StatelessWidget {
  const CustomDataListViewItem({
    super.key,
    required this.model,
    required this.routePath,
  });
  final DataModel model;
  final String routePath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(routePath, arguments: model);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey,
              blurRadius: 10,
              offset: const Offset(0, 7),
            ),
          ],
        ),
        width: 164,
        height: 96,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 15),
            SizedBox(
              height: 48,
              width: 65,
              child: Text(
                model.name,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: AppStyles.font18mediumpoppins.copyWith(
                  color: AppColors.deepBrown,
                ),
              ),
            ),
            SizedBox(
              height: 64,
              width: 47,
              child: CachedNetworkImage(
                imageUrl: model.image,
                placeholder: (context, url) => Shimmer.fromColors(
                  baseColor: AppColors.grey,
                  highlightColor: AppColors.white,
                  child: Container(
                    width: 47,
                    height: 64,
                    color: AppColors.grey,
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
