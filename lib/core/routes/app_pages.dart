import '../../features/splash/presentation/views/splash_view.dart';
import 'app_routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final getPages = [
    GetPage(name: AppRoutes.splash, page: () => const SplashView()),
  ];
}
