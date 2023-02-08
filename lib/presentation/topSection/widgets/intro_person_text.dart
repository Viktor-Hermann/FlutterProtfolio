import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_app/application/topsection/home_controller.dart';

import 'glass_content.dart';

class IntroPersonText extends ConsumerWidget {
  IntroPersonText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Locale _currentLocale = ref.watch(currentLocaleProvider);
    HomeController homeController = HomeController(ref: ref);

    bool isLocaleDE = _currentLocale == Locale('de', 'DE');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 24.0),
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/brandmark-design.png',
                image: 'assets/images/brandmark-design.png',
                fadeInDuration: const Duration(milliseconds: 2000),
                fadeOutDuration: const Duration(milliseconds: 800),
                height: 100,
                fadeInCurve: Curves.fastOutSlowIn,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 36, bottom: 24),
                child: InkWell(
                  onTap: () => homeController.changeLanguage(),
                  child: Opacity(
                    opacity: 0.75,
                    child: Image.asset(
                      isLocaleDE
                          ? "assets/images/english.png"
                          : "assets/images/german.png",
                      height: 48,
                      width: 48,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        GlassContent(),
        Spacer(flex: 3),
      ],
    );
  }
}
