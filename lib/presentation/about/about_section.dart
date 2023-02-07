import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:web_app/presentation/widgets/my_outline_button.dart';
import 'package:web_app/utils/constants.dart';

import 'widgets/about_section_text.dart';
import 'widgets/about_text_with_sign.dart';
import 'widgets/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: BoxConstraints(maxWidth: 1110),
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
                            text: 'aboutMeDescription'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: 'aboutMeDescription_1'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: 'aboutMeDescription_2'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: 'aboutMeDescription_3'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                              text: 'aboutMeDescription_4'.tr(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: kTextColor,
                                  height: 2)),
                        ],
                      ),
                    ),
                  ),
                ),
                ExperienceCard(numOfExp: 'experienceYear'.tr()),
                Expanded(
                  child: AboutSectionText(
                    richText: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: 'experienceYearDescription'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: 'experienceYearDescription_1'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: 'experienceYearDescription_2'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: 'experienceYearDescription_3'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: 'experienceYearDescription_4'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: 'experienceYearDescription_5'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: 'experienceYearDescription_6'.tr(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                                height: 2),
                          ),
                          TextSpan(
                            text: 'experienceYearDescription_7'.tr(),
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
                  text: 'downloadCvAction'.tr(),
                  press: () {},
                ),
                SizedBox(width: kDefaultPadding * 5),
                MyOutlineButton(
                  imageSrc: "assets/images/hand.png",
                  text: 'hireMeAction'.tr(),
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
