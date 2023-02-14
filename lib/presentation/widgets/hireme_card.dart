import 'package:flutter/material.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/presentation/widgets/my_outline_button.dart';
import 'package:web_app/utils/platform_shortcut_starter.dart';

import '../../utils/constants.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 2),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png",
            height: 80,
            width: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).startingNewProjectTitle,
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: kDefaultPadding / 2),
                Text(
                  S.of(context).startingNewProjectSubtitle,
                  style: TextStyle(fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
          MyOutlineButton(
            text: S.of(context).hireMeAction,
            height: 80,
            imageSrc: "assets/images/hand.png",
            press: () async => await startEmailShortcut(context),
          )
        ],
      ),
    );
  }
}
