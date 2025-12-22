import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/features/home/data/models/historical_periods_model.dart';
import 'package:dalel_app/features/home/data/models/wars_model.dart';

class HistoricalPeriodsController extends GetxController {
  var historicalPeriods = <HistoricalPeriodsModel>[].obs;
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getHistoricalPeriods();
  }

  Future<void> getHistoricalPeriods() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      // Clear previous data
      historicalPeriods.clear();

      final snapshot = await FirebaseFirestore.instance
          .collection(FireBaseStrings.historicalPeriods)
          .get();
      for (var doc in snapshot.docs) {
        // Get wars for this historical period
        final warsSnapshot = await FirebaseFirestore.instance
            .collection(FireBaseStrings.historicalPeriods)
            .doc(doc.id)
            .collection(FireBaseStrings.wars)
            .get();

        final warsList = warsSnapshot.docs
            .map((warDoc) => WarsModel.fromjson(warDoc.data()))
            .toList(); // Add historical period with its wars
        historicalPeriods.add(
          HistoricalPeriodsModel.fromJson(doc.data(), warsList),
        );
      }

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = e.toString();
      // Handle error appropriately
      print('Error fetching historical periods: $e');
    }
  }
}
