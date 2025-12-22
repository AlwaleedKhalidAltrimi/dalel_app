import 'package:dalel_app/features/home/presentation/controllers/historical_periods_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/functions/show_custom_toast.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/widgets/custom_data_list_view.dart';
import '../../../../../core/widgets/custom_shimmer_category.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HistoricalPeriodsController());

    return Obx(() {
      if (controller.isLoading.value) {
        return const CustomShimmerCategory();
      }

      if (controller.errorMessage.isNotEmpty) {
        showCustomToast(controller.errorMessage.value);
      }

      return CustomDataListView(
        dataList: controller.historicalPeriods,
        routePath: AppRoutes.historicalPeriodsDetailsView,
      );
    });
  }
}
