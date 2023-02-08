import 'dart:ui';

import 'package:web_app/domain/entities/feedback.dart';
import 'package:web_app/generated/l10n.dart';

List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "A. Bauer",
    role: 'Workmate',
    company: '>> progresso group GmbH',
    review: S.current.feedbackABauer,
    userPic: "assets/images/people.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "C. Xavier",
    review: review,
    role: 'Team leader',
    company: '>> progresso group GmbH',
    userPic: "assets/images/people.png",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: 'J. Latz',
    role: 'Product Owner',
    company: 'Union Investment Real Estate GmbH',
    review: review,
    userPic: "assets/images/people.png",
    color: Color(0xFFFFE0E0),
  ),
  Feedback(
    id: 4,
    name: 'S. Hoenig',
    role: 'Tech Lead',
    company: 'Union Investment Real Estate GmbH',
    review: review,
    userPic: "assets/images/people.png",
    color: Color(0xFFFFE0E0),
  ),
];

String review =
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';
