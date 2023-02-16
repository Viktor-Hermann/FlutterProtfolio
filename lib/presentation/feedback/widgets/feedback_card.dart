import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/infrastructure/datasource/feedback_data.dart';
import 'package:web_app/utils/responsive.dart';

import '../../../utils/constants.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    final feedbacks = FeedbackData().getFeedbacks(context);
    final feedback = feedbacks[widget.index];
    return AnimatedContainer(
      duration: duration,
      margin: EdgeInsets.only(top: Adaptive.h(6)),
      padding: EdgeInsets.symmetric(horizontal: Adaptive.w(3)),
      width: Adaptive.w(50),
      decoration: BoxDecoration(
        color: feedback.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Transform.translate(
            offset: Offset(0, -Adaptive.h(6)),
            child: AnimatedContainer(
              duration: duration,
              height: Adaptive.h(isDesktopScreen ? 16 : 10),
              width: Adaptive.h(isDesktopScreen ? 16 : 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: Adaptive.w(0.8)),
              ),
              child: ClipOval(
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/profile.png',
                  image: feedback.userPic,
                  fadeInDuration: const Duration(milliseconds: 2000),
                  fadeOutDuration: const Duration(milliseconds: 800),
                  fadeInCurve: Curves.fastOutSlowIn,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: Adaptive.h(isDesktopScreen ? 16 : 8)),
              Text(
                feedback.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Adaptive.sp(14),
                ),
              ),
              Text(
                feedback.company,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: Adaptive.sp(12),
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              Text(
                feedback.role,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: Adaptive.sp(12),
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                ),
              ),
              SizedBox(height: Adaptive.h(2)),
              Text(
                feedback.review,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: Adaptive.sp(13),
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
