import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:web_app/infrastructure/datasource/services_data.dart';
import 'package:web_app/utils/responsive.dart';


class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    final serviceData = ServicesData();
    return AnimatedContainer(
      duration: duration,
      margin: EdgeInsets.symmetric(
          vertical: Adaptive.h(2), horizontal: Adaptive.w(2)),
      decoration: BoxDecoration(
        color: serviceData.getServices(context)[widget.index].color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: duration,
            padding: EdgeInsets.all(Adaptive.h(isDesktopScreen ? 2 : 1)),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              serviceData.getServices(context)[widget.index].image,
              fit: BoxFit.fill,
              height: Adaptive.h(isDesktopScreen ? 10 : 5),
              width: Adaptive.h(isDesktopScreen ? 10 : 5),
            ),
          ),
          SizedBox(height: Adaptive.h(2)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Adaptive.w(2)),
            child: Text(
              serviceData.getServices(context)[widget.index].title,
              style: TextStyle(
                  fontSize: Adaptive.sp(12), fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: Adaptive.h(2)),
        ],
      ),
    );
  }
}
