import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key key,
    this.richText,
  }) : super(key: key);

  final Widget richText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: richText,
    );
  }
}
