import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/infrastructure/datasource/recent_work_data.dart';
import 'package:web_app/presentation/widgets/hireme_card.dart';
import 'package:web_app/presentation/widgets/section_title.dart';
import 'package:web_app/utils/responsive.dart';

import 'widgets/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Adaptive.h(12)),
      width: Adaptive.w(100),
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
          Visibility(
            visible: isDesktopScreen,
            child: Transform.translate(
              offset: Offset(0, -Adaptive.h(7)),
              child: HireMeCard(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Adaptive.w(isDesktopScreen ? 6 : 3),
                vertical: Adaptive.h(isDesktopScreen ? 6 : 3)),
            child: SectionTitle(
              title: S.of(context).myProjectTitle,
              subTitle: S.of(context).myProjectSubtitle,
            ),
          ),
          SizedBox(height: Adaptive.h(isDesktopScreen ? 8 : 3)),
          SizedBox(
            child: Wrap(
              spacing: Adaptive.w(isDesktopScreen ? 3 : 10),
              runSpacing: Adaptive.w(isDesktopScreen ? 3 : 10),
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorkCard(index: index, press: () {}),
              ),
            ),
          ),
          SizedBox(height: Adaptive.h(6)),
        ],
      ),
    );
  }
}
