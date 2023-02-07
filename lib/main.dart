import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/presentation/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(ProviderScope(
      child: EasyLocalization(
          startLocale: Locale('de', 'DE'),
          supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
          path: '../assets/translations',
          child: MyPortfolioApp())));
}

class MyPortfolioApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      title: 'Portfolio - Viktor Hermann',
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
