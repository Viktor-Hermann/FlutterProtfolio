import 'package:flutter/material.dart';
import 'package:web_app/presentation/contact/widgets/qr_dialog.dart';

Future<void> showQrAlertDialog({@required BuildContext context}) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return QrDialogWidget();
    },
  );
}
