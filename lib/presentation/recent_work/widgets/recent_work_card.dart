import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/infrastructure/datasource/recent_work_data.dart';
import 'package:web_app/utils/responsive.dart';

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
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: Adaptive.h(isDesktopScreen ? 40 : 35),
      width: Adaptive.w(isDesktopScreen ? 34 : 75),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
              padding: recentWorks[widget.index].edgeinsets,
              child: Image.asset(
                recentWorks[widget.index].image,
                fit: BoxFit.scaleDown,
                width: Adaptive.w(isDesktopScreen ? 15 : 40),
              )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Adaptive.w(1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: kDefaultPadding / 2),
                  Text(
                    recentWorks[widget.index].client,
                    style: Theme.of(context).textTheme.headlineSmall.copyWith(
                          height: 1.5,
                          fontSize: Adaptive.sp(14),
                        ),
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Text(
                    recentWorks[widget.index].appTitle,
                    style: Theme.of(context).textTheme.headlineSmall.copyWith(
                        height: 1.5,
                        fontSize: Adaptive.sp(15),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: kDefaultPadding),
                  // Text(
                  //   "View Details",
                  //   style: TextStyle(decoration: TextDecoration.underline),
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
