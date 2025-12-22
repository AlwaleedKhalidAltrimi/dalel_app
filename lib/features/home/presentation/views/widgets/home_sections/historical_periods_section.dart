import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/widgets/custom_header_text.dart';
import '../historical_periods.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(text: "51".tr),
        const SizedBox(height: 16),
        HistoricalPeriods(),
        const SizedBox(height: 32),
      ],
    );
  }
}
