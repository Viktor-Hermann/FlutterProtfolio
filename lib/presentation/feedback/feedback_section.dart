import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/infrastructure/datasource/feedback_data.dart';
import 'package:web_app/presentation/widgets/section_title.dart';
import 'package:web_app/utils/constants.dart';

import 'widgets/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final feedbacks = FeedbackData().getFeedbacks(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
      child: Column(
        children: [
          SectionTitle(
            title: S.of(context).feedbackTitle,
            subTitle: S.of(context).feedbackSubtitle,
          ),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 364.0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 8),
              animateToClosest: true,
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            itemCount: feedbacks.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    FeedbackCard(
              index: itemIndex,
            ),
          ),
        ],
      ),
    );
  }
}
