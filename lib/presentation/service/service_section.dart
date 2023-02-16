import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/infrastructure/datasource/services_data.dart';
import 'package:web_app/presentation/widgets/section_title.dart';
import 'package:web_app/utils/responsive.dart';

import 'widgets/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final serviceData = ServicesData();
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: Adaptive.h(isDesktopScreen ? 5 : 0)),
      constraints: BoxConstraints(maxWidth: Adaptive.w(90)),
      child: Column(
        children: [
          SectionTitle(
            color: Colors.grey[600],
            title: S.of(context).serviceTitle,
            subTitle: S.of(context).serviceSubtitle,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: serviceData.getServices(context).length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isDesktopScreen ? 4 : 2,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) => ServiceCard(index: index),
          )
        ],
      ),
    );
  }
}
