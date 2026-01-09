import 'package:easy_localization/easy_localization.dart';
import 'package:finance_mobile_app/dependency_injection.dart';
import 'package:flutter/material.dart';

import 'myapp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setupDI();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("en", "US"), Locale("fr", "FR")],
      path: 'assets/translations',
      fallbackLocale: const Locale("fr", "FR"),
      child: const MyApp(),
    ),
  );
}
