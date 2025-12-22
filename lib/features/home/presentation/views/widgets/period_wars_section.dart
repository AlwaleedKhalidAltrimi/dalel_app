import 'package:dalel_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../core/models/data_model.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/widgets/custom_data_list_view.dart';
import '../../../../../core/widgets/custom_header_text.dart';

class PeriodWarsSection extends StatelessWidget {
  const PeriodWarsSection({super.key, required this.warsList});
  final List<DataModel> warsList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: "53".tr),
        const SizedBox(height: 16),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -52,
              right: 16,
              child: SvgPicture.asset(AppImages.imagesDetails3),
            ),
            CustomDataListView(
              dataList: warsList,
              routePath: AppRoutes.warsDetailsView,
            ),
          ],
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
