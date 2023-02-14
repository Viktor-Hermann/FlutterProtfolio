import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_app/generated/l10n.dart';

import 'package:web_app/presentation/home_screen.dart';

final StateProvider<int> selectedIndexProvider = StateProvider<int>((ref) {
  return 0;
});

final StateProvider<int> hoverIndexProvider = StateProvider<int>((ref) {
  return 0;
});

List<String> getMenuList(BuildContext context) {
  return [
    '',
    S.of(context).menuHome,
    S.of(context).menuAboutMe,
    S.of(context).menuServices,
    S.of(context).menuMyProjects,
    S.of(context).menuFeedback,
    S.of(context).menuContact,
    S.of(context).menuImpressum,
    ''
  ];
}

class MenuHorizontalController {
  final WidgetRef ref;

  MenuHorizontalController({this.ref});

  onHover(bool value, int index) {
    value
        ? ref.read(hoverIndexProvider.notifier).state = index
        : ref.read(hoverIndexProvider.notifier).state =
            ref.read(selectedIndexProvider.notifier).state;
  }

  onSelect(int index) {
    ref.read(selectedIndexProvider.notifier).state = index;
    Scrollable.ensureVisible(menuKeys[index - 1].currentContext,
        duration: Duration(milliseconds: 500));
    ref.read(selectedIndexProvider.notifier).state = 0;
  }
}
