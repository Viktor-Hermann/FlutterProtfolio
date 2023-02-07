import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key key,
    this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 255,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFF304479).withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2
                      ..color = Colors.white.withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 10,
                        color: Color(0xFF405aa8).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              'experienceYearTitle'.tr(),
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
