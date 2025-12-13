import 'package:get/get.dart';
import '../../features/on_boarding/presentation/controllers/on_boarding_controller.dart';
import '../../features/splash/presentation/controllers/splash_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => OnBoardingController());
  }
}
