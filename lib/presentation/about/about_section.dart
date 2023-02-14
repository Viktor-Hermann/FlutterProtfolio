import 'package:flutter/material.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/presentation/widgets/my_outline_button.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/utils/platform_shortcut_starter.dart';

import 'widgets/about_section_text.dart';
import 'widgets/about_text_with_sign.dart';
import 'widgets/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AboutTextWithSign(),
                Expanded(
                  child: AboutSectionText(
                    richText: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: S.of(context).aboutMeDescription,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).aboutMeDescription_1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).aboutMeDescription_2,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).aboutMeDescription_3,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                              text: S.of(context).aboutMeDescription_4,
                              style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: kTextColor,
                                  height: 2)),
                        ],
                      ),
                    ),
                  ),
                ),
                ExperienceCard(numOfExp: S.of(context).experienceYear),
                Expanded(
                  child: AboutSectionText(
                    richText: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: S.of(context).experienceYearDescription,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_2,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_3,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_4,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_5,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_6,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_7,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding * 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyOutlineButton(
                  imageSrc: "assets/images/download.png",
                  text: S.of(context).downloadCvAction,
                  press: () {},
                ),
                SizedBox(width: kDefaultPadding * 5),
                MyOutlineButton(
                  imageSrc: "assets/images/hand.png",
                  text: S.of(context).hireMeAction,
                  press: () async => await startEmailShortcut(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
