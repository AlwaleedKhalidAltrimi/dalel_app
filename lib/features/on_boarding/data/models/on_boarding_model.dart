import 'package:get/get.dart';
import '../../../../core/utils/app_images.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
    image: AppImages.imagesOnbording1,
    title: "3".tr,
    subTitle: "4".tr,
  ),
  OnBoardingModel(
    image: AppImages.imagesOnbording2,
    title: "5".tr,
    subTitle: "6".tr,
  ),
  OnBoardingModel(
    image: AppImages.imagesOnbording3,
    title: "7".tr,
    subTitle: "8".tr,
  ),
];
