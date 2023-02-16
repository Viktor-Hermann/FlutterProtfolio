import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:web_app/generated/l10n.dart';
import 'package:web_app/presentation/widgets/my_outline_button.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/utils/responsive.dart';
import 'package:web_app/utils/shortcut_starter.dart';

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
        margin: EdgeInsets.symmetric(vertical: Adaptive.h(6)),
        constraints: BoxConstraints(maxWidth: Adaptive.w(90)),
        color: Colors.white,
        child: Column(
          children: [
            Visibility(
              visible: !isDesktopScreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: Adaptive.w(8)),
                    child: AboutTextWithSign(),
                  ),
                  ExperienceCard(numOfExp: S.of(context).experienceYear)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDesktopScreen ? AboutTextWithSign() : SizedBox(),
                Expanded(
                  child: AboutSectionText(
                    richText: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: S.of(context).aboutMeDescription,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: kTextColor,
                                fontSize: Adaptive.sp(12),
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).aboutMeDescription_1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                fontSize: Adaptive.sp(12),
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).aboutMeDescription_2,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: kTextColor,
                                fontSize: Adaptive.sp(12),
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).aboutMeDescription_3,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                fontSize: Adaptive.sp(12),
                                height: 2),
                          ),
                          TextSpan(
                              text: S.of(context).aboutMeDescription_4,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: kTextColor,
                                  fontSize: Adaptive.sp(12),
                                  height: 2)),
                        ],
                      ),
                    ),
                  ),
                ),
                isDesktopScreen
                    ? ExperienceCard(numOfExp: S.of(context).experienceYear)
                    : SizedBox(),
                Expanded(
                  child: AboutSectionText(
                    richText: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: S.of(context).experienceYearDescription,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: kTextColor,
                                fontSize: Adaptive.sp(12),
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                fontSize: Adaptive.sp(12),
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_2,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Adaptive.sp(12),
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_3,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Adaptive.sp(12),
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_4,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Adaptive.sp(12),
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_5,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Adaptive.sp(12),
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_6,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Adaptive.sp(12),
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: S.of(context).experienceYearDescription_7,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Adaptive.sp(12),
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
                  text: isDesktopScreen
                      ? S.of(context).downloadCvAction
                      : S.of(context).downloadCvActionBreaked,
                  press: () async {
                    final Locale appLocale = Localizations.localeOf(context);
                    await startUrlShortcut(
                        link: appLocale.languageCode == 'en'
                            ? 'https://drive.google.com/file/d/1UmJZkQlf1nOQa_Mp1pIcZSldyK0SoJFa/view?usp=share_link'
                            : 'https://drive.google.com/file/d/1A59RiMLjp4gAhd8DFjEzOCwi10kUgqXl/view?usp=share_link');
                  },
                ),
                SizedBox(width: Adaptive.w(12)),
                MyOutlineButton(
                  imageSrc: "assets/images/hand.png",
                  text: isDesktopScreen
                      ? S.of(context).hireMeAction
                      : S.of(context).hireMeActionBreaked,
                  press: () async => startEmailShortcut(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
