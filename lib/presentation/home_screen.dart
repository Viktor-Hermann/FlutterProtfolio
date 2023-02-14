import 'package:flutter/material.dart';
import 'package:web_app/presentation/impressum/impressum_section.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/presentation/about/about_section.dart';
import 'package:web_app/presentation/contact/contact_section.dart';
import 'package:web_app/presentation/feedback/feedback_section.dart';
import 'package:web_app/presentation/recent_work/recent_work_section.dart';
import 'package:web_app/presentation/service/service_section.dart';
import 'package:web_app/presentation/topSection/top_section.dart';

final List<GlobalKey> menuKeys = [
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(key: menuKeys[0]),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(key: menuKeys[1]),
            ServiceSection(key: menuKeys[2]),
            RecentWorkSection(key: menuKeys[3]),
            FeedbackSection(key: menuKeys[4]),
            SizedBox(height: kDefaultPadding),
            ContactSection(key: menuKeys[5]),
            ImpressumSection(key: menuKeys[6]),
          ],
        ),
      ),
    );
  }
}
