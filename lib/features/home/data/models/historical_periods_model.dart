import 'package:dalel_app/core/models/data_model.dart';
import 'package:dalel_app/features/home/data/models/wars_model.dart';
import '../../../../core/constants/json_keys.dart';

class HistoricalPeriodsModel extends DataModel {
  final List<WarsModel> wars;

  HistoricalPeriodsModel({
    required super.name,
    required super.image,
    required super.discription,
    required this.wars,
  });
  factory HistoricalPeriodsModel.fromJson(jsonData, warsList) {
    return HistoricalPeriodsModel(
      name: jsonData[JsonKeys.name],
      image: jsonData[JsonKeys.image],
      discription: jsonData[JsonKeys.description],

      wars: warsList,
    );
  }
}
