import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:web_app/domain/entities/service.dart';

List<Service> services = [
  Service(
    id: 1,
    title: 'service_01'.tr(),
    image: "assets/images/cross-platform.png",
    color: Color(0xFF304481).withOpacity(0.4),
  ),
  Service(
    id: 2,
    title: 'service_02'.tr(),
    image: "assets/images/application.png",
    color: Color(0x424242).withOpacity(0.3),
  ),
  Service(
    id: 3,
    title: 'service_03'.tr(),
    image: "assets/images/maintenance.png",
    color: Color(0xFF304481).withOpacity(0.4),
  ),
  Service(
    id: 4,
    title: 'service_04'.tr(),
    image: "assets/images/risk-management.png",
    color: Color(0x424242).withOpacity(0.3),
  ),
  Service(
    id: 5,
    title: 'service_05'.tr(),
    image: "assets/images/meter.png",
    color: Color(0x424242).withOpacity(0.3),
  ),
  Service(
    id: 6,
    title: 'service_06'.tr(),
    image: "assets/images/notification.png",
    color: Color(0xFF304481).withOpacity(0.4),
  ),
  Service(
    id: 7,
    title: 'service_07'.tr(),
    image: "assets/images/google-play.png",
    color: Color(0x424242).withOpacity(0.3),
  ),
  Service(
    id: 8,
    title: 'service_08'.tr(),
    image: "assets/images/high-quality.png",
    color: Color(0xFF304481).withOpacity(0.4),
  ),
];
