import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/utils/responsive.dart';

import 'widgets/intro_person_text.dart';
import 'widgets/menu_horizontal.dart';
import 'widgets/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints:
          BoxConstraints(maxHeight: Adaptive.h(isDesktopScreen ? 90 : 52)),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: Adaptive.w(1)),
          color: Colors.white.withOpacity(0),
          child: Container(
            margin: EdgeInsets.only(top: Adaptive.w(1)),
            child: Stack(
              children: [
                IntroPersonText(),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: PersonPic(),
                ),
                Visibility(
                  visible: isDesktopScreen,
                  child: Positioned(
                    bottom: 0,
                    child: MenuHorizontal(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
