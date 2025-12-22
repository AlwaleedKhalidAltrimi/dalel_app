import 'package:dalel_app/core/models/data_model.dart';
import '../../../../core/constants/json_keys.dart';

class WarsModel extends DataModel {
  WarsModel({
    required super.name,
    required super.image,
    required super.discription,
  });

  factory WarsModel.fromjson(jsonData) {
    return WarsModel(
      name: jsonData[JsonKeys.name],
      image: jsonData[JsonKeys.image],
      discription: jsonData[JsonKeys.description],
    );
  }
}
