import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:web_app/application/topsection/menu_controller.dart';
import 'package:web_app/presentation/impressum/impressum_section.dart';
import 'package:web_app/presentation/about/about_section.dart';
import 'package:web_app/presentation/contact/contact_section.dart';
import 'package:web_app/presentation/feedback/feedback_section.dart';
import 'package:web_app/presentation/recent_work/recent_work_section.dart';
import 'package:web_app/presentation/service/service_section.dart';
import 'package:web_app/presentation/topSection/top_section.dart';
import 'package:web_app/utils/responsive.dart';

import '../application/home_controller.dart';

final List<GlobalKey> menuKeys = [
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
];

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    HomeController homeController = HomeController(ref: ref);
    final floatingButtonVisibility = ref.watch(showFloatingButtonProvider);
    final menuItems = getMenuList(context);
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Scrollable.ensureVisible(menuKeys[index - 1].currentContext,
                    duration: Duration(milliseconds: 650));
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text(menuItems[index]),
              ),
            );
          },
        ),
      ),
      
      floatingActionButton: AnimatedOpacity(
        opacity: floatingButtonVisibility ? 1.0 : 0.0,
        curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 400),
        child: Visibility(
          visible: isDesktopScreen,
          child: FloatingActionButton(
            onPressed: () {
              Scrollable.ensureVisible(menuKeys[0].currentContext,
                  duration: Duration(milliseconds: 650));
            },
            backgroundColor: Color(0xFF304481),
            child: Icon(Icons.arrow_upward),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VisibilityDetector(
              key: Key('FloatingActionButton'),
              onVisibilityChanged: (visibilityInfo) {
                double visiblePercentage = visibilityInfo.visibleFraction * 100;
                if (visiblePercentage == 0) {
                  homeController.showFloatingButton();
                } else {
                  homeController.hideFloatingButton();
                }
              },
              child: TopSection(key: menuKeys[0]),
            ),
            Visibility(
                visible: isDesktopScreen,
                child: SizedBox(height: Adaptive.h(3))),
            AboutSection(key: menuKeys[1]),
            ServiceSection(key: menuKeys[2]),
            RecentWorkSection(key: menuKeys[3]),
            FeedbackSection(key: menuKeys[4]),
            Visibility(
                visible: isDesktopScreen,
                child: SizedBox(height: Adaptive.h(3))),
            ContactSection(key: menuKeys[5]),
            ImpressumSection(key: menuKeys[6]),
          ],
        ),
      ),
    );
  }
}
