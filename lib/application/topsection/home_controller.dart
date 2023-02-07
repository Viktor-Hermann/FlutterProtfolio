import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final languageToggleProvider = StateProvider<bool>((ref) => false);

class HomeController {
  final WidgetRef ref;

  HomeController({this.ref});

  changeLanguage() {
    var language = ref.read(languageToggleProvider.notifier).state;
    language = !language;

    ref.watch(languageToggleProvider.notifier).state
        ? ref.context.setLocale(Locale('de', 'DE'))
        : ref.context.setLocale(Locale('en', 'US'));

        ref.refresh(languageToggleProvider);
  }
}
