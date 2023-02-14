import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentLocaleProvider = StateProvider<Locale>((ref) {
  return Locale('de', 'DE');
});

/// Supported Locales Provider
final supportedLocalesProvider = Provider<List<Locale>>((_) {
  return const [
    Locale('en', 'US'),
    Locale('de', 'DE'),
  ];
});

class HomeController {
  final WidgetRef ref;

  HomeController({this.ref});

  changeLanguage() {
    if (ref.read(currentLocaleProvider) == Locale('de', 'DE')) {
      ref.read(currentLocaleProvider.notifier).state = Locale('en', 'US');
    } else {
      ref.read(currentLocaleProvider.notifier).state = Locale('de', 'DE');
    }
  }
}
