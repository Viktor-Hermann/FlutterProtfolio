import 'package:flutter/material.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/infrastructure/datasource/services_data.dart';
import 'package:web_app/presentation/widgets/section_title.dart';
import 'package:web_app/utils/constants.dart';

import 'widgets/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
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
            itemCount: services.length,
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
