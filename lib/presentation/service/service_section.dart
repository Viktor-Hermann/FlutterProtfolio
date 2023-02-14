import 'package:flutter/material.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/infrastructure/datasource/services_data.dart';
import 'package:web_app/presentation/widgets/section_title.dart';
import 'package:web_app/utils/constants.dart';

import 'widgets/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final serviceData = ServicesData();
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
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
              crossAxisCount: 4,
              childAspectRatio: 1.0,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) => ServiceCard(index: index),
          )
        ],
      ),
    );
  }
}
