import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/routes/app_pages.dart';
import 'core/routes/app_routes.dart';
import 'core/services/app_services.dart';
import 'core/translation/app_translations.dart';
import 'core/utils/app_colors.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
