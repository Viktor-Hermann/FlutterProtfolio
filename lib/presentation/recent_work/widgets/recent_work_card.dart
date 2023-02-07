import 'package:flutter/material.dart';
import 'package:web_app/infrastructure/datasource/recent_work_data.dart';

import '../../../utils/constants.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key key,
    this.index,
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: 320,
      width: 540,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [if (isHover) kDefaultCardShadow],
      ),
      child: Row(
        children: [
          Padding(
            padding: recentWorks[widget.index].edgeinsets,
            child: Image.asset(
              recentWorks[widget.index].image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(recentWorks[widget.index].client.toUpperCase()),
                  SizedBox(height: kDefaultPadding / 2),
                  Text(
                    recentWorks[widget.index].appTitle,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        .copyWith(height: 1.5),
                  ),
                  SizedBox(height: kDefaultPadding),
                  Text(
                    "View Details",
                    style: TextStyle(decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
