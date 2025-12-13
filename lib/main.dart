import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/routes/app_pages.dart';
import 'core/routes/app_routes.dart';
import 'core/translation/translation.dart';
import 'core/utils/app_colors.dart';

void main() {
  runApp(const DalelAPP());
}

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
