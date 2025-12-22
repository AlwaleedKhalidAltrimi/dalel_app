import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/widgets/custom_header_text.dart';
import '../custom_category_list_view.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: "56".tr),
        const SizedBox(height: 16),
        CustomCategoryListView(),
      ],
    );
  }
}
