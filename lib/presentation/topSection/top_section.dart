import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_app/utils/constants.dart';

import 'widgets/intro_person_text.dart';
import 'widgets/menu_horizontal.dart';
import 'widgets/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
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
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          color: Colors.white.withOpacity(0),
          child: Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            child: Stack(
              children: [
                IntroPersonText(),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: PersonPic(),
                ),
                Positioned(
                  bottom: 0,
                  child: MenuHorizontal(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
