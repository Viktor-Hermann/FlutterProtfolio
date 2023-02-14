import 'package:flutter/material.dart';
import 'package:web_app/generated/l10n.dart';

class QrDialogWidget extends StatelessWidget {
  const QrDialogWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).qrTitle),
      content: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Image.asset(
          "assets/images/qr_code.png",
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.2,
        ),
      ),
      actions: [
        TextButton(
          child: Text(S.of(context).qrButtonClose,
              style: Theme.of(context).textTheme.headlineSmall.copyWith(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 26)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
