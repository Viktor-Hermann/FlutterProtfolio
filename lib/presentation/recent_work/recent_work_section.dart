import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:web_app/infrastructure/datasource/recent_work_data.dart';
import 'package:web_app/presentation/widgets/hireme_card.dart';
import 'package:web_app/presentation/widgets/section_title.dart';
import 'package:web_app/utils/constants.dart';

import 'widgets/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.2),
        image: DecorationImage(
          fit: BoxFit.cover,
          opacity: 0.4,
          image: AssetImage("assets/images/my_project_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: 'myProjectTitle'.tr(),
            subTitle: 'myProjectSubtitle'.tr(),
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorkCard(index: index, press: () {}),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
