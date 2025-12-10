import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/translation/translation.dart';
import 'core/utils/app_colors.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const DalelAPP());
}

class DalelAPP extends StatelessWidget {
  const DalelAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dalel APP',
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      home: const SplashView(),
      translations: AppTranslations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en'),
    );
  }
}
