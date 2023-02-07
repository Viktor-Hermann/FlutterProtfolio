import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:web_app/presentation/widgets/my_outline_button.dart';
import 'package:web_app/presentation/widgets/section_title.dart';
import 'package:web_app/utils/constants.dart';

import 'widgets/socal_card.dart';

class ContactSection extends StatelessWidget {
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
            title: 'contactTitle'.tr(),
            subTitle: 'contactSubtitle'.tr(),
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
      margin: EdgeInsets.only(top: kDefaultPadding),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                iconSrc: "assets/images/whatsapp.png",
                press: () {},
              ),
              SocalCard(
                iconSrc: "assets/images/linkedin.png",
                press: () {},
              ),
              SocalCard(
                iconSrc: "assets/images/telephone.png",
                press: () {},
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          Text(
            'contactMeQestionOrJob'.tr(),
            style: Theme.of(context).textTheme.headlineSmall.copyWith(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            'contactMeRequest'.tr(),
            style: Theme.of(context).textTheme.headlineSmall.copyWith(
                color: Colors.grey[700],
                fontWeight: FontWeight.w400,
                fontSize: 22),
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
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
                labelText: 'contactFormName'.tr(),
                hintText: 'contactFormNameHint'.tr(),
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'contactFormEmail'.tr(),
                hintText: 'contactFormEmailHint'.tr(),
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'contactFormProjectType'.tr(),
                hintText: 'contactFormProjectTypeHint'.tr(),
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'contactFormBudget'.tr(),
                hintText: 'contactFormBudgetHint'.tr(),
              ),
            ),
          ),
          SizedBox(
            child: TextFormField(
              maxLines: 10,
              textAlign: TextAlign.start,
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: 'contactFormDescription'.tr(),
                  hintText: 'contactFormDescriptionHint'.tr(),
                  alignLabelWithHint: true),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: MyOutlineButton(
                imageSrc: "assets/images/send.png",
                text: "Send request!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
