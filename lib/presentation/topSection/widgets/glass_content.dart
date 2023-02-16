import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/generated/l10n.dart';
import 'package:web_app/utils/responsive.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Adaptive.w(2)),
        width: double.infinity,
        color: Colors.white.withOpacity(0),
        child: Container(
          constraints: BoxConstraints(maxWidth: Adaptive.w(50)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Adaptive.h(isDesktopScreen ? 15 : 8)),
              Text(
                S.of(context).nameTitle,
                style: TextStyle(
                  fontSize: Adaptive.sp(20),
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  height: 1.5,
                ),
              ),
              SizedBox(height: Adaptive.h(0.8)),
              Text(
                S.of(context).bottomSubTitle,
                style: Theme.of(context).textTheme.headlineSmall.copyWith(
                    color: Colors.grey[700],
                    fontSize: Adaptive.sp(16),
                    overflow: TextOverflow.ellipsis),
              ),
              SizedBox(height: Adaptive.h(4)),
              Text(
                isDesktopScreen
                    ? '"${S.of(context).motto}"'
                    : '"${S.of(context).mottoBreaked}"',
                style: Theme.of(context).textTheme.headlineSmall.copyWith(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                    fontSize: Adaptive.sp(16)),
              ),
              SizedBox(height: Adaptive.h(isDesktopScreen ? 2 : 1)),
              Text(
                S.of(context).nelsonMandela,
                style: Theme.of(context).textTheme.headlineSmall.copyWith(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                    fontSize: Adaptive.sp(12)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
