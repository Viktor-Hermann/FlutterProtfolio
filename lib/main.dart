import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:web_app/application/topsection/home_controller.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/presentation/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyPortfolioApp()));
}

class MyPortfolioApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Locale> _supportedLocales = ref.read(supportedLocalesProvider);
    Locale _currentLocale = ref.watch(currentLocaleProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: _supportedLocales,
      locale: _currentLocale,
      title: 'Portfolio - Viktor Hermann',
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
