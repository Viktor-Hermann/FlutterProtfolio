import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/utils/responsive.dart';

import '../../utils/constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
    this.style = const TextStyle(
      fontWeight: FontWeight.bold,
      color: Color(0xFF304481),
    ),
  }) : super(key: key);

  final Function press;
  final String imageSrc, text;
  final TextStyle style;

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
            vertical: Adaptive.h(3),
            horizontal: Adaptive.w(3),
          ),
        ),
        onPressed: press,
        child: isDesktopScreen
            ? OutlineButtonRow(imageSrc: imageSrc, text: text, style: style)
            : OutlineButtonColumn(imageSrc: imageSrc, text: text, style: style),
      ),
    );
  }
}

class OutlineButtonRow extends StatelessWidget {
  const OutlineButtonRow({
    Key key,
    @required this.imageSrc,
    @required this.text,
    @required this.style,
  }) : super(key: key);

  final String imageSrc;
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageSrc,
          height: Adaptive.h(8),
        ),
        SizedBox(width: kDefaultPadding),
        Text(
          text,
          style: style.copyWith(fontSize: Adaptive.sp(13)),
        )
      ],
    );
  }
}

class OutlineButtonColumn extends StatelessWidget {
  const OutlineButtonColumn({
    Key key,
    @required this.imageSrc,
    @required this.text,
    @required this.style,
  }) : super(key: key);

  final String imageSrc;
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageSrc,
          height: Adaptive.h(4),
        ),
        SizedBox(height: Adaptive.h(.5)),
        Text(
          text,
          style: style.copyWith(fontSize: Adaptive.sp(13)),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
