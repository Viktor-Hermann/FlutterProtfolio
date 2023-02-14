import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app/generated/l10n.dart';

Future<void> startEmailShortcut(BuildContext context) async {
  String email = Uri.encodeComponent("v.hermann.it@gmail.com");
  String subject = Uri.encodeComponent(S.of(context).emailContentTitle);
  String body = Uri.encodeComponent(S.of(context).emailContentSubTitle);

  startUrlShortcut(link: "mailto:$email?subject=$subject&body=$body");
}

Future<void> startUrlShortcut({@required String link}) async {
  Uri url = Uri.parse(link);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  }
}

Future<void> startPhoneShortcut() async {
  const phone = "tel:01759918357";
  startUrlShortcut(link: phone);
}
