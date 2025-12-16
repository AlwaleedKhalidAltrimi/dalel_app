import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../routes/app_routes.dart';
import '../translation/app_translations.dart';
import '../utils/app_colors.dart';

class DalelAPP extends StatelessWidget {
  const DalelAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dalel',
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      initialRoute: AppRoutes.splash,
      getPages: AppPages.getPages,
      translations: AppTranslations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en'),
    );
  }
}
