import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
    this.height = 60.0,
    this.style = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Color(0xFF304481),
    ),
  }) : super(key: key);

  final Function press;
  final String imageSrc, text;
  final TextStyle style;
  final double height;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: BorderSide(color: Color(0xFFEDEDED)),
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
          ),
        ),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              imageSrc,
              height: height,
            ),
            SizedBox(width: kDefaultPadding),
            Text(
              text,
              style: style,
            )
          ],
        ),
      ),
    );
  }
}
