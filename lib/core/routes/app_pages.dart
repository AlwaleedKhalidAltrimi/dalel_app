import '../../features/splash/presentation/views/splash_view.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/auth/presentation/views/sign_in_view.dart';
import '../bindings/initialbinding.dart';
import 'app_routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final getPages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashView(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.onBoarding,
      page: () => const OnBoardingView(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpView(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignInView(),
      binding: InitialBinding(),
    ),
  ];
}
