import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'aboutMeShort'.tr(),
                style: TextStyle(
                    fontWeight: FontWeight.w200, color: Color(0xFF304481)),
              ),
              Text(
                'aboutMeTitle'.tr(),
                style: Theme.of(context).textTheme.displayMedium.copyWith(
                    fontWeight: FontWeight.bold, color: Color(0xFF304481)),
              )
            ],
          ),
        ),
        SizedBox(height: kDefaultPadding),
        Padding(
          padding: const EdgeInsets.only(right: 32.0),
          child: Image.asset(
            "assets/images/sign.png",
            width: 250,
          ),
        )
      ],
    );
  }
}
