import 'package:dalel_app/core/app/dalel_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/functions/check_state_changes.dart';
import 'core/services/app_services.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initialServices();
  checkStateChanges();
  runApp(const DalelAPP());
}
