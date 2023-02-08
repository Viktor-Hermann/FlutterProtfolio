import 'dart:ui';

import 'package:web_app/domain/entities/service.dart';
import 'package:web_app/generated/l10n.dart';

List<Service> services = [
  Service(
    id: 1,
    title: S.current.service_01,
    image: "assets/images/cross-platform.png",
    color: Color(0xFF304481).withOpacity(0.4),
  ),
  Service(
    id: 2,
    title: S.current.service_02,
    image: "assets/images/application.png",
    color: Color(0x424242).withOpacity(0.3),
  ),
  Service(
    id: 3,
    title: S.current.service_03,
    image: "assets/images/maintenance.png",
    color: Color(0xFF304481).withOpacity(0.4),
  ),
  Service(
    id: 4,
    title: S.current.service_04,
    image: "assets/images/risk-management.png",
    color: Color(0x424242).withOpacity(0.3),
  ),
  Service(
    id: 5,
    title: S.current.service_05,
    image: "assets/images/meter.png",
    color: Color(0x424242).withOpacity(0.3),
  ),
  Service(
    id: 6,
    title: S.current.service_06,
    image: "assets/images/notification.png",
    color: Color(0xFF304481).withOpacity(0.4),
  ),
  Service(
    id: 7,
    title: S.current.service_07,
    image: "assets/images/google-play.png",
    color: Color(0x424242).withOpacity(0.3),
  ),
  Service(
    id: 8,
    title: S.current.service_08,
    image: "assets/images/high-quality.png",
    color: Color(0xFF304481).withOpacity(0.4),
  ),
];
