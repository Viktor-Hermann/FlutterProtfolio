import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/application/contact/contact_controller.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/presentation/widgets/section_title.dart';
import 'package:web_app/utils/responsive.dart';
import 'package:web_app/utils/shortcut_starter.dart';

import 'widgets/socal_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Adaptive.w(100),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/contact_us.png"),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Adaptive.h(6), horizontal: Adaptive.w(6)),
        child: Column(
          children: [
            SectionTitle(
              title: S.of(context).contactTitle,
              subTitle: S.of(context).contactSubtitle,
              color: Color(0xFF07E24A),
            ),
            ContactBox()
          ],
        ),
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: Adaptive.w(isDesktopScreen ? 50 : 80)),
      margin: EdgeInsets.only(top: Adaptive.h(4), bottom: Adaptive.h(4)),
      padding: EdgeInsets.all(Adaptive.h(isDesktopScreen ? 9 : 6)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).contactMeQestionOrJob,
            style: Theme.of(context).textTheme.headlineSmall.copyWith(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: Adaptive.sp(15)),
          ),
          SizedBox(height: Adaptive.h(3)),
          Text(
            S.of(context).contactMeInstantRequest,
            style: Theme.of(context).textTheme.headlineSmall.copyWith(
                color: Colors.grey[700],
                fontWeight: FontWeight.w400,
                fontSize: Adaptive.sp(14)),
          ),
          SizedBox(height: Adaptive.h(isDesktopScreen ? 6 : 4)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                iconSrc: "assets/images/telephone.png",
                press: () async {
                  if (defaultTargetPlatform == TargetPlatform.iOS ||
                      defaultTargetPlatform == TargetPlatform.android) {
                    await startPhoneShortcut();
                  } else {
                    await showQrAlertDialog(context: context);
                  }
                },
              ),
              SocalCard(
                iconSrc: "assets/images/whatsapp.png",
                press: () async => await startUrlShortcut(
                    link: 'https://wa.me/message/SA6LW4CGBJ42L1'),
              ),
              SocalCard(
                iconSrc: "assets/images/mail.png",
                press: () async => await startEmailShortcut(context),
              ),
            ],
          ),
          SizedBox(height: Adaptive.h(isDesktopScreen ? 6 : 4)),
          Text(
            S.of(context).contactMeSocialMediaRequest,
            style: Theme.of(context).textTheme.headlineSmall.copyWith(
                color: Colors.grey[700],
                fontWeight: FontWeight.w400,
                fontSize: Adaptive.sp(14)),
          ),
          SizedBox(height: Adaptive.h(isDesktopScreen ? 6 : 4)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                iconSrc: "assets/images/facebook.png",
                press: () async => await startUrlShortcut(
                    link:
                        'https://www.facebook.com/people/VApps-IT/100089815770981/'),
              ),
              SocalCard(
                  iconSrc: "assets/images/xing.png",
                  press: () async => await startUrlShortcut(
                      link:
                          'https://www.xing.com/profile/Viktor_Hermann22/cv')),
              SocalCard(
                iconSrc: "assets/images/linkedin.png",
                press: () async => await startUrlShortcut(
                    link:
                        'https://www.linkedin.com/in/viktor-hermann-103125245/'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
