import 'package:flutter/material.dart';
import 'package:web_app/infrastructure/datasource/feedback_data.dart';

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
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final feedbacks = FeedbackData().getFeedbacks(context);
    final feedback = feedbacks[widget.index];
    return AnimatedContainer(
      duration: duration,
      margin: EdgeInsets.only(top: kDefaultPadding * 3),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        color: feedback.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Transform.translate(
            offset: Offset(0, -50),
            child: AnimatedContainer(
              duration: duration,
              height: 124,
              width: 124,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 10),
              ),
              child: ClipOval(
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/profile.png',
                  image: feedback.userPic,
                  fadeInDuration: const Duration(milliseconds: 2000),
                  fadeOutDuration: const Duration(milliseconds: 800),
                  height: 100,
                  fadeInCurve: Curves.fastOutSlowIn,
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: kDefaultPadding * 4),
              Text(
                feedback.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                feedback.company,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              Text(
                feedback.role,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  height: 1.5,
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Text(
                feedback.review,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 18,
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
