import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/presentation/widgets/section_title.dart';
import 'package:web_app/utils/constants.dart';

class ImpressumSection extends StatelessWidget {
  const ImpressumSection({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: Adaptive.h(4), horizontal: Adaptive.w(5)),
      constraints: BoxConstraints(maxWidth: Adaptive.w(90)),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            title: S.of(context).impressumTitle,
            subTitle: S.of(context).impressumSubtitle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: Adaptive.h(5)),
                      constraints: BoxConstraints(
                          maxWidth: Adaptive.w(50), maxHeight: Adaptive.h(50)),
                      child: Image.asset(
                        "assets/images/person.png",
                        height: Adaptive.h(30),
                        width: Adaptive.w(30),
                      ),
                    ),
                    SizedBox(height: Adaptive.h(3)),
                    Text(S.of(context).impressumAdress,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                            fontSize: Adaptive.sp(13),
                            height: 2)),
                    Image.asset(
                      "assets/images/brandmark-design.png",
                      height: Adaptive.h(5),
                    ),
                    Text('Viktor Hermann',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kTextColor,
                            fontSize: Adaptive.sp(12),
                            height: 2)),
                    Text('Oststr. 6',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kTextColor,
                            fontSize: Adaptive.sp(12),
                            height: 2)),
                    Text('33813 Oerlinghausen',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kTextColor,
                            fontSize: Adaptive.sp(12),
                            height: 2)),
                    SizedBox(height: Adaptive.h(3)),
                    Text(S.of(context).impressumContact,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                            fontSize: Adaptive.sp(13),
                            height: 2)),
                    Text('${S.of(context).impressumPhone} 01234-789456',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kTextColor,
                            fontSize: Adaptive.sp(12),
                            height: 2)),
                    Text(
                        '${S.of(context).impressumEmail}: v.hermann.it@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kTextColor,
                            fontSize: Adaptive.sp(12),
                            height: 2)),
                    SizedBox(height: Adaptive.h(3)),
                    Text(S.of(context).impressumUstIdNrTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                            fontSize: Adaptive.sp(13),
                            height: 2)),
                    Text('DE354056169',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kTextColor,
                            fontSize: Adaptive.sp(12),
                            height: 2)),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.of(context).impressumDisclaimer,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                            fontSize: Adaptive.sp(14),
                            height: 2)),
                    SizedBox(height: Adaptive.h(3)),
                    Text(S.of(context).impressumLinks,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                            fontSize: Adaptive.sp(13),
                            height: 2)),
                    Text(S.of(context).impressumLinksText,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kTextColor,
                            fontSize: Adaptive.sp(10),
                            height: 2)),
                    SizedBox(height: Adaptive.h(3)),
                    Text(S.of(context).impressumPrivacy,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                            fontSize: Adaptive.sp(13),
                            height: 2)),
                    Text(S.of(context).impressumPrivacyText,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kTextColor,
                            fontSize: Adaptive.sp(10),
                            height: 2)),
                    SizedBox(height: Adaptive.h(3)),
                    Text(S.of(context).impressumGLytics,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                            fontSize: Adaptive.sp(13),
                            height: 2)),
                    Text(S.of(context).impressumGLyticsText,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kTextColor,
                            fontSize: Adaptive.sp(10),
                            height: 2)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Adaptive.h(12)),
        ],
      ),
    );
  }
}
