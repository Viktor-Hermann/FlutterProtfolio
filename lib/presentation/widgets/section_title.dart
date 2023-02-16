import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
      margin: EdgeInsets.symmetric(vertical: 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              subTitle,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF304481),
                  fontSize: Adaptive.sp(12)),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.displayMedium.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF304481),
                  fontSize: Adaptive.sp(20)),
            )
          ],
        ),
      ),
    );
  }
}
