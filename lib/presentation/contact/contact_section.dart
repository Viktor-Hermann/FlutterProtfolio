import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web_app/application/contact/contact_controller.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/presentation/widgets/my_outline_button.dart';
import 'package:web_app/presentation/widgets/section_title.dart';
import 'package:web_app/utils/constants.dart';
import 'package:web_app/utils/platform_shortcut_starter.dart';

import 'widgets/socal_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/contact_us.png"),
        ),
      ),
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
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.5),
      margin:
          EdgeInsets.only(top: kDefaultPadding, bottom: kDefaultPadding * 3),
      padding: EdgeInsets.all(kDefaultPadding * 3),
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
                fontSize: 26),
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            S.of(context).contactMeInstantRequest,
            style: Theme.of(context).textTheme.headlineSmall.copyWith(
                color: Colors.grey[700],
                fontWeight: FontWeight.w400,
                fontSize: 22),
          ),
          SizedBox(height: kDefaultPadding),
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
          SizedBox(height: kDefaultPadding * 2),
          Text(
            S.of(context).contactMeSocialMediaRequest,
            style: Theme.of(context).textTheme.headlineSmall.copyWith(
                color: Colors.grey[700],
                fontWeight: FontWeight.w400,
                fontSize: 22),
          ),
          SizedBox(height: kDefaultPadding),
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

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: S.of(context).contactFormName,
                hintText: S.of(context).contactFormNameHint,
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: S.of(context).contactFormEmail,
                hintText: S.of(context).contactFormEmailHint,
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: S.of(context).contactFormProjectType,
                hintText: S.of(context).contactFormProjectTypeHint,
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: S.of(context).contactFormBudget,
                hintText: S.of(context).contactFormBudgetHint,
              ),
            ),
          ),
          SizedBox(
            child: TextFormField(
              maxLines: 10,
              textAlign: TextAlign.start,
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: S.of(context).contactFormDescription,
                  hintText: S.of(context).contactFormDescriptionHint,
                  alignLabelWithHint: true),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: MyOutlineButton(
                imageSrc: "assets/images/send.png",
                text: S.of(context).contactSend,
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
