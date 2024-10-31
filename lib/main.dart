import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contract/views/const/routes.dart';
import 'package:contract/views/const/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  runApp(
    EasyLocalization(
      saveLocale: true,
      path: 'assets/languages',
      supportedLocales: const [
        Locale('uz', 'UZ'),
        // Locale('uz', 'RU'),
        // Locale('ru', 'RU'),
      ],
      startLocale: const Locale('uz', 'UZ'),
      child: MultiProvider(
        providers: [
          Provider(create: (_) => prefs),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contract app',
      routes: Routes.routes,
      locale: context.locale,
      initialRoute: Routes.home,
      debugShowCheckedModeBanner: false,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.main),
      ),
    );
  }
}
