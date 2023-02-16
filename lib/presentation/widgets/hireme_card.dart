import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/presentation/widgets/my_outline_button.dart';
import 'package:web_app/utils/shortcut_starter.dart';

import '../../utils/constants.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Adaptive.h(2)),
      constraints: BoxConstraints(maxWidth: Adaptive.w(90)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png",
            height: Adaptive.h(10),
            width: Adaptive.w(10),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Adaptive.w(1)),
            child: SizedBox(
              height: Adaptive.h(8),
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).startingNewProjectTitle,
                  style: TextStyle(
                      fontSize: Adaptive.sp(16), fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Adaptive.h(2)),
                Text(
                  S.of(context).startingNewProjectSubtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: Adaptive.sp(12)),
                )
              ],
            ),
          ),
          MyOutlineButton(
            text: S.of(context).hireMeAction,
            imageSrc: "assets/images/hand.png",
            press: () async => await startEmailShortcut(context),
          )
        ],
      ),
    );
  }
}
