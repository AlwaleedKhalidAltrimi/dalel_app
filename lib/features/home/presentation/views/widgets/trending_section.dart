import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/widgets/custom_header_text.dart';
import 'custom_category_list_view.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        CustomHeaderText(text: "52".tr),
        SizedBox(height: 16),
        CustomCategoryListView(),
        const SizedBox(height: 32),
      ],
    );
  }
}
