import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/application/topsection/home_controller.dart';
import 'package:web_app/utils/responsive.dart';

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
              padding: EdgeInsets.symmetric(
                  horizontal: Adaptive.w(4),
                  vertical: Adaptive.h(isDesktopScreen ? 3 : 4)),
              child: AnimatedOpacity(
                opacity: 1,
                duration: Duration(milliseconds: 500),
                child: Image.asset("assets/images/brandmark-design.png",
                    height: Adaptive.h(isDesktopScreen ? 12 : 5)),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                    right: Adaptive.w(2),
                    bottom: Adaptive.h(isDesktopScreen ? 3 : 0)),
                child: InkWell(
                  onTap: () => homeController.changeLanguage(),
                  child: Opacity(
                    opacity: 0.75,
                    child: Image.asset(
                      isLocaleDE
                          ? "assets/images/english.png"
                          : "assets/images/german.png",
                      height: Adaptive.h(6),
                      width: Adaptive.w(6),
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
