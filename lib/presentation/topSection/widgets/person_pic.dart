import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: Adaptive.w(40), maxHeight: Adaptive.h(85)),
      child: Image.asset("assets/images/person.png"),
    );
  }
}
