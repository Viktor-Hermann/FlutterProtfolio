import 'package:flutter/material.dart';
import 'package:web_app/generated/l10n.dart';

import '../../../utils/constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        width: double.infinity,
        color: Colors.white.withOpacity(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            Text(
              S.of(context).upperSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  .copyWith(color: Colors.grey[700]),
            ),
            Text(
              S.of(context).nameTitle,
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                height: 1.5,
              ),
            ),
            SizedBox(height: 20),
            Text(
              S.of(context).bottomSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  .copyWith(color: Colors.grey[700]),
            ),
            SizedBox(height: 42),
            Text(
              '"${S.of(context).motto}"',
              style: Theme.of(context).textTheme.headlineSmall.copyWith(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 26),
            ),
            SizedBox(height: 12),
            Text(
              S.of(context).nelsonMandela,
              style: Theme.of(context).textTheme.headlineSmall.copyWith(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w200,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
