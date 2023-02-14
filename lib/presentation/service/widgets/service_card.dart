import 'package:flutter/material.dart';
import 'package:web_app/infrastructure/datasource/services_data.dart';

import '../../../utils/constants.dart';

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
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      height: 256,
      width: 256,
      decoration: BoxDecoration(
        color: serviceData.getServices(context)[widget.index].color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [if (isHover) kDefaultCardShadow],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: duration,
            padding: EdgeInsets.all(kDefaultPadding * 1.0),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                if (!isHover)
                  BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.1),
                  ),
              ],
            ),
            child: Image.asset(
              serviceData.getServices(context)[widget.index].image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              serviceData.getServices(context)[widget.index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
