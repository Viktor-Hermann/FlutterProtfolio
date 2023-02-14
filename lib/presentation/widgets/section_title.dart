import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    this.title,
    this.subTitle,
    this.color,
  }) : super(key: key);

  final String title, subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
      height: 100,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              subTitle,
              style: TextStyle(
                  fontWeight: FontWeight.w200, color: Color(0xFF304481)),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.displayMedium.copyWith(
                  fontWeight: FontWeight.bold, color: Color(0xFF304481)),
            )
          ],
        ),
      ),
    );
  }
}
