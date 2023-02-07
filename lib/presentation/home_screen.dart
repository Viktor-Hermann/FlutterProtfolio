import 'package:flutter/material.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/presentation/about/about_section.dart';
import 'package:web_app/presentation/contact/contact_section.dart';
import 'package:web_app/presentation/feedback/feedback_section.dart';
import 'package:web_app/presentation/recent_work/recent_work_section.dart';
import 'package:web_app/presentation/service/service_section.dart';
import 'package:web_app/presentation/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
