import 'package:flutter/material.dart';
import 'package:web_app/domain/entities/feedback.dart';

import 'package:web_app/generated/l10n.dart';

class FeedbackData {
  String review =
      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';

  List<CustomFeedback> getFeedbacks(BuildContext context) {
    return [
      CustomFeedback(
        id: 1,
        name: "A. Bauer",
        role: 'Workmate',
        company: '>> progresso group GmbH',
        review: S.of(context).feedbackABauer,
        userPic:
            "https://media.licdn.com/dms/image/C4E03AQFaCidjwA53TQ/profile-displayphoto-shrink_200_200/0/1617016551140?e=1681344000&v=beta&t=kvsRIo72Vi78d_FoheMAoDJKnQcMZZg7sdSswd-XAJA",
        color: Color(0xFFFFF3DD),
      ),
      CustomFeedback(
        id: 2,
        name: "C. Xavier",
        review: S.of(context).feedbackCXavier,
        role: 'Team leader',
        company: '>> progresso group GmbH',
        userPic:
            "https://media.licdn.com/dms/image/C4E03AQGDTuAQ5OmE1A/profile-displayphoto-shrink_200_200/0/1617095269743?e=1681344000&v=beta&t=QJsoTnVg_lldhhIjAqQF9jiQK-cjTahvUEATSgHOgFI",
        color: Color(0xFFD9FFFC),
      ),
      // CustomFeedback(
      //   id: 3,
      //   name: 'J. Latz',
      //   role: 'Product Owner',
      //   company: 'Union Investment Real Estate GmbH',
      //   review: review,
      //   userPic:
      //       "https://media.licdn.com/dms/image/C4D03AQH81OGg7K7ABA/profile-displayphoto-shrink_200_200/0/1630075290846?e=1681344000&v=beta&t=ccH0VFyzycof4Lo1HnAJ7K5bz3OiaiCYP2ImaN1l5B4",
      //   color: Color(0xFFFFE0E0),
      // ),
      // CustomFeedback(
      //   id: 4,
      //   name: 'S. Hoenig',
      //   role: 'Tech Lead',
      //   company: 'Union Investment Real Estate GmbH',
      //   review: review,
      //   userPic:
      //       "https://media.licdn.com/dms/image/C4D03AQHGZEBhEXd97Q/profile-displayphoto-shrink_200_200/0/1568098173059?e=1681344000&v=beta&t=9Ymri2Arq2-rOhBUn2NO7qksuw6LmTCH0FtqLKkswUI",
      //   color: Color(0xFFFFE0E0),
      // ),
    ];
  }
}
