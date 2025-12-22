import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/widgets/custom_header_text.dart';
import 'custom_category_list_view.dart';

class RecommendationsSection extends StatelessWidget {
  const RecommendationsSection({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: "$name ${"53".tr}"),
        const SizedBox(height: 16),
        const CustomCategoryListView(),
        const SizedBox(height: 32),
      ],
    );
  }
}
