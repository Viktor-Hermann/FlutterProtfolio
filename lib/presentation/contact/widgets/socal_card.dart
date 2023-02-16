import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  final String iconSrc;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: press,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          child: Row(
            children: [
              Image.asset(
                iconSrc,
                height: Adaptive.h(10),
                width: Adaptive.w(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
